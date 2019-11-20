package com.online.booking.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.online.booking.entities.Evaluate;
import com.online.booking.services.EvaluateService;

@Controller
@RequestMapping("feedback")
public class EvaluateController {
	@Autowired
	private EvaluateService evaluateService;
	@RequestMapping(value = "ajax/findbyid", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public List<Evaluate> findById(@RequestParam("id") int id){
		
		return evaluateService.findByHotel(id);
		
	}
}
