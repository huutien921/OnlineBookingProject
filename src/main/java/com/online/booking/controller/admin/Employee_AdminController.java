/*package com.online.booking.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/employee")
public class Employee_AdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "admin.employee.index";
	}
	
}
*/
package com.online.booking.controller.admin;

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
@RequestMapping("/admin/employee")
public class Employee_AdminController  implements ServletContextAware{
	
	@Autowired
	private AccountService accountService;
	@Autowired
	private RoleAccountService roleAccountService;
	@Autowired
	private RoleService roleService;
	
	
	private ServletContext servletContext;
	
	@RequestMapping(value = { "index" },method = RequestMethod.GET)
	public String index(ModelMap map) {
		map.put("accounts", accountService.findAllEmployee(3));
		return "admin.employee.index";
	}
	
	@RequestMapping(value = "accountdetail/{id}", method = RequestMethod.GET)
	public String details(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("account", accountService.find(id));
		return "admin/employee_management/accountdetail";
	}
	
	@RequestMapping(value="insertaccount", method= RequestMethod.GET)
	public String add(ModelMap modelMap) {
		
		Account account = new Account();
	//RoleAccount roleAccount=new RoleAccount();
		modelMap.put("account", account);
		
		return "admin/employee_management/insertaccount";
	}	
	
	@RequestMapping(value="save", method= RequestMethod.POST)
	public String save(@ModelAttribute("account") Account account,
			@ModelAttribute("roleaccount") RoleAccount roleAccount,
			@ModelAttribute("roles") Role role,ModelMap map,
			@RequestParam("password") String password,
			@RequestParam("birthday")String birthday,
			@RequestParam("gender") String gender,
			@RequestParam("file") MultipartFile file,
			RedirectAttributes redirectAttributes
			//@RequestParam("role") Integer[] roleName
		//	@RequestParam("role") Integer roleName
			//@RequestParam Integer[] accountid
			
			) 
	{
		
	//	map.put("roles", roleService.findAll());
		
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		String existUserName=account.getUsername();
		try {
			if (accountService.findByUsername(existUserName)==null) {
				
		
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
			role.setId(3);
			roleAccount.setRole(role);
			roleAccount.setAccount(account);
		
			roleAccountService.save(roleAccount);
			
			}else {
				redirectAttributes.addFlashAttribute("err", "Username existed");
				return "redirect:/admin/employee/insertaccount";
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
	
	
	
	@RequestMapping(value="accountupdate/{id}", method= RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		//Account account = accountService.find(id);
	
		modelMap.put("account", accountService.find(id));
		
		return "admin/employee_management/accountupdate";
	}
	@RequestMapping(value="accountupdate", method= RequestMethod.POST)
	public String update(@ModelAttribute("account") Account account, ModelMap modelMap,
			@RequestParam("password") String password,
			@RequestParam("birthday") String birthday,
			@RequestParam("file") MultipartFile file,
		//	@ModelAttribute("roles") Role role,
	
			@RequestParam("gender") String gender
		
			//@RequestParam("role") Integer[] roleName
			)
	{
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		Account account2= accountService.find(account.getId());
	
		
		try {
			String fileName=saveFile(file);
			account2.setFullname(account.getFullname());
			account2.setGender(account.getGender());
			account2.setScore(account.getScore());
			account2.setBirthday(simpleDateFormat.parse(birthday));
			account2.setPassword(BCrypt.hashpw(password,BCrypt.gensalt()));
			account2.setEmail(account.getEmail());
			account2.setAddress(account.getAddress());
			account2.setAvatar(fileName);
		//account2.setBirthday(account.getBirthday());
			account2.setType(account.getType());
			account2.setIdentitycard(account.getIdentitycard());
		
			accountService.save(account2);
			
			
			
		//	modelMap.put("accounts", accountService.findAll());
		} catch (Exception e) {
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
		
		
		
		
		return "redirect:/admin/employee/index";
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
		
		
		
		
		return "redirect:/admin/employee/index";
	}
	
	
	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
	
}
