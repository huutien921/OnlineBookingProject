<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">
	//http://192.168.1.112:9597/api/search/price?address=Da+lat&checkin=2019-11-22&checkout=2019-11-15&guests=2&rooms=2&minprice=80&maxprice=90
	jQuery(document)
			.ready(
					function() {

						$('#bt')
								.click(
										function() {

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();

											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/price',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice
														},
														dataType : 'json',
														contentType : 'aplication/json',
														success : function(
																result) {
															var s = '';
															for (var i = 0; i < result.length; i++) {
																
																s += '<div class="card">';
																s += ' <div class="card"> <h5 class="card-header">'
																		+ result[i].name
																		+ '  </h5>';
																s += '<div class="card-body">';
																s += '<div class="container">';
																s += '<div class="row">';
																s += '<div class="col-6 col-md-4">';
																s += '<img src="${pageContext.request.contextPath }/uploads/images/'+result[i].image+'" alt="Snow" style="width: 200px; height: 200px"></div>';
																s += '<div class="col-6 col-md-4">';
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'+result[i].ward+','+result[i].city +' </p>';
																s += '<p>';
																for(var j =0 ; j < result[i].starRating ; j++)
																{s += '<i class="fa fa-star" style="color: orange;"></i>';}
																s += '</p>';
																
																s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> (10 )</a>';
																s += '</div>';
																s += '<div class="col-6 col-md-4">';
																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';
															
																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;">%</span>Save 30%</p>';

																s += '<h5 style="color: #2E64FE">';
																s += '<span class="price per-price">';
																
																if(result[i].priceCoppon != null){
																	s +='';
																	s +='';
																	s += ' <span style="text-decoration: line-through;">$ '+ Math.round(result[i].price) +' <span> /night</span></span> <br> ';
																	s += Math.round(result[i].priceCoppon) + ' <span>/night</span></span>';
																	}else{
																		s += Math.round(result[i].price) + ' <span>/night</span></span>';
																		}
															
																
																s += '</span></h5>';
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address=${address }&checkin=${checkin }&checkout=${checkout }&guests=${guests }&room=${rooms}&id=${item.id}">Book Now</a>';
																s += '</div>';
																s += '</div></div></div></div>';

															}
															$('#resss').html(s);

															$('#res')
																	.text(
																			JSON
																					.stringify(result));

														}

													});

										});

					});
</script>

<br>

<div class="sidebar">
	<h3>Filter</h3>
	<div class="form-group">
		<input type="number" id="minprice" placeholder="min" value="0"><input
			type="number" id="maxprice" placeholder="max" value="100">
	</div>
	<div class="form-group">
		<input type="submit" id="bt" value="fillter">
	</div>

	<button class="dropdown-btn">
		Star rating <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><i
				class="fa fa-star" style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><i
				class="fa fa-star" style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><i
				class="fa fa-star" style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><i
				class="fa fa-star" style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><i
				class="fa fa-star" style="color: orange;"></i>
			</label>
		</div>

	</div>

	<button class="dropdown-btn">
		Facilities <i class="fa fa-caret-down"></i>
	</button>


	<button class="dropdown-btn">
		Facilities <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">

		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Wifi</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Parking</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Spa</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Gym</span>
			</label>
		</div>
	</div>

	<button class="dropdown-btn">
		Accommodation Type <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Apartments</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Homes</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Resorts</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>B&B</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Villas</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Luxury</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Guest
					Houser</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Hotels</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"><span>Homestays</span>
			</label>
		</div>
	</div>

	<button class="dropdown-btn">
		Dropdown <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">
		<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a><a
			href="#">Link 3</a><a href="#">Link 3</a>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-1"></div>
		<div class="col-8">
			<div data-spy="scroll" data-target="#myScrollspy" data-offset="10"
				style="height: 600px; overflow-y: scroll; padding: 5px; border: 1px solid #ccc;">
				<!-- hotels -->
				<div id="resss">
					<c:forEach var="item" items="${hotels }">
						<div class="card">
							<h5 class="card-header">${item.name}</h5>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-6 col-md-4">
											<img
												src="${pageContext.request.contextPath }/uploads/images/${item.image }"
												alt="Snow" style="width: 200px; height: 200px">
										</div>
										<div class="col-6 col-md-4">
											<p><i class="fa fa-map-marker" style="color: #B1293E"></i>${item.ward}, ${item.city }</p>
											<p>
												<c:forEach var="star" begin="1"
													end="${ item.starRating.amount }" step="1">
													<i class="fa fa-star" style="color: orange;"></i>

												</c:forEach>
											</p>

											
											<c:set var="numstar" value="${ 0 }"></c:set>
											<c:forEach var="evaluate" items="${item.evaluates }">

												<c:set var="numstar" value="${ numstar + evaluate.numberOfStars }"></c:set>

											</c:forEach>
											<i> <c:if test="${numstar/ item.evaluates.size() > 3.5 }">
													<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">

												</c:if>
											</i> <a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> (${ item.evaluates.size() })</a>
										</div>
										<div class="col-6 col-md-4">
											<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>
											<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;">%</span>Save 30%</p>
											
											<h5 style="color: #2E64FE">
												<span class="price per-price"> <c:set var="quantity"
														value="${0 }">

													</c:set> <c:set var="tatolPrice" value="${0 }">

													</c:set> <c:forEach var="room" items="${ item.rooms }">
														<c:if
															test="${ room.status == true && room.amountOfRoom > 0 }">

															<c:set var="quantity"
																value="${ quantity + room.amountOfRoom }">
															</c:set>
															<c:set var="tatolPrice"
																value="${tatolPrice + (room.price * room.amountOfRoom ) }">
															</c:set>
														</c:if>
													</c:forEach>
												</span>
												<c:if
													test="${item.copponHotel != null and item.copponHotel.status == true }">
													<span style="text-decoration: line-through;">$ <fmt:formatNumber
															type="number" value="${tatolPrice / quantity }"
															pattern="###,###" /><span> /night</span></span>
													<br>
												</c:if>
												$
												<fmt:formatNumber type="number"
													value="${(tatolPrice / quantity) * (100 -item.copponHotel.sale )/100 }"
													pattern="###,###" />
												<span>/night</span>
											</h5>

											<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address=${address }&checkin=${checkin }&checkout=${checkout }&guests=${guests }&room=${rooms}&id=${item.id}">Book Now</a>


										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
					</c:forEach>
				</div>
				<!-- /hotels -->
				<c:if test="${hotels.isEmpty()}">
					<h3>khong tim thays khach san</h3>
				</c:if>


			</div>




		</div>
		<div class="col-3">
			<!-- form search -->


			<div class="container">
				<form>

					<div class="form-row align-items-center">
						<div class="col-auto">
							<label for="state">City name <i class="fa fa-map-marker"></i></label>
							<input type="text" placeholder="City" id="address"
								value="${address }">
						</div>
						<div class="col-auto">
							<label>Guest <i class="fa fa-user"></i></label> <input
								class="inputRoom" type="number" id="guests" placeholder="0"
								value="${guests }">
						</div>
						<div class="col-auto">
							<label>Room <i class="fa fa-home"></i></label> <input
								class="inputRoom" type="number" id="rooms" placeholder="0"
								value="${rooms }">
						</div>

						<div class="col-auto">
							<label>Check in <i class="fa fa-sign-in"></i></label> <input
								type="date" value="${checkin }" id="checkin_date">
						</div>
						<div class="col-auto">
							<label>Check out <i class="fa fa-sign-out"></i></label> <input
								type="date" value="${checkout}" id="checkout_date">
						</div>


						<div class="col-auto">
							<input type="button" id="bt" value="Re-Search" class="btn-s">
						</div>

					</div>


				</form>
			</div>
			<!-- /form search -->
		</div>
	</div>
</div>

