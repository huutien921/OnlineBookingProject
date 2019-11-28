package com.online.booking.controller.superuser;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.ServletContextAware;

import com.online.booking.entities.Room;
import com.online.booking.services.BedTypeService;
import com.online.booking.services.HotelService;
import com.online.booking.services.RoomCategoryService;
import com.online.booking.services.RoomService;
import com.online.booking.services.RoomTypeService;
import com.online.booking.validations.RoomValidator;

@Controller
@RequestMapping("/superuser/myroom")
public class RoomManagementController  implements ServletContextAware {
	
	@Autowired
	private HotelService hotelService;
	@Autowired
	private BedTypeService bedTypeService; 
	@Autowired
	private RoomCategoryService roomCategoryService; 
	@Autowired 
	private RoomTypeService roomTypeService; 
	@Autowired
	private RoomService roomService;
	@Autowired
	private  RoomValidator roomValidator;
	private ServletContext servletContext;
	
	@RequestMapping(value = "create/{id}" ,method = RequestMethod.GET)
	public String create(ModelMap map , @PathVariable("id") int idHotel) {
		Room room = new Room();
	room.setHotel(hotelService.findById(idHotel));
		map.put("room", room);
		map.put("hotel",hotelService.findById(idHotel));
		map.put("beds", bedTypeService.findAll());
		map.put("categorys", roomCategoryService.findAll());
		map.put("types", roomTypeService.findAll());
		return "superuser.myroom.create";
	}
	@RequestMapping(value = "create" ,method = RequestMethod.POST)
	public String create(ModelMap map , @ModelAttribute("room") @Valid Room room,
			BindingResult bindingResult ) {
	
		return "superuser.myroom.create";
	}
	
	@Override
	public void setServletContext(ServletContext servletContext) {

		this.servletContext = servletContext;
	}
}
