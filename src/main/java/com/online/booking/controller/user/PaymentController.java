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
@RequestMapping("user")
public class PaymentController {
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private OrdersService ordersService;

	@Autowired
	private SaleService saleService;


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
	public String pay(HttpServletRequest request, @RequestParam("price") double price,
			@RequestParam("idroom") int idroom, @RequestParam("checkin") String checkin,
			@RequestParam("checkout") String checkout, @RequestParam("roomquan") int rooms

			, @RequestParam("namestaying") String name, @RequestParam("email") String email,
			@RequestParam("note") String note, @RequestParam("acid") int idac, @RequestParam("giftcode") String code,
			RedirectAttributes redirectAttributes, HttpSession httpSession

	) throws ParseException {
	
		try {
			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);
			System.out.println(name);
			Orders orders = new Orders();

			orders.setCreated(new Date());
			orders.setAccount(new Account(idac));
			if (saleService.findByCodeAndDate(code, new Date()) != null) {
				orders.setSale(saleService.findByCodeAndDate(code, new Date()));
			}

			orders.setStatus(true);
			httpSession.setAttribute("order", orders);

			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setRoom(new Room(idroom));
			orderDetail.setCheckInDate(dateCheckIn);
			orderDetail.setCheckOutDate(dateCheckOut);
			orderDetail.setQuantity(rooms);
			orderDetail.setNamestaying(name);
			orderDetail.setEmail(email);
			orderDetail.setNote(note);

			orderDetail.setStatus(true);
			httpSession.setAttribute("orderdetail", orderDetail);

			String cancelUrl = Utils.getBaseURL(request) + "/user/" + URL_PAYPAL_CANCEL;
			String successUrl = Utils.getBaseURL(request) + "/user/" + URL_PAYPAL_SUCCESS;

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
	public String cancelPay(){
		return "cancel";
	}

	@GetMapping(URL_PAYPAL_SUCCESS)
	public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId , HttpSession httpSession ,
			RedirectAttributes redirectAttributes
			
		
			){
		
		try {
			Payment payment = paypalService.executePayment(paymentId, payerId);
			if(payment.getState().equals("approved")){
			System.out.println("thanh toan thanh cong");
			if (httpSession.getAttribute("order") == null ||  httpSession.getAttribute("orderdetail") == null) {
				
				redirectAttributes.addFlashAttribute("ms", "failed");
				
				
				return "redirect:/user/account/statusOrder";
			} else {

			
			Orders orders = (Orders) httpSession.getAttribute("order");
			
			OrderDetail orderDetail = (OrderDetail) httpSession.getAttribute("orderdetail");
			orderDetail.setOrders(orders);
			orders.setName(payerId);
			orders.setPayment(paymentId);
			orders.setStatus(true);
			Orders ordersResult = ordersService.save(orders);
			if (ordersResult != null) {
				 OrderDetail orderDetailResult = orderDetailService.save(orderDetail);
			}
			httpSession.removeAttribute("order");
			httpSession.removeAttribute("orderdetail");
				
			redirectAttributes.addFlashAttribute("ms", "ok");
		
			
			return "redirect:/user/account/statusOrder";
			}
			}
			
		} catch (PayPalRESTException e) {
			redirectAttributes.addFlashAttribute("ms", "failed");
			
			
			return "redirect:/user/account/statusOrder";
		}
		redirectAttributes.addFlashAttribute("ms", "failed");
		
		
		return "redirect:/user/account/statusOrder";
	
}}