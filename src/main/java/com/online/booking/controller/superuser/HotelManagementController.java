package com.online.booking.controller.superuser;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.online.booking.entities.ImageRoom;
import com.online.booking.entities.ImageRoomEntity;
import com.online.booking.services.HotelService;
import com.online.booking.services.ImageRoomService;

@Controller
@RequestMapping("/superuser/myhotel")
public class HotelManagementController {
	@Autowired
	private HotelService hotelService;
	@Autowired 
	private ImageRoomService imageRoomService;
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap map) {
		map.put("hotels", hotelService.findByAccountId(4));
		map.put("now", new Date());
		return "superuser.myhotel.index";
	}
	@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
	public String detail(ModelMap map, @PathVariable("id") int id ) {
		map.put("hotel", hotelService.findById(id));
		
		return "superuser.myhotel.detail";
	}
	@RequestMapping(value = "ajax/image", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<ImageRoomEntity> findImageRoom(@RequestParam("id") int id){
		
		return imageRoomService.findByIdRoomImageRoomEntity(id);
		
	}
	
	
}

















