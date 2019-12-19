package com.online.booking.controller.superuser;

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
import com.online.booking.entities.Hotel;
import com.online.booking.entities.OrderDetail;
import com.online.booking.entities.Orders;
import com.online.booking.entities.Room;
import com.online.booking.entities.Service;
import com.online.booking.entities.ServiceHotel;
import com.online.booking.services.AboutService;
import com.online.booking.services.AccountService;
import com.online.booking.services.HotelService;
import com.online.booking.services.OrderDetailService;
import com.online.booking.services.OrdersService;
import com.online.booking.services.PaypalService;
import com.online.booking.services.RoomService;
import com.online.booking.services.SaleService;
import com.online.booking.services.ServiceHotelService;
import com.online.booking.services.ServiceService;
import com.online.booking.helper.Utils;

@Controller
@RequestMapping("sup")
public class PaymentSupController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private ServiceService serviceService;
	@Autowired
	private AccountService accountService;
	@Autowired
	private AboutService aboutService;
	@Autowired
	private ServiceHotelService serviceHotelService;

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
	public String pay(HttpServletRequest request, @RequestParam("price") double price, @RequestParam("idac") int idac,
			@RequestParam("idservice") int idService, @RequestParam("enddate") String enddate,
			@RequestParam(value = "idhotel", required = false) Integer idhotel, HttpSession httpSession

	) throws ParseException {

		boolean resultTran = true;
		try {
			Date endate = new SimpleDateFormat("yyyy-MM-dd").parse(enddate);
			Date startdate = new Date();
			ServiceHotel serviceHotel = new ServiceHotel();
			if (idhotel != null) {
				serviceHotel.setHotel(hotelService.findById(idhotel));
				serviceHotel.setService(new Service(idService));
				serviceHotel.setStartDate(startdate);
				serviceHotel.setEndDate(endate);
				serviceHotel.setCreated(startdate);
				serviceHotel.setTatol((long) price);
				serviceHotel.setStatus(true);
				// System.out.println(serviceHotel.toString());
				httpSession.setAttribute("servicehotel", serviceHotel);

			} else if (httpSession.getAttribute("hotel") != null) {

			
				serviceHotel.setService(new Service(idService));
				serviceHotel.setStartDate(startdate);
				serviceHotel.setEndDate(endate);
				serviceHotel.setCreated(startdate);
				serviceHotel.setTatol((long) price);
				serviceHotel.setStatus(true);

				httpSession.setAttribute("servicehotel", serviceHotel);

			} else {

				// loi

			}

			String cancelUrl = Utils.getBaseURL(request) + "/sup/" + URL_PAYPAL_CANCEL;
			String successUrl = Utils.getBaseURL(request) + "/sup/" + URL_PAYPAL_SUCCESS;

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
	public String cancelPay(RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("ms", "failedp");

		return "redirect:/superuser/myhotel";
	}

	@GetMapping(URL_PAYPAL_SUCCESS)
	public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,
			HttpSession httpSession, RedirectAttributes redirectAttributes

	) {

		try {
			Payment payment = paypalService.executePayment(paymentId, payerId);
			if (payment.getState().equals("approved")) {
				System.out.println("thanh toan thanh cong");
				if (httpSession.getAttribute("servicehotel") == null) {

					redirectAttributes.addFlashAttribute("ms", "failedp");

					return "redirect:/superuser/myhotel";
				} else {
					if (httpSession.getAttribute("servicehotel") != null) {

						ServiceHotel serviceHotel = (ServiceHotel) httpSession.getAttribute("servicehotel");
						if (serviceHotel.getHotel() != null) {
						serviceHotel.setPayment(paymentId);
						serviceHotel.setIdpayer(payerId);

							ServiceHotel serviceHotelaResult = serviceHotelService.save(serviceHotel);
							if (serviceHotelaResult != null) {
								httpSession.removeAttribute("servicehotel");

								redirectAttributes.addFlashAttribute("ms", "okp");

								return "redirect:/superuser/myhotel";
							} else {
								redirectAttributes.addFlashAttribute("ms", "failedp");

								return "redirect:/superuser/myhotel";

							}
						} else {
							Hotel hotel = (Hotel) httpSession.getAttribute("hotel");
							Hotel hotelResult = hotelService.save(hotel);
							if (hotelResult != null) {
								serviceHotel.setHotel(hotelResult);
								ServiceHotel serviceHotelaResult = serviceHotelService.save(serviceHotel);
								if (serviceHotelaResult != null) {
									httpSession.removeAttribute("servicehotel");

									redirectAttributes.addFlashAttribute("ms", "okp");

									return "redirect:/superuser/myhotel";
								} else {
									redirectAttributes.addFlashAttribute("ms", "failedp");

									return "redirect:/superuser/myhotel";

								}
							} else {
								redirectAttributes.addFlashAttribute("ms", "failedp");

								return "redirect:/superuser/myhotel";

							}

						}

					} else {
						redirectAttributes.addFlashAttribute("ms", "failedp");

						return "redirect:/superuser/myhotel";

					}

				}
			}

		} catch (PayPalRESTException e) {
			redirectAttributes.addFlashAttribute("ms", "failedp");

			return "redirect:/superuser/myhotel";
		}
		redirectAttributes.addFlashAttribute("ms", "failedp");

		return "redirect:/superuser/myhotel";

	}
}