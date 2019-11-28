package com.online.booking.validations;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.online.booking.entities.Hotel;

@Component("hotelValidator")
public class HotelValidator implements  Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return Hotel.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
	
		
	}

}
