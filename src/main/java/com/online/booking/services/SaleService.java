package com.online.booking.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Sale;
import com.online.booking.repositories.SaleRepository;

@Service("saleService")
public class SaleService implements ISaleService {
	@Autowired
	private SaleRepository saleRepository;

	@Override
	public List<Sale> searchSaleByStatus(boolean status) {
		return saleRepository.searchSaleByStatus(status);
	}

	@Override
	public Sale find(int id) {
	return saleRepository.findById(id).get();
	}

	@Override
	public List<Sale> searchLimitSale(boolean status, int n) {
		return saleRepository.searchLimitSale(status, n);
	}

	@Override
	public Sale save(Sale sale) {
		return saleRepository.save(sale);
	}
	
	
	
	
	
}
