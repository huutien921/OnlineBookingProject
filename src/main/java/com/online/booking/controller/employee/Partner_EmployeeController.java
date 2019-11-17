package com.online.booking.controller.employee;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.Hotel;
import com.online.booking.services.HotelService;

@Controller
@RequestMapping("/employee/partner")
public class Partner_EmployeeController {
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping(value = "unconfirmed", method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {
	
		List<Hotel> hotelsUnActive = (List<Hotel>) hotelService.searchHotelByStatusFalseAndIdAccountEmployeeNull();
		PagedListHolder pagedListHolder2 = new PagedListHolder(hotelsUnActive);
		int page2 = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder2.setPage(page2);
		pagedListHolder2.setPageSize(3);
		modelMap.put("hotelNotActive", pagedListHolder2);
		
		
		return "employee.partner.index";
	}
	
	@RequestMapping(value = "confirmed", method = RequestMethod.GET)
	public String indexConfirmed(HttpServletRequest request, ModelMap modelMap) {
		
		List<Hotel> hotels = (List<Hotel>) /*hotelService.searchHotelByStatusAndIdAccountEmployee(true)*/ hotelService.filterHotelForEmployee(true, "hanh phuc", 2, "", "Da lat", "");
		PagedListHolder pagedListHolder = new PagedListHolder(hotels);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(10);
		modelMap.put("hotelActive", pagedListHolder);

		return "employee.partner.indexConfirmed";
	}
	
	@RequestMapping(value = "block", method = RequestMethod.GET)
	public String indexBlocked(HttpServletRequest request, ModelMap modelMap) {
	
		List<Hotel> hotelsBlock = (List<Hotel>) hotelService.searchHotelByStatusAndIdAccountEmployee(false);
		PagedListHolder pagedListHolder3 = new PagedListHolder(hotelsBlock);
		int page3 = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder3.setPage(page3);
		pagedListHolder3.setPageSize(3);
		modelMap.put("hotelsBlock", pagedListHolder3);
	
		return "employee.partner.indexBlocked";
	}
	
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String deatail(ModelMap modelMap, @PathVariable("id") int id) {
		
		modelMap.put("hotel", hotelService.find(id));
		
		return "employee.partner.detail";
	}
}
