package com.online.booking.controller.superuser;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.CopponHotel;
import com.online.booking.entities.Hotel;
import com.online.booking.entities.ImageRoom;
import com.online.booking.entities.ImageRoomEntity;
import com.online.booking.entities.Room;
import com.online.booking.helper.CheckHelper;
import com.online.booking.helper.UploadFileHelper;
import com.online.booking.services.AccountService;
import com.online.booking.services.BedTypeService;
import com.online.booking.services.HotelService;
import com.online.booking.services.ImageRoomService;
import com.online.booking.services.RoomCategoryService;
import com.online.booking.services.RoomService;
import com.online.booking.services.RoomTypeService;
import com.online.booking.validations.RoomValidator;

@Controller
@RequestMapping("/superuser/myroom")
public class RoomManagementController {

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
	private RoomValidator roomValidator;
	@Autowired
	private UploadFileHelper uploadFileHelper;
	@Autowired
	private ImageRoomService imageRoomService;
	@Autowired
	private CheckHelper checkHelper;
	@Autowired
	private AccountService accountService;

	@RequestMapping(value = "create/{id}", method = RequestMethod.GET)
	public String create(ModelMap map, @PathVariable("id") int idHotel ,Authentication authentication) {
		Account account = accountService.findByUsernameAndStatus(authentication.getName(), true);
		if (checkHelper.checkHotelofAccountSession(idHotel, account.getId())) {
			String url = "superuser.myroom.create";
			Room room = new Room();
			map.put("room", room);
			map.put("hotel", hotelService.findById(idHotel));
			map.put("beds", bedTypeService.findAll());
			map.put("categorys", roomCategoryService.findAll());
			map.put("types", roomTypeService.findAll());
			map.put("title", "Create");
			return checkHelper.checkRoleHotel(hotelService.findById(idHotel), url);
		} else {
			return "error.404";
}}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(ModelMap map, @ModelAttribute("room") @Valid Room room, BindingResult bindingResult,
			@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes,
			@RequestParam("idHotel") int idHotel, @RequestParam("images[]") List<MultipartFile> files) {
		if (!file.isEmpty()) {

			room.setSrcIcon("roomDefault.jpg");
		}
		roomValidator.validate(room, bindingResult);
		if (bindingResult.hasErrors()) {
			map.put("room", room);
			map.put("hotel", hotelService.findById(idHotel));
			map.put("beds", bedTypeService.findAll());
			map.put("categorys", roomCategoryService.findAll());
			map.put("types", roomTypeService.findAll());

			return "superuser.myroom.create";
		} else {
			if (!file.isEmpty()) {

				String fileName = uploadFileHelper.saveFile(file); // save file
				System.out.println(fileName);
				room.setSrcIcon(fileName);

			}
			room.setHotel(new Hotel(idHotel));
			Room roomResult = roomService.save(room);
			if (roomResult != null) {

				if (files.size() > 0) {
					int temp = 0;
					for (MultipartFile multipartFile : files) {
						String fileName = uploadFileHelper.saveFile(multipartFile);
						ImageRoom imageRoom = new ImageRoom();
						imageRoom.setRoom(roomResult);
						imageRoom.setSrc(fileName);
						imageRoom.setAlt(roomResult.getName());
						ImageRoom imageRoomResult = imageRoomService.save(imageRoom);
						if (imageRoomResult != null) {
							temp++;
						}
						if (temp > 20) {
							break;
						}

					}
					if (temp > 0) {
						redirectAttributes.addFlashAttribute("ms", "ok");

						return "redirect:/superuser/myhotel/detail/" + idHotel;
					} else {
						redirectAttributes.addFlashAttribute("ms", "noImageDesription");

						return "redirect:/superuser/myhotel/detail/" + idHotel;
					}

				} else {

					redirectAttributes.addFlashAttribute("ms", "noImageDesription");

					return "redirect:/superuser/myhotel/detail/" + idHotel;
				}

			} else {
				redirectAttributes.addFlashAttribute("ms", "failed");
				map.put("room", room);
				map.put("hotel", hotelService.findById(idHotel));
				map.put("beds", bedTypeService.findAll());
				map.put("categorys", roomCategoryService.findAll());
				map.put("types", roomTypeService.findAll());
				return "superuser.myroom.create";
			}
		}

	}

	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(ModelMap map, @PathVariable("id") int idRoom ,Authentication authentication) {
		Account account = accountService.findByUsernameAndStatus(authentication.getName(), true);
		if (checkHelper.checkRoomofAccountSession(idRoom, account.getId())) {
			String url= "superuser.myroom.edit";
		map.put("room", roomService.findById(idRoom));
		map.put("hotel", roomService.findById(idRoom).getHotel());
		map.put("beds", bedTypeService.findAll());
		map.put("categorys", roomCategoryService.findAll());
		map.put("types", roomTypeService.findAll());
		map.put("title", "Edit");
			return checkHelper.checkRoleHotel(roomService.findById(idRoom).getHotel(), url);
		} else {
			return "error.404";
}}
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(ModelMap map, @ModelAttribute("room") @Valid Room room, BindingResult bindingResult,
			@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes,
			 @RequestParam("images[]") List<MultipartFile> files) {
		if (!file.isEmpty()) {

			room.setSrcIcon("roomDefault.jpg");
		}
		roomValidator.validate(room, bindingResult);
		if (bindingResult.hasErrors()) {
			map.put("room", room);
			
			map.put("beds", bedTypeService.findAll());
			map.put("categorys", roomCategoryService.findAll());
			map.put("types", roomTypeService.findAll());

			return "superuser.myroom.create";
		} else {
			if (!file.isEmpty()) {

				String fileName = uploadFileHelper.saveFile(file); // save file
				System.out.println(fileName);
				room.setSrcIcon(fileName);

			}
			Room roomAf = roomService.findById(room.getId());
			room.setHotel(roomAf.getHotel());
			Room roomResult = roomService.save(room);
			if (roomResult != null) {

				if (files.size() > 0) {
					int temp = 0;
					for (MultipartFile multipartFile : files) {
						String fileName = uploadFileHelper.saveFile(multipartFile);
						ImageRoom imageRoom = new ImageRoom();
						imageRoom.setRoom(roomResult);
						imageRoom.setSrc(fileName);
						imageRoom.setAlt(roomResult.getName());
						ImageRoom imageRoomResult = imageRoomService.save(imageRoom);
						if (imageRoomResult != null) {
							temp++;
						}
						if (temp > 20) {
							break;
						}

					}
					if (temp > 0) {
						redirectAttributes.addFlashAttribute("ms", "ok");

						return "redirect:/superuser/myhotel/detail/" + roomResult.getHotel().getId();
					} else {
						redirectAttributes.addFlashAttribute("ms", "noImageDesription");

						return "redirect:/superuser/myhotel/detail/" + roomResult.getHotel().getId();
					}

				} else {

					redirectAttributes.addFlashAttribute("ms", "noImageDesription");

					return "redirect:/superuser/myhotel/detail/" + roomResult.getHotel().getId();
				}

			} else {
				redirectAttributes.addFlashAttribute("ms", "failed");
				map.put("room", room);
				map.put("hotel", roomAf.getHotel());
				map.put("beds", bedTypeService.findAll());
				map.put("categorys", roomCategoryService.findAll());
				map.put("types", roomTypeService.findAll());
				return "superuser.myroom.create";
			}
		}

	}
	@RequestMapping(value = "ajax/delete/image", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<ImageRoom> delete(@RequestParam("id") int idImage
		) {
		try {
			int idRoom = imageRoomService.findById(idImage).getRoom().getId();
			imageRoomService.delete(imageRoomService.findById(idImage));
			List<ImageRoom> imageRoomEntities = imageRoomService
					.findByIdRoom(idRoom);
			return imageRoomEntities;
		} catch (Exception e) {
			return new ArrayList<ImageRoom>();
		}
	
		
		
	
	}


}
