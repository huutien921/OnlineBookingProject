package com.online.booking.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Hotel;
import com.online.booking.entities.Room;
import com.online.booking.repositories.HotelRepository;

@Service("hotelService")
public class HotelService implements IHotelService {
	@Autowired
	private HotelRepository hotelRepository;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private ServiceHotelService serviceHotelService;

	@Override
	public List<Hotel> searchByAddressAddPriority(String address, Date checkIn, Date checkOut, int guests,
			int quanRoom) {

		List<Hotel> hotelResult = new ArrayList<Hotel>();
		for (Hotel hotel : hotelRepository.searchByAddress(address)) {
			for (Room room : hotel.getRooms()) {
				// truy van dieu kien khach san du phong cho khach hang
				if (room.isStatus() == true && room.getCapacity() >= guests && room.getAmountOfRoom() >= quanRoom) {
					// kiem tra da co trong danh sach dat hang chua,
					long soPhongConLai = room.getAmountOfRoom()
							- orderDetailService.sumQuantityByIdRoomAndDate(room.getId(), checkIn, checkOut);

					if (soPhongConLai >= quanRoom) {

						hotelResult.add(hotel);
						break;
					}

				}
			}
		}
		// sap xep theo do uu tien dich vu

		Collections.sort(hotelResult, new Comparator<Hotel>() {

			@Override
			public int compare(Hotel o1, Hotel o2) {
				// TODO Auto-generated method stub
				return serviceHotelService.getPriorityMax(new Date(), o1.getId(), true) > serviceHotelService
						.getPriorityMax(new Date(), o2.getId(), true) ? -1 : 1;
			}
		});
		return hotelResult;
	}

	@Override
	public List<Hotel> searchByAddressAddPriorityAddPrice(String address, Date checkIn, Date checkOut, int guests,
			int rooms, double minPrice, double maxPrice) {
		List<Hotel> hotels = searchByAddressAddPriority(address, checkIn, checkOut, guests, rooms);
		List<Hotel> indexsObj = getIndexRemoveRrice(hotels, minPrice, maxPrice);
		if (indexsObj != null) {
			for (Hotel hotel  : indexsObj) {
				hotels.remove(hotel);
			}
		}

		return hotels;
	}

	public List<Hotel> getIndexRemoveRrice(List<Hotel> hotels, double minPrice, double maxPrice) {

		List<Hotel> indexPrices = new ArrayList<>();
		for (Hotel hotel : hotels) {
			int quantity = 0;
			double tatolPrice = 0;
			double averagePrice;
			for (Room room : hotel.getRooms()) {

				if (room.isStatus() == true && room.getAmountOfRoom() > 0) {
					quantity = quantity + room.getAmountOfRoom();
					tatolPrice = tatolPrice + (room.getPrice() * room.getAmountOfRoom());
				}

			}
			if (hotel.getCopponHotel() != null && hotel.getCopponHotel().isStatus() == true) {
				averagePrice = (tatolPrice / quantity) * (100 - hotel.getCopponHotel().getSale()) / 100;
			} else {
				averagePrice = (tatolPrice / quantity);

			}

			if (minPrice > averagePrice || averagePrice > maxPrice) {
				indexPrices.add(hotel);
			}
		}

		return indexPrices;
	}

	@Override
	public Hotel findById(int id) {
	
		return hotelRepository.findById(id).get();
	}

}
