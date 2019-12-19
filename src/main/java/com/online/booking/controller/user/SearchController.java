package com.online.booking.controller.user;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.online.booking.entities.Hotel;
import com.online.booking.entities.HotelEntity;
import com.online.booking.services.BlogService;
import com.online.booking.services.HotelService;
import com.online.booking.services.RoomService;
import com.online.booking.services.SaleService;

@Controller
@RequestMapping(value = { "search" })
public class SearchController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private RoomService roomService;

	@Autowired
	private SaleService saleService;
	@Autowired
	private BlogService blogService;
	

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap model, @RequestParam("address") String address,
			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,
			@RequestParam("guests") String guests, @RequestParam("room") String room ) {
		model.put("address", address);
		model.put("checkin", checkin);
		model.put("checkout", checkout);
		model.put("guests", guests);
		model.put("rooms", room);
		try {
			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
		Date now = new Date();
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);
			if (address == null || dateCheckOut.getTime() < dateCheckIn.getTime()
					|| guests == null || Integer.parseInt(guests) <= 0
					|| room == null || Integer.parseInt(room) <= 0   || dateCheckIn.getTime() < now.getTime()) {
				model.put("new1Promotions", saleService.searchLimitSale(true, 1));
				model.put("new1Blog", blogService.searchLimitBlog(true, 1));
				model.put("newPromotions", saleService.searchLimitSale(true, 3));
				model.put("newBlog", blogService.searchLimitBlog(true, 3));
				model.put("rooms", roomService.findAll());
				model.put("title", "Home");
				model.put("address", address);
				model.put("checkin", checkin);
				model.put("checkout", checkout);
				model.put("guests", guests);
				model.put("room", room);
				model.put("ms", "failed");
				return "home.index";
				
				
			} else {

			

			List<Hotel> hotels = hotelService.searchByAddressAddPriority(address, dateCheckIn, dateCheckOut,
					Integer.parseInt(guests), Integer.parseInt(room));
			PagedListHolder pagedListHolder = new PagedListHolder(hotels);
			int page = ServletRequestUtils.getIntParameter(request, "p", 0);
			pagedListHolder.setPage(page);
			pagedListHolder.setPageSize(3);
			model.put("hotels", hotels);
			model.put("title", "Search");
			for (Hotel hotel : hotels) {
				System.out.println(hotel.getName());
			}
			return "hotels.index";
			}

		} catch (Exception e) {
			System.err.println(e.getMessage());
			model.put("new1Promotions", saleService.searchLimitSale(true, 1));
			model.put("new1Blog", blogService.searchLimitBlog(true, 1));
			model.put("newPromotions", saleService.searchLimitSale(true, 3));
			model.put("newBlog", blogService.searchLimitBlog(true, 3));
			model.put("rooms", roomService.findAll());
			model.put("title", "Home");
			model.put("address", address);
			model.put("checkin", checkin);
			model.put("checkout", checkout);
			model.put("guests", guests);
			model.put("rooms", room);
			model.put("ms", "failed");
			return "home.index";
		}

		

	}
		

	@RequestMapping(value = "ajax/price", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<HotelEntity> searchPrice(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,

			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice) {

		try {

			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);

			List<HotelEntity> hotels = hotelService.searchByAddressAddPriorityAddPriceJsonObject(address, dateCheckIn,
					dateCheckOut, guests, rooms, minprice, maxprice);

			System.out.println("---------");
			for (HotelEntity hotel : hotels) {
				System.out.println(hotel.getName());
				System.out.println(hotel.getComment());
			}

			return hotels;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return null;
		}

	}
	@RequestMapping(value = "ajax/star", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<HotelEntity> searchStar(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,
			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice,
			@RequestParam("amount1") int amount1, @RequestParam("amount2") int amount2,
			@RequestParam("amount3") int amount3, @RequestParam("amount4") int amount4,
			@RequestParam("amount5") int amount5, @RequestParam("wifi") int wifi, @RequestParam("parking") int parking,
			@RequestParam("spa") int spa, @RequestParam("gym") int gym, @RequestParam("carrental") int carrental,
			@RequestParam("airporttransfer") int airporttransfer, @RequestParam("freebreakfast") int freebreakfast,
			@RequestParam("swimmingpool") int swimmingpool, @RequestParam("payathotel") int payathotel,
			@RequestParam("assemblyfacilites") int assemblyfacilites, @RequestParam("driveway") int driveway,
			@RequestParam("doublebed") int doublebed, @RequestParam("queenbed") int queenbed,
			@RequestParam("kingbed") int kingbed, @RequestParam("singlebed") int singlebed) {

		try {

			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);

			List<HotelEntity> hoteltest = hotelService.searchByAddressAddPriorityAddStarJsonObject(address, dateCheckIn, dateCheckOut, guests, rooms, minprice, maxprice, amount1, amount2, amount3, amount4, amount5, wifi, parking, spa, gym, carrental, airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway, doublebed, queenbed, kingbed, singlebed);

			for (HotelEntity hotel : hoteltest) {
				System.out.println(hotel.getName());
				System.out.println(hotel.getStarRatingNum());
			}
			System.out.println("---------");

			return hoteltest;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return null;
		}

	}
	@RequestMapping(value = "ajax/star5", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<HotelEntity> searchStar5(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,
			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice,
			@RequestParam("amount1") int amount1, @RequestParam("amount2") int amount2,
			@RequestParam("amount3") int amount3, @RequestParam("amount4") int amount4,
			@RequestParam("amount5") int amount5, @RequestParam("wifi") int wifi, @RequestParam("parking") int parking,
			@RequestParam("spa") int spa, @RequestParam("gym") int gym, @RequestParam("carrental") int carrental,
			@RequestParam("airporttransfer") int airporttransfer, @RequestParam("freebreakfast") int freebreakfast,
			@RequestParam("swimmingpool") int swimmingpool, @RequestParam("payathotel") int payathotel,
			@RequestParam("assemblyfacilites") int assemblyfacilites, @RequestParam("driveway") int driveway,
			@RequestParam("doublebed") int doublebed, @RequestParam("queenbed") int queenbed,
			@RequestParam("kingbed") int kingbed, @RequestParam("singlebed") int singlebed) {

		try {

			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);

			List<HotelEntity> hoteltest = hotelService.searchByAddressAddPriorityAddStarJsonObject(address, dateCheckIn, dateCheckOut, guests, rooms, minprice, maxprice, amount1, amount2, amount3, amount4, amount5, wifi, parking, spa, gym, carrental, airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway, doublebed, queenbed, kingbed, singlebed);

			for (HotelEntity hotel : hoteltest) {
				System.out.println(hotel.getName());
				System.out.println(hotel.getStarRatingNum());
			}
			System.out.println("---------");

			return hoteltest;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return null;
		}

	}
	
	@RequestMapping(value = "ajax/star4", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<HotelEntity> searchStar4(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,
			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice,
			@RequestParam("amount1") int amount1, @RequestParam("amount2") int amount2,
			@RequestParam("amount3") int amount3, @RequestParam("amount4") int amount4,
			@RequestParam("amount5") int amount5, @RequestParam("wifi") int wifi, @RequestParam("parking") int parking,
			@RequestParam("spa") int spa, @RequestParam("gym") int gym, @RequestParam("carrental") int carrental,
			@RequestParam("airporttransfer") int airporttransfer, @RequestParam("freebreakfast") int freebreakfast,
			@RequestParam("swimmingpool") int swimmingpool, @RequestParam("payathotel") int payathotel,
			@RequestParam("assemblyfacilites") int assemblyfacilites, @RequestParam("driveway") int driveway,
			@RequestParam("doublebed") int doublebed, @RequestParam("queenbed") int queenbed,
			@RequestParam("kingbed") int kingbed, @RequestParam("singlebed") int singlebed) {

		try {

			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);

			List<HotelEntity> hoteltest = hotelService.searchByAddressAddPriorityAddStarJsonObject(address, dateCheckIn, dateCheckOut, guests, rooms, minprice, maxprice, amount1, amount2, amount3, amount4, amount5, wifi, parking, spa, gym, carrental, airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway, doublebed, queenbed, kingbed, singlebed);

			for (HotelEntity hotel : hoteltest) {
				System.out.println(hotel.getName());
				System.out.println(hotel.getStarRatingNum());
			}
			System.out.println("---------");

			return hoteltest;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return null;
		}

	}
	
	@RequestMapping(value = "ajax/star3", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<HotelEntity> searchStar3(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,
			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice,
			@RequestParam("amount1") int amount1, @RequestParam("amount2") int amount2,
			@RequestParam("amount3") int amount3, @RequestParam("amount4") int amount4,
			@RequestParam("amount5") int amount5, @RequestParam("wifi") int wifi, @RequestParam("parking") int parking,
			@RequestParam("spa") int spa, @RequestParam("gym") int gym, @RequestParam("carrental") int carrental,
			@RequestParam("airporttransfer") int airporttransfer, @RequestParam("freebreakfast") int freebreakfast,
			@RequestParam("swimmingpool") int swimmingpool, @RequestParam("payathotel") int payathotel,
			@RequestParam("assemblyfacilites") int assemblyfacilites, @RequestParam("driveway") int driveway,
			@RequestParam("doublebed") int doublebed, @RequestParam("queenbed") int queenbed,
			@RequestParam("kingbed") int kingbed, @RequestParam("singlebed") int singlebed) {

		try {

			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);

			List<HotelEntity> hoteltest = hotelService.searchByAddressAddPriorityAddStarJsonObject(address, dateCheckIn, dateCheckOut, guests, rooms, minprice, maxprice, amount1, amount2, amount3, amount4, amount5, wifi, parking, spa, gym, carrental, airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway, doublebed, queenbed, kingbed, singlebed);

			for (HotelEntity hotel : hoteltest) {
				System.out.println(hotel.getName());
				System.out.println(hotel.getStarRatingNum());
			}
			System.out.println("---------");

			return hoteltest;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return null;
		}

	}
	
	@RequestMapping(value = "ajax/star2", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<HotelEntity> searchStar2(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,
			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice,
			@RequestParam("amount1") int amount1, @RequestParam("amount2") int amount2,
			@RequestParam("amount3") int amount3, @RequestParam("amount4") int amount4,
			@RequestParam("amount5") int amount5, @RequestParam("wifi") int wifi, @RequestParam("parking") int parking,
			@RequestParam("spa") int spa, @RequestParam("gym") int gym, @RequestParam("carrental") int carrental,
			@RequestParam("airporttransfer") int airporttransfer, @RequestParam("freebreakfast") int freebreakfast,
			@RequestParam("swimmingpool") int swimmingpool, @RequestParam("payathotel") int payathotel,
			@RequestParam("assemblyfacilites") int assemblyfacilites, @RequestParam("driveway") int driveway,
			@RequestParam("doublebed") int doublebed, @RequestParam("queenbed") int queenbed,
			@RequestParam("kingbed") int kingbed, @RequestParam("singlebed") int singlebed) {

		try {

			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);

			List<HotelEntity> hoteltest = hotelService.searchByAddressAddPriorityAddStarJsonObject(address, dateCheckIn, dateCheckOut, guests, rooms, minprice, maxprice, amount1, amount2, amount3, amount4, amount5, wifi, parking, spa, gym, carrental, airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway, doublebed, queenbed, kingbed, singlebed);

			for (HotelEntity hotel : hoteltest) {
				System.out.println(hotel.getName());
				System.out.println(hotel.getStarRatingNum());
			}
			System.out.println("---------");

			return hoteltest;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return null;
		}

	}
	
	@RequestMapping(value = "ajax/star1", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<HotelEntity> searchStar1(@RequestParam("address") String address,

			@RequestParam("checkin") String checkin, @RequestParam("checkout") String checkout,

			@RequestParam("guests") int guests, @RequestParam("rooms") int rooms,
			@RequestParam("minprice") double minprice, @RequestParam("maxprice") double maxprice,
			@RequestParam("amount1") int amount1, @RequestParam("amount2") int amount2,
			@RequestParam("amount3") int amount3, @RequestParam("amount4") int amount4,
			@RequestParam("amount5") int amount5, @RequestParam("wifi") int wifi, @RequestParam("parking") int parking,
			@RequestParam("spa") int spa, @RequestParam("gym") int gym, @RequestParam("carrental") int carrental,
			@RequestParam("airporttransfer") int airporttransfer, @RequestParam("freebreakfast") int freebreakfast,
			@RequestParam("swimmingpool") int swimmingpool, @RequestParam("payathotel") int payathotel,
			@RequestParam("assemblyfacilites") int assemblyfacilites, @RequestParam("driveway") int driveway,
			@RequestParam("doublebed") int doublebed, @RequestParam("queenbed") int queenbed,
			@RequestParam("kingbed") int kingbed, @RequestParam("singlebed") int singlebed) {

		try {

			Date dateCheckIn = new SimpleDateFormat("yyyy-MM-dd").parse(checkin);
			Date dateCheckOut = new SimpleDateFormat("yyyy-MM-dd").parse(checkout);

			List<HotelEntity> hoteltest = hotelService.searchByAddressAddPriorityAddStarJsonObject(address, dateCheckIn, dateCheckOut, guests, rooms, minprice, maxprice, amount1, amount2, amount3, amount4, amount5, wifi, parking, spa, gym, carrental, airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway, doublebed, queenbed, kingbed, singlebed);

			for (HotelEntity hotel : hoteltest) {
				System.out.println(hotel.getName());
				System.out.println(hotel.getStarRatingNum());
			}
			System.out.println("---------");

			return hoteltest;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return null;
		}

	}
}
