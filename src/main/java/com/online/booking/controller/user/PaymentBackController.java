package com.online.booking.controller.user;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import com.online.booking.configurations.PaypalPaymentIntent;
import com.online.booking.configurations.PaypalPaymentMethod;
import com.online.booking.entities.Account;
import com.online.booking.entities.OrderDetail;
import com.online.booking.entities.Orders;
import com.online.booking.entities.Room;
import com.online.booking.services.AccountService;
import com.online.booking.services.OrderDetailService;
import com.online.booking.services.OrdersService;
import com.online.booking.services.PaypalService;
import com.online.booking.services.RoomService;
import com.online.booking.services.SaleService;
import com.online.booking.helper.Utils;

@Controller
@RequestMapping("user/back")
public class PaymentBackController {
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private OrdersService ordersService;



	public static final String URL_PAYPAL_SUCCESS = "pay/success";
	public static final String URL_PAYPAL_CANCEL = "pay/cancel";

	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private PaypalService paypalService;

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@PostMapping("/pay")
	public String pay(
			@RequestParam("idorderdetail") int idorderdetail ,
			 @RequestParam("price") double price,
			 HttpServletRequest request,
			RedirectAttributes redirectAttributes, HttpSession httpSession
	) throws ParseException {
		
	
		
		try {
			OrderDetail orderDetailResult = orderDetailService.findById(idorderdetail);
			httpSession.setAttribute("detail", orderDetailResult);
			String cancelUrl = Utils.getBaseURL(request) + "/user/back/" + URL_PAYPAL_CANCEL;
			String successUrl = Utils.getBaseURL(request) + "/user/back/" + URL_PAYPAL_SUCCESS;

			Payment payment = paypalService.createPayment(price, "USD", PaypalPaymentMethod.paypal,
					PaypalPaymentIntent.sale, "payment description", cancelUrl, successUrl);
			for (Links links : payment.getLinks()) {
				if (links.getRel().equals("approval_url")) {
					return "redirect:" + links.getHref();
				}
			}
		} catch (PayPalRESTException e) {
			log.error(e.getMessage());
		}
		return "redirect:/";
	}

	@GetMapping(URL_PAYPAL_CANCEL)
	public String cancelPay(RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("ms", "payfailed");
		
		
		return "redirect:/user/account/statusOrder";
	}

	@GetMapping(URL_PAYPAL_SUCCESS)
	public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId , HttpSession httpSession ,
			RedirectAttributes redirectAttributes
			
		
			){
		
		try {
			Payment payment = paypalService.executePayment(paymentId, payerId);
			if(payment.getState().equals("approved")){
			System.out.println("thanh toan thanh cong");
			if (httpSession.getAttribute("detail") == null) {
				
				redirectAttributes.addFlashAttribute("ms", "failed");
				
				
				return "redirect:/user/account/statusOrder";
			} else {

			
			OrderDetail orderDetail = (OrderDetail) httpSession.getAttribute("detail");
			 Orders orders = orderDetail.getOrders();
			 orders.setPayment(paymentId);
			 orders.setName(payerId);
			 Orders ordersResult = ordersService.save(orders);
		
			httpSession.removeAttribute("detail");
				
			redirectAttributes.addFlashAttribute("ms", "payok");
		
			
			return "redirect:/user/account/statusOrder";
			}
			}
			
		} catch (PayPalRESTException e) {
			redirectAttributes.addFlashAttribute("ms", "payfailed");
			
			
			return "redirect:/user/account/statusOrder";
		}
		redirectAttributes.addFlashAttribute("ms", "payfailed");
		
		
		return "redirect:/user/account/statusOrder";
	
}}