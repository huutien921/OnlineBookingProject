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
	private ServiceService serviceservice;
	@Autowired
	private ServicetypeService serviceTypeService;
	
	
	private ServletContext servletContext;
	
	@RequestMapping(value = "index",method = RequestMethod.GET)
	public String index(ModelMap map) {
		map.put("services",serviceservice.findAll());
		
		return "admin.service.index";
	}
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String details(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("service", serviceservice.find(id));
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
		serviceservice.save(service);
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
		Service service = serviceservice.find(id);
	
		//modelMap.put("services", serviceTypeService.findAll());
		modelMap.put("service", service);
		
		return "admin/service_management/update";
	}
	
	@RequestMapping(value="update/{id}", method= RequestMethod.POST)
	public String update(@ModelAttribute("service") Service service,@ModelAttribute("servicetype") Servicetype servicetype,
			ModelMap modelMap,
			@PathVariable("id") int id)
	{
	
		Service service1 = serviceservice.find(id);
		
		
		try {
		
			service1.setCore(service1.getCore());
			service1.setDescription(service1.getDescription());
			service1.setIconSrc(service1.getIconSrc());
			service1.setName(service1.getName());
			service1.setPrice(service1.getPrice());
	
			service1.setPriority(Integer.valueOf(service1.getPriority()));
			service1.setServicetype(service1.getServicetype());
			
			serviceservice.save(service1);
			modelMap.put("service", serviceservice.findAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return "redirect:index";
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
	
	
	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
