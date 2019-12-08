package com.online.booking.controller.superuser;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.Hotel;
import com.online.booking.entities.Room;
import com.online.booking.entities.ServiceHotel;
import com.online.booking.helper.CheckHelper;
import com.online.booking.services.AboutService;
import com.online.booking.services.AccountService;
import com.online.booking.services.HotelService;
import com.online.booking.services.ServiceHotelService;
import com.online.booking.services.ServiceService;


@Controller
@RequestMapping("/superuser/servicehotel")
public class ServiceHotelController {
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
	@Autowired
	private CheckHelper checkHelper;

	@RequestMapping(value = {"buyService/{id}/{idhotel}","buyService"}, method = RequestMethod.GET)
	public String buyServiceAddHotel(ModelMap map , @PathVariable( value = "id" ,required = false) Integer id
			,@PathVariable( value = "idhotel" ,required = false) Integer idhotel
			, HttpSession httpSession) {
		
		
		Account account =	(Account) httpSession.getAttribute("account");
	
		map.put("account", account);
		if (id != null && idhotel != null) {
			
			if (checkHelper.checkHotelofAccountSession(idhotel, account.getId())) {
				map.put("service", serviceService.findById(id));
				map.put("hotel", hotelService.findById(idhotel));
			} else {
				return "error.404";}
			
			
			
		} else {
			map.put("service", serviceService.findById(5));
		}
		
		map.put("now", new Date());
		map.put("about", aboutService.findById(1));
	

		return "superuser.servicehotel.buy";
		
	}

	@RequestMapping(value = "buyService", method = RequestMethod.POST)
	public String buyServiceAddHotel(ModelMap map, RedirectAttributes redirectAttributes,
			@RequestParam("idac") int idac, @RequestParam("idservice") int idService,
			@RequestParam("enddate") String enddate, @RequestParam("tatol") Long tatol, HttpSession httpSession) {
		boolean resultTran = true;
		try {
			Date endate = new SimpleDateFormat("yyyy-MM-dd").parse(enddate);
			Date startdate = new Date();
			if (httpSession.getAttribute("hotel") != null) {
				Hotel hotel = (Hotel) httpSession.getAttribute("hotel");
				Hotel hotelResult = hotelService.save(hotel);
				
				
				if (hotelResult != null) {
					
					ServiceHotel serviceHotel = new ServiceHotel();
					serviceHotel.setHotel(hotelResult);
					serviceHotel.setService(serviceService.findById(idService));
					serviceHotel.setStartDate(startdate);
					serviceHotel.setEndDate(endate);
					serviceHotel.setCreated(new Date());
					serviceHotel.setTatol(tatol);
					serviceHotel.setStatus(true);
					ServiceHotel serviceHotelResult = serviceHotelService.save(serviceHotel);
				httpSession.removeAttribute("hotel");
					if (serviceHotelResult == null) {
						resultTran = false;
					}

				} else {
					resultTran = false;

				}

			} else {
				resultTran = false;

			}
		} catch (Exception e) {
			resultTran = false;
		}
		if (resultTran) {
			redirectAttributes.addFlashAttribute("ms", "ok");
			return "redirect:/superuser/myhotel";
		} else {

			redirectAttributes.addFlashAttribute("ms", "failed");
			return "redirect:/user/superuser/create/hotel";
		}

	}

}
