package com.online.booking.controller.superuser;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Hotel;
import com.online.booking.entities.ImageRoom;
import com.online.booking.entities.Room;
import com.online.booking.helper.UploadFileHelper;
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

	@RequestMapping(value = "create/{id}", method = RequestMethod.GET)
	public String create(ModelMap map, @PathVariable("id") int idHotel) {

		Room room = new Room();
		map.put("room", room);
		map.put("hotel", hotelService.findById(idHotel));
		map.put("beds", bedTypeService.findAll());
		map.put("categorys", roomCategoryService.findAll());
		map.put("types", roomTypeService.findAll());
		return "superuser.myroom.create";
	}

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

}
