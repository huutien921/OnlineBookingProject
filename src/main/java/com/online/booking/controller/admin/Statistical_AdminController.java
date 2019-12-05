/*package com.online.booking.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/statistical")
public class Statistical_AdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "admin.statistical.index";
	}
	
}
*/

package com.online.booking.controller.admin;






import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.online.booking.entities.Account;
import com.online.booking.entities.Blog;
import com.online.booking.entities.UserGroup;
import com.online.booking.repositories.BlogRepository;
import com.online.booking.services.AccountService;



@Controller
@RequestMapping("/admin/statistical")
public class Statistical_AdminController {
	@Autowired
	private AccountService accountServices;
	@Autowired
	private BlogRepository blogRepository;
	
	
	
	
	@RequestMapping(value="index")
	public String index(/*ModelMap map,Model model*/) {
			
		
	//Calendar calenda=Calendar.getInstance();
	//calenda.add(Calendar.YEAR, -1);
	//Date date=new Date();
	
	
	//for(int i=1;i<12;i++) {
		//map.put("statistical", accountServices.statisticalUserses(3));
	//}

		
	//	model.addAttribute("pass", 50);
		//model.addAttribute("fail", 50);
		//model.addAttribute("statistical",accountServices.statisticalUser(4, 11, 2019));
		//accountServices.statisticalUser(1, 11, 2015);
		//System.out.println("----------count: "+accountServices.statisticalUser(4,11, 2019));
		return "admin.statistical.index";
	}
	

	@RequestMapping(value="ajax/linechartdata")
	@ResponseBody
	public String getDataFromDB(){
		List<UserGroup> dataList = accountServices.statisticalUserses(4);
		JsonArray jsonArrayCategory = new JsonArray();
		JsonArray jsonArraySeries = new JsonArray();
		JsonObject jsonObject = new JsonObject();
		dataList.forEach(data->{
			jsonArrayCategory.add(data.getYear());
			jsonArraySeries.add(data.getSumQuantity());
		});
		jsonObject.add("categories", jsonArrayCategory);
		jsonObject.add("series", jsonArraySeries);
		return jsonObject.toString();
	}
	
	
	
	
	
	
	
	/*@GetMapping("/displayBarGraph")
	public String barGraph(Model model) {
		Map<String, Integer> surveyMap = new LinkedHashMap<>();
		surveyMap.put("Java", 40);
		surveyMap.put("Dev oops", 25);
		surveyMap.put("Python", 20);
		surveyMap.put(".Net", 15);
		model.addAttribute("surveyMap", surveyMap);
		return "barGraph";
	}
	
	
	@GetMapping("/displayPieChart")
	public String pieChart(Model model) {
		model.addAttribute("pass", 50);
		model.addAttribute("fail", 50);
		return "pieChart";
	}
	*/
}
