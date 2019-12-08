package com.online.booking.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.OrderDetail;
import com.online.booking.entities.Orders;
import com.online.booking.entities.Room;
import com.online.booking.entities.Sale;
import com.online.booking.services.AccountService;
import com.online.booking.services.OrderDetailService;
import com.online.booking.services.OrdersService;
import com.online.booking.services.RoomService;
import com.online.booking.services.SaleService;

@Controller
@RequestMapping(value = { "booking" })
public class BookingController {
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private RoomService roomService;
	@Autowired
	private SaleService saleService;
	@Autowired
	private AccountService accountService;

	@RequestMapping(method = RequestMethod.GET)
	public String booking(@RequestParam("roomid") int roomid, @RequestParam("checkin") String checkin,
			@RequestParam("checkout") String checkout, @RequestParam("room") int rooms, ModelMap map

	) {

		try {
			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);
			long getDiff = dateCheckOut.getTime() - dateCheckIn.getTime();
			long getDayDiff = TimeUnit.MILLISECONDS.toDays(getDiff);
			Account account = accountService.findById(3);
			map.put("roomquan", rooms);
			map.put("room", roomService.findById(roomid));
			map.put("days", getDayDiff);
			map.put("checkin", checkin);
			map.put("checkout", checkout);
			map.put("hIn", "14:00");
			map.put("hOut", "12:00");
			map.put("hotelFee", "FREE");
			map.put("bookbedFee", "FREE");
			map.put("user", account);

		} catch (Exception e) {

		}
		return "user.booking";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String booking(@RequestParam("idroom") int idroom, @RequestParam("checkin") String checkin,
			@RequestParam("checkout") String checkout, @RequestParam("roomquan") int rooms

			, @RequestParam("namestaying") String name, @RequestParam("email") String email,
			@RequestParam("note") String note, @RequestParam("paytype") String paytype, @RequestParam("acid") int idac,
			@RequestParam("giftcode") String code ,RedirectAttributes redirectAttributes) {
		boolean result = true;
		System.out.println(checkout);
		try {
			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);
			if (paytype.equalsIgnoreCase("payathotel")) {
				System.out.println("ok");
				Orders orders = new Orders();
				orders.setName("payathotel");
				orders.setPayment("payathotel");
				orders.setCreated(new Date());
				orders.setAccount(new Account(idac));
				if (saleService.findByCodeAndDate(code, new Date()) != null) {
					orders.setSale(saleService.findByCodeAndDate(code, new Date()));
				}
				System.out.println("ok2");
				orders.setStatus(false);
				Orders orderResult = ordersService.save(orders);
				if (orderResult != null) {
					OrderDetail orderDetail = new OrderDetail();
					orderDetail.setRoom(new Room(idroom));
					orderDetail.setCheckInDate(dateCheckIn);
					orderDetail.setCheckOutDate(dateCheckOut);
					orderDetail.setQuantity(rooms);
					orderDetail.setNamestaying(name);
					orderDetail.setEmail(email);
					orderDetail.setNote(note);
					orderDetail.setOrders(orderResult);
					orderDetail.setStatus(true);
					OrderDetail orderDetailResult = orderDetailService.save(orderDetail);
					System.out.println("ok3");
					if (orderDetailResult == null) {
						result = false ;
						
						
					}
					
					
				}else {result = false;}
				if (result) {
					redirectAttributes.addFlashAttribute("ms", "ok");
					System.out.println("oke");
					return "redirect:/user/account/statusOrder";
					
					
				}else {
					redirectAttributes.addFlashAttribute("ms", "failed");
					System.out.println("filed");
					
					return "redirect:/user/account/statusOrder";
					
					
				}

			}else {
				System.out.println("thanh toan the");
				return "redirect:/user/account/statusOrder";
				
			
			}

			
			
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("ms", "failed");
			System.out.println("filed");
			
			return "redirect:/user/account/statusOrder";
		}

	}

	@RequestMapping(value = "ajax/checksale", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public Sale checkCodeSale(@RequestParam("valuecode") String code) {

		Sale saleResult = saleService.findByCodeAndDate(code, new Date());
		if (saleResult != null) {
			return saleResult;
		} else {
			return new Sale();
		}

	}

}
