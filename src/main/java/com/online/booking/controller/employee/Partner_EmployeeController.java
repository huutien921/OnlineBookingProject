package com.online.booking.controller.employee;

import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.Hotel;
import com.online.booking.entities.Room;
import com.online.booking.services.HotelService;
import com.online.booking.services.RoomService;

@Controller
@RequestMapping("/employee/partner")
public class Partner_EmployeeController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private RoomService roomService;
	@Autowired
	public JavaMailSender emailSender;

	@RequestMapping(value = "unconfirmed", method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {

		List<Hotel> hotelsUnActive = (List<Hotel>) hotelService.searchHotelByStatusFalseAndIdAccountEmployeeNull();

		modelMap.put("hotelNotActive", hotelsUnActive);

		return "employee.partner.index";
	}

	@RequestMapping(value = "confirmed", method = RequestMethod.GET)
	public String indexConfirmed(HttpServletRequest request, ModelMap modelMap) {

		List<Hotel> hotels = (List<Hotel>) hotelService.searchHotelByStatusAndIdAccountEmployee(
				true) /*
						 * hotelService.filterHotelForEmployee(true, "hanh phuc", 2, "", "Da lat", "")
						 */;

		modelMap.put("hotelActive", hotels);

		return "employee.partner.indexConfirmed";
	}

	@RequestMapping(value = "block", method = RequestMethod.GET)
	public String indexBlocked(HttpServletRequest request, ModelMap modelMap) {

		List<Hotel> hotelsBlock = (List<Hotel>) hotelService.searchHotelByStatusAndIdAccountEmployee(false);

		modelMap.put("hotelsBlock", hotelsBlock);

		return "employee.partner.indexBlocked";
	}

	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String deatail(ModelMap modelMap, @PathVariable("id") int id) {

		modelMap.put("hotel", hotelService.find(id));
		modelMap.put("roomNew", roomService.searchRoomByStatusAndIdHotel(false, id));
		modelMap.put("roomConfimred", roomService.searchRoomByStatusAndIdHotel(true, id));
		return "employee.partner.detail";
	}

	// update active unactive
	@RequestMapping(value = "updateUnactive/{id}", method = RequestMethod.GET)
	public String updateUnactiveHotel(@PathVariable("id") int id, ModelMap modelMap) {

		Hotel ohotel = hotelService.find(id);
		System.out.println("-------------------id " + ohotel.getId());

		ohotel.setAccountByIdAcEmployee(new Account(5));
		ohotel.setStatus(false);
		hotelService.save(ohotel);

		String email = ohotel.getAccountByAccountId().getEmail();
		try {

			sendHtmlEmail_forUnActive(email);

		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		modelMap.put("hotel", hotelService.find(id));
		modelMap.put("roomNew", roomService.searchRoomByStatusAndIdHotel(false, id));
		modelMap.put("roomConfimred", roomService.searchRoomByStatusAndIdHotel(true, id));
		return "employee.partner.detail";
	}

	@RequestMapping(value = "updateActive/{id}", method = RequestMethod.GET)
	public String updateActiveHotel(@PathVariable("id") int id, ModelMap modelMap) {

		Hotel ohotel = hotelService.find(id);
		System.out.println("-------------------id " + ohotel.getId());

		ohotel.setAccountByIdAcEmployee(new Account(5));
		ohotel.setStatus(true);
		hotelService.save(ohotel);
		
		
		String email = ohotel.getAccountByAccountId().getEmail();
		try {

			sendHtmlEmail_forActive(email);

		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		

		modelMap.put("hotel", ohotel);
		modelMap.put("roomNew", roomService.searchRoomByStatusAndIdHotel(false, id));
		modelMap.put("roomConfimred", roomService.searchRoomByStatusAndIdHotel(true, id));
		return "employee.partner.detail";
	}
	
	@RequestMapping(value = "activeRoom/{id}", method = RequestMethod.GET)
	public String activeRoom(@PathVariable("id") int id, ModelMap modelMap, RedirectAttributes redirectAttributes ) {

		Room oroom = roomService.findById(id);
		Hotel ohotel = hotelService.find(oroom.getHotel().getId());
		
		System.out.println("-------------------id " + oroom.getId());

		
		oroom.setStatus(true);
		roomService.save(oroom);
		
		
		String email = ohotel.getAccountByAccountId().getEmail();
		try {

			sendHtmlEmail_forActiveRoom(email);

		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	

		modelMap.put("hotel", ohotel);
		modelMap.put("roomNew", roomService.searchRoomByStatusAndIdHotel(false, oroom.getHotel().getId()));
		modelMap.put("roomConfimred", roomService.searchRoomByStatusAndIdHotel(true, oroom.getHotel().getId()));
		return "employee.partner.detail";
	}
	
	@RequestMapping(value = "unActiveRoom/{id}", method = RequestMethod.GET)
	public String unActiveRoom(@PathVariable("id") int id, ModelMap modelMap) {

		Room oroom = roomService.findById(id);
		Hotel ohotel = hotelService.find(oroom.getHotel().getId());
		System.out.println("-------------------id " + oroom.getId());

		
		oroom.setStatus(false);
		roomService.save(oroom);
		
		
		String email = ohotel.getAccountByAccountId().getEmail();
		try {

			sendHtmlEmail_forUnActiveRoom(email);

		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	

		modelMap.put("hotel", ohotel);
		modelMap.put("roomNew", roomService.searchRoomByStatusAndIdHotel(false, oroom.getHotel().getId()));
		modelMap.put("roomConfimred", roomService.searchRoomByStatusAndIdHotel(true, oroom.getHotel().getId()));
		return "employee.partner.detail";
	}
	
	//email template
	@ResponseBody
    public String sendHtmlEmail_forActive(String ToEmail) throws MessagingException {
 
        MimeMessage message = emailSender.createMimeMessage();
 
        boolean multipart = true;
         
        MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
         
        String htmlMsg = "<h1>Congratulations!!</h1>\r\n" + 
        		"<p>Hotel name</p>\r\n" + 
        		"<p>Your Hotel (ID:<strong>#234234</strong>) has been accepted</p>\r\n" + 
        		"<br>\r\n" + 
        		"<p>Now you can create your room at localhost:9597/account/user/12312453</p>\r\n" + 
        		"<p>Contact us for the fastest support: +0281234567891011(phone) or localhost:9597/contact</p>\r\n" + 
        		"	<br>\r\n" + 
        		"  <p>Please do not reply to this email as it is an automated email, thanks you!!!</p> 	";
         
        message.setContent(htmlMsg, "text/html");
         
        helper.setTo(ToEmail);
         
        helper.setSubject("Bookbed your hotel has been accepted");
         
     
        this.emailSender.send(message);
 
        return "Email Sent!";
    }
	
	@ResponseBody
    public String sendHtmlEmail_forUnActive(String ToEmail) throws MessagingException {
 
        MimeMessage message = emailSender.createMimeMessage();
 
        boolean multipart = true;
         
        MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
         
        String htmlMsg = "<h1>Unaccepted!!</h1>\r\n" + 
        		"<p>Hotel name</p>\r\n" + 
        		"<p>Your Hotel (ID:<strong>#234234</strong>) has been unaccepted</p>\r\n" + 
        		"<br>\r\n" + 
        		"<p>Please check your hotel information and submit it again, or contact us for more details.</p>\r\n" + 
        		"<p>Contact us for the fastest support: +0281234567891011(phone) or localhost:9597/contact</p>\r\n" + 
        		"	<br>\r\n" + 
        		"  <p>Please do not reply to this email as it is an automated email, thanks you!!!</p> 	";
         
        message.setContent(htmlMsg, "text/html");
         
        helper.setTo(ToEmail);
         
        helper.setSubject("Bookbed your hotel has been accepted");
         
     
        this.emailSender.send(message);
 
        return "Email Sent!";
    }
	
	@ResponseBody
    public String sendHtmlEmail_forActiveRoom(String ToEmail) throws MessagingException {
 
        MimeMessage message = emailSender.createMimeMessage();
 
        boolean multipart = true;
         
        MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
         
        String htmlMsg = "<h1>Congratulations!!</h1>\r\n" + 
        		"<p>Room name has been accepted</p>\r\n" + 
        		"<p>Now that your room is up and running, people can find your room</p>\r\n" + 
        		"<br>\r\n" + 
        		"<p>And you can create new your room at localhost:9597/account/user/12312453</p>\r\n" + 
        		"<p>Contact us for the fastest support: +0281234567891011(phone) or localhost:9597/contact</p>\r\n" + 
        		"	<br>\r\n" + 
        		"  <p>Please do not reply to this email as it is an automated email, thanks you!!!</p> 	";
         
        message.setContent(htmlMsg, "text/html");
         
        helper.setTo(ToEmail);
         
        helper.setSubject("Bookbed your hotel has been accepted");
         
     
        this.emailSender.send(message);
 
        return "Email Sent!";
    }
	
	@ResponseBody
    public String sendHtmlEmail_forUnActiveRoom(String ToEmail) throws MessagingException {
 
        MimeMessage message = emailSender.createMimeMessage();
 
        boolean multipart = true;
         
        MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
         
        String htmlMsg = "<h1>Your room refused!!</h1>\r\n" + 
        		"<p>Room name has been refused</p>\r\n" + 
        		"<p>Please check your room information and submit it again, or contact us for more details.</p>\r\n" + 
        		"<br>\r\n" + 
        		
        		"<p>Contact us for the fastest support: +0281234567891011(phone) or localhost:9597/contact</p>\r\n" + 
        		"	<br>\r\n" + 
        		"  <p>Please do not reply to this email as it is an automated email, thanks you!!!</p> 	";
         
        message.setContent(htmlMsg, "text/html");
         
        helper.setTo(ToEmail);
         
        helper.setSubject("Bookbed your hotel has been accepted");
         
     
        this.emailSender.send(message);
 
        return "Email Sent!";
    }
}
