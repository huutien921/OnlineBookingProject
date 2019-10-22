package com.online.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Home;
import com.online.booking.repositories.HomeRepositories;
@Service("homeService")
public class HomeService implements IHomeService {
@Autowired
private HomeRepositories homerepository;
	@Override
	public Home Hello() {
		// TODO Auto-generated method stub
		return homerepository.Hello();
	}

}
