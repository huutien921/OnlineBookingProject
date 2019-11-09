package com.online.booking.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.online.booking.services.OrderDetailService;

@Controller
@RequestMapping(value = {"booking"})
public class BookingController {
	@Autowired
	private OrderDetailService orderDetailService;
}
