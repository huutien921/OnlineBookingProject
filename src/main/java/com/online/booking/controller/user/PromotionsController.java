package com.online.booking.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.booking.entities.Sale;
import com.online.booking.services.SaleService;

@Controller
@RequestMapping("promotions")
public class PromotionsController {
	@Autowired
	private SaleService saleService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {
		modelMap.put("title", "Promotions");
		
		List<Sale> sale = (List<Sale>) saleService.searchSaleByStatus(true);
		PagedListHolder pagedListHolder = new PagedListHolder(sale);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(6);
		modelMap.put("pagedListHolder", pagedListHolder);
		
		return "promotions.index";
	}
	
	@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("title", "Promotions");
		modelMap.put("detail", saleService.find(id));
		modelMap.put("newPromotions", saleService.searchLimitSale(true, 3));
		
		return "promotions.detail";
	}
}
