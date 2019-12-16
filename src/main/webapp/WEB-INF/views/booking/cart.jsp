<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>


<br>

<form method="Post" action="${pageContext.request.contextPath }/booking">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="card">
					<h5 class="card-header">Booking detail</h5>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-2">
									<img
										src="${pageContext.request.contextPath }/uploads/images/${room.hotel.image}"
										alt="Snow" style="width: 40px; height: 40px">
								</div>
								<div class="col-10">

									<p>
										<small style="font-weight: bold;">${room.hotel.name} </small>
										<input type="hidden" value="${room.id }" name="idroom">
									</p>

								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-6 col-md-6">
									<c:if test="${room.hotel.freeCancellation }">
										<p style="color: green;">
											<small>Free cancellation</small>
										<p>
									</c:if>


								</div>
								<div class="col-6 col-md-6">
									<c:if test="${room.hotel.freeBreakfast }">
										<p style="color: green;">
											<small>Free breakfast</small>
										</p>
									</c:if>
								</div>
							</div>


							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Duration of Stay</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${days } night</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Check-in</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${checkin} | ${hIn }</small> <input type="hidden"
										value="${checkin }" name="checkin">
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Check-out</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${checkout} | ${hOut }</small> <input type="hidden"
										value="${checkout }" name="checkout">
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Room name</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.name }</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Room type</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.roomType.name }</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Bed type</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.bedType.name }</small>
								</div>
							</div>


							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Price</small>
								</div>
								<div class="col-6 col-md-6">
									<small>$ <fmt:formatNumber type="number"
											value="${room.price }" pattern="###,###" /> /night / room
									</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Duration of Stay</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">${days } NIGHT</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Quantity room</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">${roomquan  }</small> <input
										type="hidden" name="roomquan" value="${roomquan }">
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold; color: green;">Hotel
										discount</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">-
										${room.hotel.copponHotel.sale } %</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold; color: green;">Room
										discount</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">- ${room.copponRoom.sale}
										%</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold; color: green;">Gift
										code</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">-<span id="resultSale">
											0</span> %
									</small>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<h5 style="font-weight: bold; color: #2E64FE;">Final price</h5>

								</div>
								<div class="col-6 col-md-6">
									<h4 style="color: #2E64FE;">
										$<span id="finalfrice"> ${(room.price * days * roomquan)  * (100 - (room.copponRoom.sale + room.hotel.copponHotel.sale) )/100 }</span>
									</h4>
									<input type="hidden" id="finalTemp"
										value=" ${(room.price * days * roomquan)  * (100 - (room.copponRoom.sale + room.hotel.copponHotel.sale) )/100 }" />
									<p>(2 night)</p>
								</div>
							</div>

							<div class="input-group mb-3">
								<input type="text" class="form-control" id="valuecode"
									name="giftcode" placeholder="Gift code">
								<div class="input-group-append">
									<button class="btn btn-success" id="checkcode" type="button">Update</button>

								</div>
							</div>
							<span style="color: red" id="resFail"></span>

						</div>



					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<!-- hotels -->
				<div class="card">
					<h5 class="card-header">Your information</h5>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-10">
									<label for="inputPassword5">Contact's name <span
										style="color: red">*</span></label> <input type="text"
										value="${user.fullname }" id="nameuser" class="form-control"
										name="namestaying" aria-describedby="nameHelpBlock"> <input
										type="hidden" value="${user.id }" name="acid"> <small
										id="nameHelpBlock" class="form-text text-muted"> Name
										of the customer staying </small>
								</div>
								<div class="col-10">
									<label for="inputPassword5">Email <span
										style="color: red">*</span></label> <input type="email"
										value="${user.email }" name="email" id="inputEmail"
										class="form-control" aria-describedby="emailHelpBlock">
									<small id="inputEmail" class="form-text text-muted">
										e.g.: email@example.com </small>
								</div>

								<div class="col-10">

									<div class="form-group">
										<label for="comment">Add special requests:</label>
										<textarea class="form-control" rows="5" id="comment"
											name="note"
											placeholder="Have a special request? Ask, and the property will do its best to meet your wish. (Note that special request are not guaranteed and may incur charges)"></textarea>
									</div>

								</div>

							</div>
							<c:if test="${room.hotel.payAtHotel }">
								<div class="modal fade ht" tabindex="-1" role="dialog"
									aria-labelledby="myLargeModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">

										<div class="modal-content">
											<br>
											<h5 style="text-align: center;">${room.hotel.name}</h5>
											<hr>
											<div class="container">
												<div class="row">
													<div class="col-md-6">
													<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Contact's name </small>
															</div>
															<div class="col-6 col-md-6">
																<small id="fullname3">${user.fullname}</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Email </small>
															</div>
															<div class="col-6 col-md-6">
																<small id="email3">${user.email}</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Special requests </small>
															</div>
															
														</div>
														<div class="row">
															<div class=" col-md-12">
																<small id="note3"></small>
															</div>
															
														</div>
													</div>
													<div class="col-md-6">
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Duration of
																	Stay</small>
															</div>
															<div class="col-6 col-md-6">
																<small>${days } night</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Check-in</small>
															</div>
															<div class="col-6 col-md-6">
																<small>${checkin} | ${hIn }</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Check-out</small>
															</div>
															<div class="col-6 col-md-6">
																<small>${checkout} | ${hOut }</small> 
															</div>
														</div>

														<hr>
														<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Room name</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.name }</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Room type</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.roomType.name }</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Bed type</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.bedType.name }</small>
								</div>
							</div>


							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Price</small>
								</div>
								<div class="col-6 col-md-6">
									<small>$ <fmt:formatNumber type="number"
											value="${room.price }" pattern="###,###" /> /night / room
									</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Duration of Stay</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">${days } NIGHT</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Quantity room</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">${roomquan  }</small> <input
										type="hidden" name="roomquan" value="${roomquan }">
								</div>
							</div>
							
						
						
						
							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<h5 style="font-weight: bold; color: #2E64FE;">Final price</h5>

								</div>
								<div class="col-6 col-md-6">
									<h4 style="color: #2E64FE;">
										$<span id="finalfrice2"> ${(room.price * days * roomquan)  * (100 - (room.copponRoom.sale + room.hotel.copponHotel.sale) )/100 }</span>
									</h4>
									
									<p>(2 night)</p>
								</div>
							</div>
														<input type="submit" value="Booking" 
											 class="btn-s"> <br> <br>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-6">
										<p>Support payment at the hotel !</p>
									</div>

									<div class="col-4">
										<input type="button" value="Booking" data-toggle="modal"
											data-target=".ht" class="btn-s"> <input type="hidden"
											value="payathotel" name="paytype">
									</div>
								</div>

							</c:if>
</form>


<form id="my_form" method="post"
	action="${pageContext.request.contextPath }user/pay">
	<div class="row">
		<div class="col-6"> 	<div class="modal fade payment" tabindex="-1" role="dialog"
									aria-labelledby="myLargeModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">

										<div class="modal-content">
											<br>
											<h5 style="text-align: center;">${room.hotel.name}</h5>
											<hr>
											<div class="container">
												<div class="row">
													<div class="col-md-6">
													<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Contact's name </small>
															</div>
															<div class="col-6 col-md-6">
																<small id="fullname3">${user.fullname}</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Email </small>
															</div>
															<div class="col-6 col-md-6">
																<small id="email3">${user.email}</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Special requests </small>
															</div>
															
														</div>
														<div class="row">
															<div class=" col-md-12">
																<small id="note3"></small>
															</div>
															
														</div>
													</div>
													<div class="col-md-6">
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Duration of
																	Stay</small>
															</div>
															<div class="col-6 col-md-6">
																<small>${days } night</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Check-in</small>
															</div>
															<div class="col-6 col-md-6">
																<small>${checkin} | ${hIn }</small>
															</div>
														</div>
														<div class="row">
															<div class="col-6 col-md-6">
																<small style="font-weight: bold;">Check-out</small>
															</div>
															<div class="col-6 col-md-6">
																<small>${checkout} | ${hOut }</small> 
															</div>
														</div>

														<hr>
														<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Room name</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.name }</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Room type</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.roomType.name }</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Bed type</small>
								</div>
								<div class="col-6 col-md-6">
									<small>${room.bedType.name }</small>
								</div>
							</div>


							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Price</small>
								</div>
								<div class="col-6 col-md-6">
									<small>$ <fmt:formatNumber type="number"
											value="${room.price }" pattern="###,###" /> /night / room
									</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Duration of Stay</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">${days } NIGHT</small>
								</div>
							</div>
							<div class="row">
								<div class="col-6 col-md-6">
									<small style="font-weight: bold;">Quantity room</small>
								</div>
								<div class="col-6 col-md-6">
									<small style="color: green;">${roomquan  }</small> <input
										type="hidden" name="roomquan" value="${roomquan }">
								</div>
							</div>
							
						
						
						
							<hr>
							<div class="row">
								<div class="col-6 col-md-6">
									<h5 style="font-weight: bold; color: #2E64FE;">Final price</h5>

								</div>
								<div class="col-6 col-md-6">
									<h4 style="color: #2E64FE;">
										$<span id="finalfrice2"> ${(room.price * days * roomquan)  * (100 - (room.copponRoom.sale + room.hotel.copponHotel.sale) )/100 }</span>
									</h4>
									
									<p>(2 night)</p>
								</div>
							</div>
													 <img
				src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/PP_logo_h_200x51.png"
				alt="Check out with PayPal"
				onclick="document.getElementById('my_form').submit(); return false;" /> <br> <br>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div></div>

		<div class="col-4">
			<input type="hidden" value="${room.id }" name="idroom"> <input
				type="hidden" value="${checkin }" name="checkin"> <input
				type="hidden" value="${checkout }" name="checkout"> <input
				type="hidden" name="roomquan" value="${roomquan }"> <input
				type="hidden" id="valuecode2" name="giftcode"> <input
				type="hidden" value="${user.id }" name="acid"> <input
				type="hidden" value="${user.fullname }" id="nameuser2"
				name="namestaying"> <input type="hidden"
				value="${user.email }" name="email" id="inputEmail2"> <input
				type="hidden" value="" name="note" id="note2"> <input
				type="hidden" id="pay"
				value="${(room.price * days * roomquan)  * (100 - (room.copponRoom.sale + room.hotel.copponHotel.sale) )/100 }"
				name="price" />
				
					
				 <img
				src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/PP_logo_h_200x51.png"
				alt="Check out with PayPal"
				data-toggle="modal" data-target=".payment" />
		</div>
	</div>

</form>
</div>
</div>
</div>
<br>

<!-- /hotels -->
</div>

</div>
</div>



<script type="text/javascript">
	//http://192.168.1.112:9597/api/search/price?address=Da+lat&checkin=2019-11-22&checkout=2019-11-15&guests=2&rooms=2&minprice=80&maxprice=90
	jQuery(document)
			.ready(
					function() {
						$('#nameuser').change(

						function() {

							$('#nameuser2').val($('#nameuser').val());
							$('#fullname3').html($('#nameuser').val());

						});
						$('#inputEmail').change(

						function() {

							$('#inputEmail2').val($('#inputEmail').val());
							$('#email3').html($('#inputEmail').val());

						});
						$('#comment').change(

						function() {

							$('#note2').val($('#comment').val());
							$('#note3').html($('#comment').val());

						});

						$('#checkcode')
								.click(

										function() {

											var valuecode = $('#valuecode')
													.val();

											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/booking/ajax/checksale',
														data : {
															valuecode : valuecode,

														},
														dataType : 'json',
														contentType : 'aplication/json',
														success : function(
																result) {

															if (result.id == null) {
																$('#resFail')
																		.text(
																				'No discount code found');
															} else {
																alert('Congratulations !  - '
																		+ result.sales
																		+ '%');

																$('#resultSale')
																		.text(
																				result.sales);
																var priceTemp = $(
																		'#finalTemp')
																		.val();

																$('#finalfrice')
																		.text(
																				priceTemp
																						* (100 - result.sales)
																						/ 100);
																$('#finalfrice2')
																.text(
																		priceTemp
																				* (100 - result.sales)
																				/ 100);
																$('#pay')
																		.val(
																				priceTemp
																						* (100 - result.sales)
																						/ 100);
																$('#valuecode2')
																		.val(
																				$(
																						'#valuecode')
																						.val());

															}

														}

													});

										});

					});
</script>
