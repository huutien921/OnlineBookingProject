/*package com.online.booking.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/service")
public class Service_AdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "admin.service.index";
	}
	
}
*/
package com.online.booking.controller.admin;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;


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

import com.online.booking.entities.Account;
import com.online.booking.entities.Service;
import com.online.booking.entities.Servicetype;
import com.online.booking.services.ServiceService;
import com.online.booking.services.ServicetypeService;

@Controller
@RequestMapping("/admin/service")
public class Service_AdminController implements ServletContextAware{
	
	@Autowired
	private ServiceService serviceService;
	@Autowired
	private ServicetypeService serviceTypeService;
	
	
	private ServletContext servletContext;
	
	@RequestMapping(value = "index",method = RequestMethod.GET)
	public String index(ModelMap map) {
		map.put("services",serviceService.findAll());
		
		return "admin.service.index";
	}
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String details(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("service", serviceService.find(id));
		return "admin/service_management/detail";
	}
	
	@RequestMapping(value="save", method= RequestMethod.GET)
	public String add(ModelMap modelMap) {
		
		Service service = new Service();
	//RoleAccount roleAccount=new RoleAccount();
		modelMap.put("service", service);
		modelMap.put("services", serviceTypeService.findAll());
		return "admin/service_management/add";
	}	
	@RequestMapping(value="save", method= RequestMethod.POST)
	public String add(@ModelAttribute("service") Service service,@ModelAttribute("servicetype") Servicetype servicetype,
			@ModelAttribute("account") Account account,@RequestParam("servicetypeid") Integer serviceid
			,@RequestParam("file") MultipartFile file)
	{
		String fileName=saveFile(file);
	
		account.setId(1);
		service.setAccount(account);
		servicetype.setId(serviceid);
		service.setIconSrc(fileName);
		service.setStatus(true);
		service.setServicetype(servicetype);
		serviceService.save(service);
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
		Service service = serviceService.find(id);
	
		modelMap.put("services", serviceTypeService.findAll());
		modelMap.put("service", service);
		
		return "admin/service_management/update";
	}
	
	@RequestMapping(value="update", method= RequestMethod.POST)
	public String update(@ModelAttribute("service") Service service,
			@ModelAttribute("servicetype") Servicetype servicetype,
			@RequestParam("servicetypeid") Integer serviceid,
			@ModelAttribute("account") Account account,
			ModelMap modelMap)
	{
	
		Service service1 = serviceService.find(service.getId());
		
		
		try {
			account.setId(2);
		servicetype.setId(serviceid);
			
		service1.setAccount(account);
		service1.setCore(service.getCore());
		service1.setDescription(service.getDescription());
		service1.setIconSrc(service.getIconSrc());
		service1.setName(service.getName());
		service1.setPrice(service.getPrice());
	
		service1.setPriority(Integer.valueOf(service.getPriority()));
		service1.setServicetype(servicetype);
		service1.setStatus(true);
		serviceService.save(service1);
			//modelMap.put("service", serviceservice.findAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return "redirect:index";
	}
	@RequestMapping(value="unactive/{id}", method= RequestMethod.GET)
	public String blockService(@PathVariable("id") int id, @ModelAttribute("service") Service service, ModelMap modelMap
			)
	{
		//SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");

		Service service2=serviceService.findById(id);
		
		try {
			service2.setStatus(false);
			
			serviceService.save(service2);
			//modelMap.put("accounts", accountService.findAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return "redirect:/admin/service/index";
	}
	@RequestMapping(value="active/{id}", method= RequestMethod.GET)
	public String activeService(@PathVariable("id") int id,@ModelAttribute("service") Service service, ModelMap modelMap
			)
	{
		//SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
Service service2=serviceService.findById(id);
		
		try {
			service2.setStatus(true);
			
			serviceService.save(service2);
			//modelMap.put("accounts", accountService.findAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return "redirect:/admin/service/index";
	}
	
	
	
	
	
	
	
	@RequestMapping(value="saveservicetype", method= RequestMethod.GET)
	public String addServiceType(ModelMap modelMap) {
		
		Servicetype servicetype = new Servicetype();
	//RoleAccount roleAccount=new RoleAccount();
		modelMap.put("servicetype", servicetype);
	
		return "admin/service_management/addservicetype";
	}	
	@RequestMapping(value="saveservicetype", method= RequestMethod.POST)
	public String addServiceType(@ModelAttribute("servicetype") Servicetype servicetype)
			
	{
		serviceTypeService.save(servicetype);
		return "redirect:index";
	}
	
	/*@RequestMapping(value="updateServiceType/{id}", method= RequestMethod.GET)
	public String editServiceType(@PathVariable("id") int id, ModelMap modelMap) {
		Service service = serviceTypeService.find;
	
	
		modelMap.put("service", service);
		
		return "admin/service_management/update";
	}
	
	*/
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
