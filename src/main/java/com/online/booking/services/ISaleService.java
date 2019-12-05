package com.online.booking.services;

import java.util.List;


import com.online.booking.entities.Sale;

public interface ISaleService {
	public Sale save(Sale sale);
	public Sale find(int id);
	public List<Sale> searchLimitSale(boolean status, int n);
	public List<Sale> searchSaleByStatus(boolean status);
}
