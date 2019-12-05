package com.online.booking.controller.superuser;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.online.booking.entities.CopponHotel;

import com.online.booking.entities.CopponRoomEntity;
import com.online.booking.entities.Hotel;

import com.online.booking.entities.ImageRoomEntity;
import com.online.booking.entities.OrderDetail;
import com.online.booking.entities.StarRating;
import com.online.booking.helper.UploadFileHelper;
import com.online.booking.services.CopponHotelService;
import com.online.booking.services.CopponRoomService;
import com.online.booking.services.HotelService;
import com.online.booking.services.ImageRoomService;
import com.online.booking.services.OrderDetailService;
import com.online.booking.services.StarRatingService;
import com.online.booking.validations.HotelValidator;

@Controller
@RequestMapping("/superuser/myhotel")
public class HotelManagementController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private ImageRoomService imageRoomService;
	@Autowired
	private CopponRoomService copponRoomService;
	@Autowired
	private CopponHotelService copponHotelService;
	@Autowired
	private StarRatingService starRatingService;
	@Autowired
	private HotelValidator hotelValidator;
	@Autowired
	private UploadFileHelper uploadFileHelper;
	@Autowired
	private OrderDetailService orderDetailService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap map) {
		map.put("hotels", hotelService.findByAccountId(4));
		map.put("now", new Date());
		return "superuser.myhotel.index";
	}

	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String detail(ModelMap map, @PathVariable("id") int id) {
		map.put("hotel", hotelService.findById(id));

		return "superuser.myhotel.detail";
	}

	@RequestMapping(value = "ajax/image", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<ImageRoomEntity> findImageRoom(@RequestParam("id") int id) {

		return imageRoomService.findByIdRoomImageRoomEntity(id);

	}

	@RequestMapping(value = "ajax/copponroom/create", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<CopponRoomEntity> saveCopponRoom(@RequestParam("roomId") String roomId,
			@RequestParam("disName") String name, @RequestParam("disVal") double val,
			@RequestParam("status") boolean status, @RequestParam("hotelId") int hotelId) {

		if (roomId.length() <= 2 || val > 100 || val < 1 || name.length() > 205 || name.length() < 1) {
			return new ArrayList<CopponRoomEntity>();
		} else {

			ObjectMapper mapper = new ObjectMapper();
			try {

				String[] idroom = mapper.readValue(roomId, String[].class);
				if (copponRoomService.createCopponRoom(idroom, name, val, status)) {

					return copponRoomService.getCopponRoomEntitiesByIdHotel(hotelId);

				} else {

					return new ArrayList<CopponRoomEntity>();
				}

			} catch (IOException e) {

				e.printStackTrace();
				return new ArrayList<CopponRoomEntity>();
			}

		}

	}

	@RequestMapping(value = "ajax/copponhotel/update", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public CopponHotel saveCopponHotel(@RequestParam("copponHotelId") int copponHotelId,
			@RequestParam("disName") String name, @RequestParam("disVal") double val,
			@RequestParam("status") boolean status, @RequestParam("hotelId") int hotelId) {
		if (name.length() > 250 || name.length() < 1 || val > 100 || val < 1) {
			return new CopponHotel();
		} else {
			try {

				if (copponHotelId != 0) {
					CopponHotel copponHotel = copponHotelService.findById(copponHotelId);
					copponHotel.setName(name);
					copponHotel.setSale(val);
					copponHotel.setStatus(status);
					return copponHotelService.save(copponHotel);
				} else {
					CopponHotel copponHotel = new CopponHotel();
					copponHotel.setName(name);
					copponHotel.setSale(val);
					copponHotel.setStatus(status);
					CopponHotel copponHotelresult = copponHotelService.save(copponHotel);
					if (copponHotelresult != null) {
						Hotel hotel = hotelService.findById(hotelId);
						hotel.setCopponHotel(copponHotelresult);
						System.out.println("aaaaaa");
						if (hotelService.save(hotel) != null) {

							return copponHotelresult;

						} else {
							new CopponHotel();
						}

					} else {

						return new CopponHotel();
					}

				}

			} catch (Exception e) {
				return new CopponHotel();
			}

		}
		return new CopponHotel();
	}

	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(ModelMap map, @PathVariable("id") int id) {
		map.put("hotel", hotelService.findById(id));
		map.put("starRatings", (List<StarRating>) starRatingService.findAll());

		return "superuser.myhotel.edit";

	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute("hotel") @Valid Hotel hotel, BindingResult bindingResult,
			@RequestParam("file") MultipartFile file ,RedirectAttributes redirectAttributes , ModelMap map) {
		hotelValidator.validate(hotel, bindingResult);

		if (bindingResult.hasErrors()) {

			return "superuser.myhotel.edit/" + hotel.getId();
			
		} else {
		
			if (!file.isEmpty()) {

				String fileName = uploadFileHelper.saveFile(file); // save file
				System.out.println(fileName);
				hotel.setImage(fileName);

			} else {
				hotel.setImage(hotelService.findById(hotel.getId()).getImage());
			}
			Hotel hotelBefore = hotelService.find(hotel.getId());

			if (!hotelBefore.getName().equals(hotel.getName()) || !hotelBefore.getCity().equals(hotel.getCity())
					|| !hotelBefore.getWard().equals(hotel.getWard())
					|| !hotelBefore.getCountry().equals(hotel.getCountry())
					|| !hotelBefore.getProvincial().equals(hotel.getProvincial())) {
				hotel.setAccountByIdAcEmployee(null);
			} else {
				hotel.setAccountByIdAcEmployee(hotelBefore.getAccountByIdAcEmployee());
			}
			hotel.setAccountByAccountId(hotelBefore.getAccountByAccountId());
			hotel.setCopponHotel(hotelBefore.getCopponHotel());
			hotel.setStatus(hotelBefore.isStatus());
			Hotel  hotelResult = hotelService.save(hotel);
			if(hotelResult != null && hotelResult.getAccountByIdAcEmployee() == null ){
				
				redirectAttributes.addFlashAttribute("ms", "unactive");
				return "redirect:/superuser/myhotel";
				
			}else 
			if (hotelResult != null) {
				redirectAttributes.addFlashAttribute("ms", "ok");
				return "redirect:/superuser/myhotel";
			}
			
			
			else {
				map.put("ms", "failed");
				return "superuser.myhotel.edit/" + hotel.getId();
			}
		}

	}
	
	@RequestMapping(value = "management/{id}", method = RequestMethod.GET)
	public String management(ModelMap map, @PathVariable("id") int id) {
		map.put("hotel", hotelService.findById(id));
		map.put("orderdetail",orderDetailService.findByIdHotel(id));
		map.put("now", new Date());

		return "superuser.myhotel.management";
	}
	@RequestMapping(value = "ajax/find/order", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<OrderDetail> findByidRoom(@RequestParam("id") int idRoom) {
		System.out.println( orderDetailService.findByIdRoom(idRoom).size());
		
		return orderDetailService.findByIdRoom(idRoom);
		
		
	}
	



}
