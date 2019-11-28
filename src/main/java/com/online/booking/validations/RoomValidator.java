package com.online.booking.validations;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.online.booking.entities.Hotel;
import com.online.booking.entities.Room;

@Component("roomValidator")
public class RoomValidator implements  Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return Room.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
	
		
	}

}
