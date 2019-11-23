package com.online.booking.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.booking.entities.Evaluate;
import com.online.booking.entities.Hotel;
import com.online.booking.entities.HotelEntity;
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

	public List<Hotel> searchByAddressAddPriorityAddPrice(String address, Date checkIn, Date checkOut, int guests,
			int rooms, double minPrice, double maxPrice) {
		List<Hotel> hotels = searchByAddressAddPriority(address, checkIn, checkOut, guests, rooms);
		List<Hotel> indexsObj = getIndexRemoveRrice(hotels, minPrice, maxPrice);
		if (indexsObj != null) {
			for (Hotel hotel : indexsObj) {
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

	@Override
	public List<HotelEntity> searchByAddressAddPriorityAddPriceJsonObject(String address, Date checkIn, Date checkOut,
			int guests, int room, double minPrice, double maxPrice) {

		return convertToHotelEntity(
				searchByAddressAddPriorityAddPrice(address, checkIn, checkOut, guests, room, minPrice, maxPrice));
	}

	private List<HotelEntity> convertToHotelEntity(List<Hotel> hotels) {

		List<HotelEntity> hotelEntities = new ArrayList<>();
		for (Hotel hotel : hotels) {
			HotelEntity hotelEntity = new HotelEntity();
			hotelEntity.setId(hotel.getId());
			hotelEntity.setName(hotel.getName());
			hotelEntity.setStarRatingNum(hotel.getStarRating().getAmount());
			hotelEntity.setImage(hotel.getImage());
			hotelEntity.setWard(hotel.getWard());
			hotelEntity.setCity(hotel.getCity());
			hotelEntity.setPriceCoppon(getPriceHotelCoppon(hotel));
			hotelEntity.setPrice(getAvragePriceHotel(hotel));
			hotelEntity.setPrestige(checkPrestige(hotel));
			hotelEntity.setComment(getQuantityCommentHotel(hotel));
			hotelEntities.add(hotelEntity);
		}
		return hotelEntities;

	}

	private Double getAvragePriceHotel(Hotel hotel) {

		double priceTatol = 0;
		int roomQuantity = 0;
		for (Room roomPrice : hotel.getRooms()) {
			if (roomPrice.getAmountOfRoom() > 0 && roomPrice.isStatus() == true) {
				priceTatol = priceTatol + (roomPrice.getAmountOfRoom() * roomPrice.getPrice());
				roomQuantity = roomQuantity + roomPrice.getAmountOfRoom();
			}

		}
		return priceTatol / roomQuantity;

	}

	private Double getPriceHotelCoppon(Hotel hotel) {

		Double priceAverage = getAvragePriceHotel(hotel);
		if (hotel.getCopponHotel() != null && hotel.getCopponHotel().isStatus() == true) {
			return (priceAverage * (100 - hotel.getCopponHotel().getSale()) / 100);
		} else {
			return null;

		}

	}

	private int getQuantityCommentHotel(Hotel hotel) {

		return hotel.getEvaluates().size();
	}

	private boolean checkPrestige(Hotel hotel) {
		boolean result = false;
		int numStar = 0;
		for (Evaluate evaluate : hotel.getEvaluates()) {
			numStar = numStar + evaluate.getNumberOfStars();
		}
		if ((numStar / getQuantityCommentHotel(hotel)) > 3.5) {
			result = true;
		}

		return result;
	}

	@Override
	public List<Hotel> relatedHotelLimitAddPriority(String address, Date checkIn, Date checkOut, int guests, int room,
			int n , Hotel hotel1) {
		List<Hotel> hotelsSearchByAddressAddPriority = searchByAddressAddPriority(address, checkIn, checkOut, guests, room);
		hotelsSearchByAddressAddPriority.remove(hotel1);
		
		
		List<Hotel> hotels = new ArrayList<>();
				for (Hotel hotel : hotelsSearchByAddressAddPriority) {
					hotels.add(hotel);
					if (hotels.size() == 3) {
						break;
					}
				}
				
		
		return hotels;
	}

	@Override
	public List<Hotel> findByAccountId(int id) {
		
		return hotelRepository.findByAccountId(id);
	}

}
