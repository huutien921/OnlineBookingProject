package com.online.booking.controller.user;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.Role;
import com.online.booking.entities.RoleAccount;
import com.online.booking.helper.UploadFileHelper;
import com.online.booking.services.AccountService;
import com.online.booking.services.RoleAccountService;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private RoleAccountService roleAccountService;
	@Autowired
	private UploadFileHelper uploadFileHelper;
	
	@RequestMapping(value = { "", "login", "index" }, method = RequestMethod.GET)
	public String index(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, ModelMap modelMap) {
		modelMap.put("title", "Login");
		if (error != null) {
			modelMap.put("msg", "Failed");

		}
		// logout
		if (logout != null) {
			modelMap.put("msg", "Logout Successfully");
		}

		return "login.index";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		Account account = new Account();
		modelMap.put("accountModel", account);
		
		return "login.register";
	}
	@RequestMapping(value = "registerAccount", method = RequestMethod.POST)
	public String registerAccount(ModelMap modelMap, @ModelAttribute("accountModel") Account account, RedirectAttributes redirectAttributes, @RequestParam("confirmPassword") String confirmPassword) {
		String existUsername = account.getUsername();
		if(accountService.findByUsername(existUsername) == null) {
			if(confirmPassword.equals(account.getPassword())) {
				String newPassword = new BCryptPasswordEncoder().encode(account.getPassword());
				
				account.setCreated(new Date());
				account.setAvatar("default.png");
				account.setStatus(true);
				account.setPassword(newPassword);
				accountService.save(account);
				
				RoleAccount roleAccount = new RoleAccount();
				roleAccount.setAccount(new Account(account.getId()));
				roleAccount.setRole(new Role(4));
				roleAccount.setStatus(true);
				roleAccountService.save(roleAccount);
				
				
				
			} else {
				redirectAttributes.addFlashAttribute("err", "Confirm password");
				return "redirect:/login/register";
			}
		} else {
			redirectAttributes.addFlashAttribute("err", "Username existed");
			return "redirect:/login/register";
		}
		
			
			
			
			
		
			redirectAttributes.addFlashAttribute("registerSuccess", "Success");

		return "redirect:/login/index";
	}
	
	@RequestMapping(value = "statusOrder", method = RequestMethod.GET)
	public String statusOrder() {
		return "login.statusOrder";
	}

	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(Authentication authentication, ModelMap modelMap) {
		try {
			String username = authentication.getName();
			
			
			modelMap.put("profile", accountService.findByUsernameAndStatus(username, true));
			
		} catch (Exception e) {
			e.getMessage();
		}
		
		
		
		return "login.profile";
	}
	@RequestMapping(value = "updateProfile", method = RequestMethod.POST)
	public String updateProfile(Authentication authentication, ModelMap modelMap, @ModelAttribute("profile") Account account, RedirectAttributes redirectAttributes) {
		try {
			String username = authentication.getName();
			Account accountt = accountService.findByUsernameAndStatus(username, true);
			
			accountt.setFullname(account.getFullname());
			accountt.setEmail(account.getEmail());
			accountt.setGender(account.getGender());
			accountt.setIdentitycard(account.getIdentitycard());
			accountt.setAddress(account.getAddress());
			
			System.out.println(account.getFullname());
			System.out.println(account.getGender());
			
			accountService.save(accountt);
			
			modelMap.put("profile", accountService.findByUsernameAndStatus(username, true));
			redirectAttributes.addFlashAttribute("msg", "Update profile success");
		} catch (Exception e) {
			e.getMessage();
		}
		
		
		
		return "redirect:/login/profile";
	}
	
	@RequestMapping(value = "updateAvatar", method = RequestMethod.POST)
	public String updateAvatar(Authentication authentication, ModelMap modelMap, @RequestParam("file") MultipartFile file,  RedirectAttributes redirectAttributes) {
		try {
			String username = authentication.getName();
			Account accountt = accountService.findByUsernameAndStatus(username, true);
			
			if(!file.isEmpty()) {
				String fileName = uploadFileHelper.saveFile(file);
				accountt.setAvatar(fileName);
			}
			
			accountService.save(accountt);
			
			modelMap.put("profile", accountService.findByUsernameAndStatus(username, true));
			redirectAttributes.addFlashAttribute("msg", "Update avatar success, wait seconds to see the change");
		} catch (Exception e) {
			e.getMessage();
		}
		
		
		
		return "redirect:/login/profile";
	}
	

	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String welcome(Authentication authentication, ModelMap modelMap) {
		System.out.println("username: " + authentication.getName()); // lay ra username da dang nhap
		return "login/welcome";
	}

	@RequestMapping(value = "accessdenied", method = RequestMethod.GET)
	public String accessdenied() {

		return "login/accessdenied";
	}
}
