package com.online.booking.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.Hotel;
import com.online.booking.entities.Role;
import com.online.booking.entities.RoleAccount;
import com.online.booking.entities.StarRating;
import com.online.booking.helper.UploadFileHelper;
import com.online.booking.services.AccountService;
import com.online.booking.services.HotelService;
import com.online.booking.services.RoleAccountService;
import com.online.booking.services.StarRatingService;
import com.online.booking.validations.HotelValidator;

@Controller
@RequestMapping("/user/superuser")
public class HotelManagerController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private AccountService accountService;
	@Autowired
	private StarRatingService starRatingService;
	@Autowired
	private HotelValidator hotelValidator;
	@Autowired
	private UploadFileHelper uploadFileHelper;
	@Autowired
	private RoleAccountService roleAccountService;

	@RequestMapping(value = "create/hotel", method = RequestMethod.GET)
	public String createHotel(ModelMap map ,HttpSession httpSession) {
		Account account =	(Account) httpSession.getAttribute("account");
	
		int iduser = account.getId();
		map.put("user", accountService.findById(iduser));
	
		Hotel hotel = new Hotel();
		map.put("hotel", hotel);
		map.put("starRatings", (List<StarRating>) starRatingService.findAll());

		return "user.superuser.create.hotel";
	}

	@RequestMapping(value = "create/hotel", method = RequestMethod.POST)
	public String createHotel(@ModelAttribute("hotel") @Valid Hotel hotel, BindingResult bindingResult,
			@RequestParam("file") MultipartFile file,
			RedirectAttributes redirectAttributes, ModelMap map ,
			@RequestParam("idac") int idac ,HttpSession httpSession) {
		hotelValidator.validate(hotel, bindingResult);

		if (bindingResult.hasErrors()) {

			return "user.superuser.create.hotel";

		} else {

			if (!file.isEmpty()) {

				String fileName = uploadFileHelper.saveFile(file); // save file
				System.out.println(fileName);
				hotel.setImage(fileName);

			} else {
				hotel.setImage("hotelDefault.jpg");
			}
			hotel.setAccountByAccountId(new Account(idac));
			hotel.setStatus(false);
			if (hotelService.findByAccountId(idac).isEmpty()) {
				Hotel hotelResult = hotelService.save(hotel);
				Account account = accountService.findById(idac);
				Role role = new Role(5);
				RoleAccount roleAccount = new RoleAccount(account, role, true);
				RoleAccount roleAccountResult = roleAccountService.save(roleAccount);
				if (hotelResult != null && roleAccountResult != null) {
					redirectAttributes.addFlashAttribute("ms", "ok");
					return "redirect:/superuser/myhotel";
					  
				}else {
					map.put("hotel", hotel);
					map.put("starRatings", (List<StarRating>) starRatingService.findAll());
					
					redirectAttributes.addFlashAttribute("ms", "failed");
		
					return "user.superuser.create.hotel";
					
				}
			} else {
				
				redirectAttributes.addFlashAttribute("ms", "createService");
				httpSession.setAttribute("hotel", hotel);
				return "redirect:/superuser/servicehotel/buyService";
			}
	
		
		}

	}
}
