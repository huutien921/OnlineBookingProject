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
import com.online.booking.helper.CheckHelper;
import com.online.booking.helper.CheckUrlHelper;
@Service("hotelService")
public class HotelService implements IHotelService {
	@Autowired
	private HotelRepository hotelRepository;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private ServiceHotelService serviceHotelService;
	@Autowired
	private CheckUrlHelper checkUrlHelper;
	@Autowired
	private CheckHelper checkHelper;

	@Override
	public List<Hotel> searchByAddressAddPriority(String address, Date checkIn, Date checkOut, int guests,
			int quanRoom) {

		List<Hotel> hotelResult = new ArrayList<Hotel>();
		List<Hotel> hotelResult2 = new ArrayList<Hotel>();
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
		for (Hotel hotel : hotelResult) {
			if (checkHelper.checkHotelSearch(hotel)) {
				
			
			for (Room room : hotel.getRooms()) {
				if (checkUrlHelper.checkUrlBookingDate(room.getId(), checkIn, checkOut, quanRoom)) {
					hotelResult2.add(hotel);
					break;
				}
			}}
		}
	
		
		// sap xep theo do uu tien dich vu

		Collections.sort(hotelResult2, new Comparator<Hotel>() {

			@Override
			public int compare(Hotel o1, Hotel o2) {
				// TODO Auto-generated method stub
				return serviceHotelService.getPriorityMax(new Date(), o1.getId(), true) > serviceHotelService
						.getPriorityMax(new Date(), o2.getId(), true) ? -1 : 1;
			}
		});
		return hotelResult2;
	}

	// search with price
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

	// search with star
	public List<Hotel> searchByAddressAddPriorityAddStar(String address, Date checkIn, Date checkOut, int guests,
			int rooms, double minprice, double maxprice, int amount1, int amount2, int amount3, int amount4,
			int amount5, int wifi, int parking, int spa, int gym, int carrental, int airporttransfer, int freebreakfast,
			int swimmingpool, int payathotel, int assemblyfacilites, int driveway, int doublebed, int queenbed,
			int kingbed, int singlebed) {
		List<Hotel> afterFilterStar = new ArrayList<>();
		List<Hotel> afterFilterFacilites = new ArrayList<>();

		// list hotel hien tai
		List<Hotel> current = searchByAddressAddPriority(address, checkIn, checkOut, guests, rooms);
		// list hotel sau khi loc gia
		List<Hotel> indexsObj = getIndexRemoveRrice(current, minprice, maxprice);
		if (indexsObj != null) {
			for (Hotel hotel : indexsObj) {
				current.remove(hotel);
			}
		}
		if (amount1 > 0 || amount2 > 0 || amount3 > 0 || amount4 > 0 || amount5 > 0) {
			// list hotel sau khi loc sao
			
				afterFilterStar = getIndexRemoveStar(current, amount1, amount2, amount3, amount4, amount5);
			
			
			if (wifi > 0 || parking > 0 || spa > 0 || gym > 0 || carrental > 0 || airporttransfer > 0
					|| freebreakfast > 0 || swimmingpool > 0 || payathotel > 0 || assemblyfacilites > 0
					|| driveway > 0) {
				afterFilterFacilites = getIndexRemoveFacilites(afterFilterStar, wifi, parking, spa, gym, carrental,
						airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway);
				if (doublebed > 0 || queenbed > 0 || kingbed > 0 || singlebed > 0) {
					List<Hotel> afterFilterBed = getIndexRemoveBed(afterFilterFacilites, doublebed, queenbed, kingbed,
							singlebed);
					return afterFilterBed;
				}

				return afterFilterFacilites;
			}

			return afterFilterStar;
		}
		return current;
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

	public List<Hotel> getIndexRemoveStar(List<Hotel> hotels, int amount1, int amount2, int amount3, int amount4,
			int amount5) {
		List<Hotel> indexStar = new ArrayList<>();
		// neu amount = 1 thi them hotel co 1 sao vao list moi
		if (amount1 == 1) {
			for (Hotel hotel : hotels) {
				if (hotel.getStarRating().getAmount() == 1) {
					indexStar.add(hotel);
				}
			}

		}
		if (amount2 == 2) {
			for (Hotel hotel : hotels) {
				if (hotel.getStarRating().getAmount() == 2) {
					indexStar.add(hotel);
				}
			}
		}
		if (amount3 == 3) {
			for (Hotel hotel : hotels) {
				if (hotel.getStarRating().getAmount() == 3) {
					indexStar.add(hotel);
				}
			}
		}
		if (amount4 == 4) {
			for (Hotel hotel : hotels) {
				if (hotel.getStarRating().getAmount() == 4) {
					indexStar.add(hotel);
				}
			}
		}
		if (amount5 == 5) {
			for (Hotel hotel : hotels) {
				if (hotel.getStarRating().getAmount() == 5) {
					indexStar.add(hotel);

				}
			}
		}
		if (amount5 != 5 && amount4 != 4 && amount3 != 3 && amount1 != 1 && amount2 != 2) {
			for (Hotel hotel : hotels) {
				indexStar.add(hotel);

			}
		}

		return indexStar;
	}

	public List<Hotel> getIndexRemoveBed(List<Hotel> hotels, int doublebed, int queenbed, int kingbed, int singlebed) {
		List<Hotel> indexStar = new ArrayList<>();
		if (doublebed > 0) {
			for (Hotel hotel : hotels) {
				for (Room room : hotel.getRooms()) {
					if (room.getBedType().getName().equalsIgnoreCase("double")) {
						indexStar.add(hotel);
					}
				}
			}
		}
		if (queenbed > 0) {
			for (Hotel hotel : hotels) {
				for (Room room : hotel.getRooms()) {
					if (room.getBedType().getName().equalsIgnoreCase("queen")) {
						indexStar.add(hotel);
					}
				}
			}
		}
		if (kingbed > 0) {
			for (Hotel hotel : hotels) {
				for (Room room : hotel.getRooms()) {
					if (room.getBedType().getName().equalsIgnoreCase("king")) {
						indexStar.add(hotel);
					}
				}
			}
		}
		if (singlebed > 0) {
			for (Hotel hotel : hotels) {
				for (Room room : hotel.getRooms()) {
					if (room.getBedType().getName().equalsIgnoreCase("single")) {
						indexStar.add(hotel);
					}
				}
			}
		}

		return indexStar;
	}

	public List<Hotel> getIndexRemoveFacilites(List<Hotel> hotels, int wifi, int parking, int spa, int gym,
			int carrental, int airporttransfer, int freebreakfast, int swimmingpool, int payathotel,
			int assemblyfacilites, int driveway) {
		List<Hotel> indexStar = new ArrayList<>();

		if (wifi > 0 /*|| parking > 0 || spa > 0 || gym > 0 || carrental > 0 || airporttransfer > 0|| freebreakfast > 0||swimmingpool > 0||payathotel > 0|| assemblyfacilites > 0 || driveway > 0*/) {
			for (Hotel hotel : hotels) {
				if (hotel.getWifi()) {
					indexStar.add(hotel);
				}
			}
		}
		if (parking > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getParking()) {
					indexStar.add(hotel);

				}
			}
		}
		if (spa > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getSpa()) {
					indexStar.add(hotel);

				}
			}
		}
		if (gym > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getGym()) {
					indexStar.add(hotel);

				}
			}
		}
		if (carrental > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getCarRental()) {
					indexStar.add(hotel);

				}
			}
		}
		if (airporttransfer > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getAirportTransfer()) {
					indexStar.add(hotel);

				}
			}
		}
		if (freebreakfast > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getFreeBreakfast()) {
					indexStar.add(hotel);

				}
			}
		}
		if (swimmingpool > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getSwimmingPool()) {
					indexStar.add(hotel);

				}
			}
		}
		if (payathotel > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getPayAtHotel()) {
					indexStar.add(hotel);

				}
			}
		}
		if (assemblyfacilites > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getAssemblyFacilites()) {
					indexStar.add(hotel);

				}
			}
		}
		if (driveway > 0) {
			for (Hotel hotel : hotels) {
				if (hotel.getDriveway()) {
					indexStar.add(hotel);

				}
			}
		}
		if (wifi == 0 && parking == 0 && spa == 0 && gym == 0 && carrental == 0 && airporttransfer == 0 && freebreakfast == 0
				&& swimmingpool == 0 && payathotel == 0 && assemblyfacilites == 0 && driveway == 0) {
			for (Hotel hotel : hotels) {

				indexStar.add(hotel);

			}
		}

		return indexStar;
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

	@Override
	public List<HotelEntity> searchByAddressAddPriorityAddStarJsonObject(String address, Date checkIn, Date checkOut,
			int guests, int room, double minprice, double maxprice, int amount1, int amount2, int amount3, int amount4,
			int amount5, int wifi, int parking, int spa, int gym, int carrental, int airporttransfer, int freebreakfast,
			int swimmingpool, int payathotel, int assemblyfacilites, int driveway, int doublebed, int queenbed,
			int kingbed, int singlebed) {

		return convertToHotelEntity(searchByAddressAddPriorityAddStar(address, checkIn, checkOut, guests, room,
				minprice, maxprice, amount1, amount2, amount3, amount4, amount5, wifi, parking, spa, gym, carrental,
				airporttransfer, freebreakfast, swimmingpool, payathotel, assemblyfacilites, driveway, doublebed,
				queenbed, kingbed, singlebed));
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
			int n, Hotel hotel1) {
		List<Hotel> hotelsSearchByAddressAddPriority = searchByAddressAddPriority(address, checkIn, checkOut, guests,
				room);
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

	@Override
	public Hotel save(Hotel hotel) {
		// TODO Auto-generated method stub
		return hotelRepository.save(hotel);
	}

}
