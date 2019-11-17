package com.online.booking.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;

import java.util.List;

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
				return serviceHotelService.getPriorityMax(new Date()
						, o1.getId(), true) > serviceHotelService
						.getPriorityMax(new Date(), o2.getId(), true) ? -1 : 1;
			}
		});
		return hotelResult;
	}

	@Override
	public List<Hotel> searchHotelByStatusFalseAndIdAccountEmployeeNull() {
		return hotelRepository.searchHotelByStatusFalseAndIdAccountEmployeeNull();
	}

	@Override
	public Hotel FindHotelByStatusFalseAndIdAccountEmployeeNullById(int id) {
		return hotelRepository.FindHotelByStatusFalseAndIdAccountEmployeeNullById(id);
	}

	@Override
	public Iterable<Hotel> searchHotelByStatusAndIdAccountEmployee(boolean status) {
		return hotelRepository.searchHotelByStatusAndIdAccountEmployee(status);
	}

	@Override
	public Hotel find(int id) {
		return hotelRepository.findById(id).get();
	}

	@Override
	public Iterable<Hotel> filterHotelForEmployee(boolean status, String name, int starRating, String country,
			String city, String provincial) {
		return hotelRepository.filterHotelForEmployee(status, name, starRating, country, city, provincial);
	}

}
