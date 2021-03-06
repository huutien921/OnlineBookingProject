/*package com.online.booking.controller.superadmin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/superadmin/account")
public class Account_SuperAdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "superadmin.account.index";
	}
	
}*/
package com.online.booking.controller.superadmin;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.Role;
import com.online.booking.entities.RoleAccount;
import com.online.booking.services.AccountService;
import com.online.booking.services.RoleAccountService;
import com.online.booking.services.RoleService;

@Controller
@RequestMapping("/superadmin/account")
public class Account_SuperAdminController implements ServletContextAware{
	@Autowired
	private AccountService accountService;
	@Autowired
	private RoleAccountService roleAccountService;
	@Autowired
	private RoleService roleService;
	
	
	private ServletContext servletContext;
	
	@RequestMapping(value="index",method = RequestMethod.GET)
	public String index(ModelMap map) {
		map.put("accounts", accountService.findAllEmployee(2));
		return "superadmin.account.index";
	}

	
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String details(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("account", accountService.find(id));
		return "superadmin/account_management/detail";
	}
	
	@RequestMapping(value="save", method= RequestMethod.GET)
	public String add(ModelMap modelMap) {
		
		Account account = new Account();
	//RoleAccount roleAccount=new RoleAccount();
		modelMap.put("account", account);
		
		return "superadmin/account_management/add";
	}	
	
	@RequestMapping(value="save", method= RequestMethod.POST)
	public String save(@ModelAttribute("account") Account account,
			@ModelAttribute("roleaccount") RoleAccount roleAccount,
			@ModelAttribute("roles") Role role,ModelMap map,
			@RequestParam("password") String password,
			@RequestParam("birthday")String birthday,
			@RequestParam("gender") String gender,
			@RequestParam("file") MultipartFile file,
			//@RequestParam("role") Integer[] roleName
			@RequestParam("role") Integer roleName,
			RedirectAttributes redirectAttributes
			//@RequestParam Integer[] accountid
			
			) 
	{
		
	//	map.put("roles", roleService.findAll());
		
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		String existUserName=account.getUsername();
		try {
			if(accountService.findByUsername(existUserName)==null) {
				
			
			String fileName=saveFile(file);
			account.setBirthday(simpleDateFormat.parse(birthday));
			account.setCreated(new Date());
			account.setPassword(BCrypt.hashpw(password,BCrypt.gensalt()));
			account.setGender(gender);
			account.setStatus(true);
			account.setAvatar(fileName);
			accountService.save(account);
			
			
		
		/*	for(Integer roleid:roleName) {
				
				roleAccount.setStatus(true);
				role.setId(roleid);
				roleAccount.setRole(role);
				account.setId(roleid);
				roleAccount.setAccount(account);
				roleAccountService.save(roleAccount);
			}
		*/
			
	
			roleAccount.setStatus(true);
			role.setId(roleName);
			roleAccount.setRole(role);
			roleAccount.setAccount(account);
		
			roleAccountService.save(roleAccount);
			}
			else {
				redirectAttributes.addFlashAttribute("err", "Username existed");
				return "redirect:/superadmin/account/add";
			}
			
			
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		return "redirect:index";
	}
	
	
	
	private String saveFile(MultipartFile file) {
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyyyyHHmmss");
			String fileName = simpleDateFormat.format(new Date()) + file.getOriginalFilename();
			byte[] bytes = file.getBytes();
			Path path = Paths.get(servletContext.getRealPath ("/uploads/images/" + fileName));
			Files.write(path, bytes);
			return fileName;
		} catch (Exception e) {
			return null;
		}
	}
	
	
	
	@RequestMapping(value="update/{id}", method= RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		Account account = accountService.find(id);
	
		modelMap.put("account", account);
		
		return "superadmin/account_management/update";
	}
	@RequestMapping(value="update", method= RequestMethod.POST)
	public String update(@ModelAttribute("account") Account account, ModelMap modelMap,
			@RequestParam("password") String password,@RequestParam("birthday") String birthday
			,	@ModelAttribute("roleaccount") RoleAccount roleAccount,
			@RequestParam("role") Integer roleName,
			@ModelAttribute("roles") Role role)
	{
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		Account account2= accountService.find(account.getId());
		RoleAccount roleAccount2=roleAccountService.find(roleAccount.getId());
		try {
			account2.setFullname(account2.getFullname());
			account2.setGender(account2.getGender());
			account2.setScore(account2.getScore());
			account2.setPassword(BCrypt.hashpw(password,BCrypt.gensalt()));
			account2.setEmail(account2.getEmail());
			account2.setAddress(account2.getAddress());
			account2.setAvatar(account2.getAddress());
			account2.setBirthday(account2.getBirthday());
			account2.setBirthday(simpleDateFormat.parse(birthday));
			account2.setType(account2.getType());
			account2.setIdentitycard(account2.getIdentitycard());
			
			
			
			accountService.save(account2);
			
			
			
			
			
			roleAccount2.setStatus(true);
			role.setId(roleName);
			roleAccount2.setRole(role);
			roleAccount2.setAccount(account);
			roleAccountService.save(roleAccount2);
		
			
			modelMap.put("accounts", accountService.findAll());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "redirect:index";
	}
	
	/*@RequestMapping(value="/save/{id}", method= RequestMethod.GET)
	public String blockAccount(@PathVariable("id") int id, ModelMap modelMap) {
		Account account = accountService.find(id);
	
		modelMap.put("account", account);
		
		return "redirect:index";
	}
	*/
	@RequestMapping(value="unactive/{id}", method= RequestMethod.GET)
	public String blockAccount(@PathVariable("id") int id, @ModelAttribute("account") Account account, ModelMap modelMap
			)
	{
		//SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		Account account2= accountService.findById(id);
		
		try {
			account2.setStatus(false);
			
			accountService.save(account2);
			//modelMap.put("accounts", accountService.findAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return "redirect:/superadmin/account/index";
	}
	
	@RequestMapping(value="active/{id}", method= RequestMethod.GET)
	public String activeAccount(@PathVariable("id") int id, @ModelAttribute("account") Account account, ModelMap modelMap
			)
	{
		//SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		Account account2= accountService.findById(id);
		
		try {
			account2.setStatus(true);
			
			accountService.save(account2);
			//modelMap.put("accounts", accountService.findAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return "redirect:/superadmin/account/index";
	}
	
	
	
	
	
	
	
	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
	
	
}

