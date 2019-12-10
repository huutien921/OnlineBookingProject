package com.online.booking.controller.employee;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.online.booking.entities.Account;
import com.online.booking.entities.Blog;
import com.online.booking.entities.Sale;
import com.online.booking.helper.UploadFileHelper;
import com.online.booking.repositories.SaleRepository;
import com.online.booking.services.AccountService;
import com.online.booking.services.SaleService;

@Controller
@RequestMapping("/employee/promotion")
public class Promotion_EmployeeController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private SaleService saleService;
	@Autowired
	private UploadFileHelper uploadFileHelper;

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {

		// modelMap.put("newsSale", saleRepository.searchSaleByStatus(true));
		// modelMap.put("unActiveSale", saleRepository.searchSaleByStatus(false));

		modelMap.put("newsSale", saleService.searchSaleByStatus(true));
		modelMap.put("unActiveSale", saleService.searchSaleByStatus(false));

		return "employee.promotion.index";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		Sale saleModel = new Sale();
		modelMap.put("saleModel", saleModel);
		modelMap.put("title", "Add new promotion");
		return "employee.promotion.add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Authentication authentication, @ModelAttribute("saleModel") Sale sale, ModelMap modelMap, HttpServletRequest request,
			RedirectAttributes redirectAttributes, @RequestParam("file") MultipartFile file) {

		System.out.println("blog name" + sale.getCode());
		System.out.println("content" + sale.getSales());
		System.out.println("Status" + sale.isStatus());
		System.out.println("Status" + sale.getStartday());
		System.out.println("Status" + sale.getEndday());
		String fileName = uploadFileHelper.saveFile(file);
		System.out.println("file name:" + fileName);

		String username = authentication.getName();
		
		sale.setAccount(new Account(accountService.findByUsernameAndStatus(username, true).getId()));
		sale.setSrc(fileName);
		saleService.save(sale);

		redirectAttributes.addFlashAttribute("msg", "Success : #" + sale.getId());
		return "redirect:index";
	}

	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
	
		Sale saleModel = saleService.find(id);

		modelMap.put("saleModel", saleModel);
		modelMap.put("title", "edit sale id: #");

		return "employee.promotion.edit";
	}

	@RequestMapping(value = "update/{id}", method = RequestMethod.POST)
	public String update(@RequestParam("file") MultipartFile file, HttpServletRequest request,
			@ModelAttribute("saleModel") Sale sale, @PathVariable("id") int id, ModelMap modelMap,
			RedirectAttributes redirectAttributes) {

		Sale salee = saleService.find(id);
		salee.setCode(sale.getCode());
		salee.setDescription(sale.getDescription());

		salee.setStartday(sale.getStartday());
		salee.setEndday(sale.getEndday());

		if (!file.isEmpty()) {
			String fileName = uploadFileHelper.saveFile(file);
			salee.setSrc(fileName);
		}

		salee.setStatus(sale.isStatus());
		saleService.save(salee);
		redirectAttributes.addFlashAttribute("msg", "Edit success: #" + sale.getId());

		return "redirect:/employee/promotion/index";
	}
}
