<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">
	jQuery(document)
			.ready(
					function() {

					/*	$('#bt')
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																//s += '<h5 style="color: #2E64FE">';
																//s += '<span class="price per-price">';

																//if(result[i].priceCoppon != null){
																//	s +='';
																//	s +='';
																//	s += ' <span style="text-decoration: line-through;">$ '+ Math.round(result[i].price) +' <span> /night</span></span> <br> ';
																//	s += Math.round(result[i].priceCoppon) + ' <span>/night</span></span>';
																//	}else{
																//		s += Math.round(result[i].price) + ' <span>/night</span></span>';
																//		}

																//s += '</span></h5>';
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

										});*/
						//search price----------------------------------------------------------------------------------------------------------------------------------------

						$('select')
								.change(
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
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';
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

						//end search price---------------------------------------------------------------------------------------------------------------------------------------------------------

						//--search facillities-------------------------------------------------------------------------------------------------------------------------------
					
					// check 4----------------------------------------------------------------------------------------------------------------------------------------
						$('#check4')
								.click(
										function() {

											if (this.checked) {
												$("#amount4").val("4");
											} else {
												$("#amount4").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star4',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star4',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end check 5---------------------------------------------------------------------------------------------------------------------------------------------------------
						// check 5----------------------------------------------------------------------------------------------------------------------------------------
						$('#check5')
								.click(
										function() {

											if (this.checked) {
												$("#amount5").val("5");
											} else {
												$("#amount5").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star5',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star5',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end check 4---------------------------------------------------------------------------------------------------------------------------------------------------------
						// check 3----------------------------------------------------------------------------------------------------------------------------------------
						$('#check3')
								.click(
										function() {

											if (this.checked) {
												$("#amount3").val("3");
											} else {
												$("#amount3").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star3',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star3',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end check 3---------------------------------------------------------------------------------------------------------------------------------------------------------
						// check 2----------------------------------------------------------------------------------------------------------------------------------------
						$('#check2')
								.click(
										function() {

											if (this.checked) {
												$("#amount2").val("2");
											} else {
												$("#amount2").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star2',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star2',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end check 2---------------------------------------------------------------------------------------------------------------------------------------------------------
						// check 1----------------------------------------------------------------------------------------------------------------------------------------
						$('#check1')
								.click(
										function() {

											if (this.checked) {
												$("#amount1").val("1");
											} else {
												$("#amount1").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star1',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star1',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end check 1---------------------------------------------------------------------------------------------------------------------------------------------------------
						// wifi----------------------------------------------------------------------------------------------------------------------------------------
						$('#wifiCheck')
								.click(
										function() {

											if (this.checked) {
												$("#wifi").val("1");
											} else {
												$("#wifi").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end wifi---------------------------------------------------------------------------------------------------------------------------------------------------------
						// parking----------------------------------------------------------------------------------------------------------------------------------------
						$('#parkingCheck')
								.click(
										function() {

											if (this.checked) {
												$("#parking").val("1");
											} else {
												$("#parking").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end wifi---------------------------------------------------------------------------------------------------------------------------------------------------------

						// spa----------------------------------------------------------------------------------------------------------------------------------------
						$('#spaCheck')
								.click(
										function() {

											if (this.checked) {
												$("#spa").val("1");
											} else {
												$("#spa").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end spa---------------------------------------------------------------------------------------------------------------------------------------------------------

					
						// carrental----------------------------------------------------------------------------------------------------------------------------------------
						$('#carrentalCheck')
								.click(
										function() {

											if (this.checked) {
												$("#carrental").val("1");
											} else {
												$("#carrental").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

														
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end carrental---------------------------------------------------------------------------------------------------------------------------------------------------------

						// airporttransfer----------------------------------------------------------------------------------------------------------------------------------------
						$('#airporttransferCheck')
								.click(
										function() {

											if (this.checked) {
												$("#airporttransfer").val("1");
											} else {
												$("#airporttransfer").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end airporttransfer---------------------------------------------------------------------------------------------------------------------------------------------------------

						// freebreakfast----------------------------------------------------------------------------------------------------------------------------------------
						$('#freebreakfastCheck')
								.click(
										function() {

											if (this.checked) {
												$("#freebreakfast").val("1");
											} else {
												$("#freebreakfast").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end freebreakfast---------------------------------------------------------------------------------------------------------------------------------------------------------

						// swimmingpool----------------------------------------------------------------------------------------------------------------------------------------
						$('#swimmingpool')
								.click(
										function() {

											if (this.checked) {
												$("#swimmingpool").val("1");
											} else {
												$("#swimmingpool").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end swimmingpool---------------------------------------------------------------------------------------------------------------------------------------------------------

						// payathotel----------------------------------------------------------------------------------------------------------------------------------------
						$('#payathotelCheck')
								.click(
										function() {

											if (this.checked) {
												$("#payathotel").val("1");
											} else {
												$("#payathotel").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																	
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end payathotel---------------------------------------------------------------------------------------------------------------------------------------------------------
// doublecheck----------------------------------------------------------------------------------------------------------------------------------------
						$('#doublecheck')
								.click(
										function() {

											if (this.checked) {
												$("#doublebed").val("1");
											} else {
												$("#doublebed").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';	s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end doublecheck---------------------------------------------------------------------------------------------------------------------------------------------------------

						// queencheck----------------------------------------------------------------------------------------------------------------------------------------
						$('#queencheck')
								.click(
										function() {

											if (this.checked) {
												$("#queenbed").val("1");
											} else {
												$("#queenbed").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end queencheck---------------------------------------------------------------------------------------------------------------------------------------------------------

						// kingcheck----------------------------------------------------------------------------------------------------------------------------------------
						$('#kingcheck')
								.click(
										function() {

											if (this.checked) {
												$("#kingbed").val("1");
											} else {
												$("#kingbed").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																	
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

															
																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end kingcheck---------------------------------------------------------------------------------------------------------------------------------------------------------

						// singlecheck----------------------------------------------------------------------------------------------------------------------------------------
						$('#singlecheck')
								.click(
										function() {

											if (this.checked) {
												$("#singlebed").val("1");
											} else {
												$("#singlebed").val("0");

												var address = $('#address')
														.val();
												var checkin = $('#checkin_date')
														.val();
												var checkout = $(
														'#checkout_date').val();
												var guests = $('#guests').val();
												var rooms = $('#rooms').val();
												var minprice = $('#minprice')
														.val();
												var maxprice = $('#maxprice')
														.val();
												var amount5 = $('#amount5')
														.val();
												var amount4 = $('#amount4')
														.val();
												var amount3 = $('#amount3')
														.val();
												var amount2 = $('#amount2')
														.val();
												var amount1 = $('#amount1')
														.val();
												var wifi = $('#wifi').val();
												var parking = $('#parking')
														.val();
												var spa = $('#spa').val();
												var gym = $('#gym').val();
												var carrental = $('#carrental')
														.val();
												var airporttransfer = $(
														'#airporttransfer')
														.val();
												var freebreakfast = $(
														'#freebreakfast').val();
												var swimmingpool = $(
														'#swimmingpool').val();
												var payathotel = $(
														'#payathotel').val();
												var assemblyfacilites = $(
														'#assemblyfacilites')
														.val();
												var driveway = $('#driveway')
														.val();
												var doublebed = $('#doublebed')
														.val();
												var queenbed = $('#queenbed')
														.val();
												var kingbed = $('#kingbed')
														.val();
												var singlebed = $('#singlebed')
														.val();
												$
														.ajax({
															type : 'GET',

															url : '${pageContext.request.contextPath }/search/ajax/star',
															data : {
																address : address,
																checkin : checkin,
																checkout : checkout,
																guests : guests,
																rooms : rooms,
																minprice : minprice,
																maxprice : maxprice,
																amount5 : amount5,
																amount4 : amount4,
																amount3 : amount3,
																amount2 : amount2,
																amount1 : amount1,
																wifi : wifi,
																parking : parking,
																spa : spa,
																gym : gym,
																carrental : carrental,
																airporttransfer : airporttransfer,
																freebreakfast : freebreakfast,
																swimmingpool : swimmingpool,
																payathotel : payathotel,
																assemblyfacilites : assemblyfacilites,
																driveway : driveway,
																doublebed : doublebed,
																queenbed : queenbed,
																kingbed : kingbed,
																singlebed : singlebed
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
																	s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																			+ result[i].ward
																			+ ','
																			+ result[i].city
																			+ ' </p>';
																	s += '<p>';
																	for (var j = 0; j < result[i].starRatingNum; j++) {
																		s += '<i class="fa fa-star" style="color: orange;"></i>';
																	}
																	s += '</p>';
																	if (result[i].prestige == true) {
																		s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																	}

																	s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																			+ result[i].comment
																			+ ' )</a><hr>';
																	s += '<h3 style="color: #2E64FE">';
																	s += '<span class="price per-price">';

																	if (result[i].priceCoppon != null) {
																		s += '';
																		s += '';
																		s += ' <span style="text-decoration: line-through;">$ '
																				+ Math
																						.round(result[i].price)
																				+ '  /night </span><br> ';
																		s += Math
																				.round(result[i].priceCoppon)
																				+ ' <span>/night</span>';
																	} else {
																		s += '<span> $'
																				+ Math
																						.round(result[i].price)
																				+ ' /night </span>';
																	}

																	s += '</span></h3>';

																	s += '</div>';
																	s += '<div class="col-6 col-md-4">';

																	s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																	s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																
																	s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
																	s += '</div></div></div></div>';

																}
																$('#resss')
																		.html(s);

																$('#res')
																		.text(
																				JSON
																						.stringify(result));

															}

														});
											}

											var address = $('#address').val();
											var checkin = $('#checkin_date')
													.val();
											var checkout = $('#checkout_date')
													.val();
											var guests = $('#guests').val();
											var rooms = $('#rooms').val();
											var minprice = $('#minprice').val();
											var maxprice = $('#maxprice').val();
											var amount5 = $('#amount5').val();
											var amount4 = $('#amount4').val();
											var amount3 = $('#amount3').val();
											var amount2 = $('#amount2').val();
											var amount1 = $('#amount1').val();
											var wifi = $('#wifi').val();
											var parking = $('#parking').val();
											var spa = $('#spa').val();
											var gym = $('#gym').val();
											var carrental = $('#carrental')
													.val();
											var airporttransfer = $(
													'#airporttransfer').val();
											var freebreakfast = $(
													'#freebreakfast').val();
											var swimmingpool = $(
													'#swimmingpool').val();
											var payathotel = $('#payathotel')
													.val();
											var assemblyfacilites = $(
													'#assemblyfacilites').val();
											var driveway = $('#driveway').val();
											var doublebed = $('#doublebed')
													.val();
											var queenbed = $('#queenbed').val();
											var kingbed = $('#kingbed').val();
											var singlebed = $('#singlebed')
													.val();
											$
													.ajax({
														type : 'GET',

														url : '${pageContext.request.contextPath }/search/ajax/star',
														data : {
															address : address,
															checkin : checkin,
															checkout : checkout,
															guests : guests,
															rooms : rooms,
															minprice : minprice,
															maxprice : maxprice,
															amount5 : amount5,
															amount4 : amount4,
															amount3 : amount3,
															amount2 : amount2,
															amount1 : amount1,
															wifi : wifi,
															parking : parking,
															spa : spa,
															gym : gym,
															carrental : carrental,
															airporttransfer : airporttransfer,
															freebreakfast : freebreakfast,
															swimmingpool : swimmingpool,
															payathotel : payathotel,
															assemblyfacilites : assemblyfacilites,
															driveway : driveway,
															doublebed : doublebed,
															queenbed : queenbed,
															kingbed : kingbed,
															singlebed : singlebed
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
																s += '<p><i class="fa fa-map-marker" style="color: #B1293E"></i>'
																		+ result[i].ward
																		+ ','
																		+ result[i].city
																		+ ' </p>';
																s += '<p>';
																for (var j = 0; j < result[i].starRatingNum; j++) {
																	s += '<i class="fa fa-star" style="color: orange;"></i>';
																}
																s += '</p>';
																if (result[i].prestige == true) {
																	s += '<img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
																}

																s += '<a href="#" class="meta-chat" style="color: black;"> <i class="fa fa-comment"></i> ( '
																		+ result[i].comment
																		+ ' )</a><hr>';
																s += '<h3 style="color: #2E64FE">';
																s += '<span class="price per-price">';

																if (result[i].priceCoppon != null) {
																	s += '';
																	s += '';
																	s += ' <span style="text-decoration: line-through;">$ '
																			+ Math
																					.round(result[i].price)
																			+ '  /night </span><br> ';
																	s += Math
																			.round(result[i].priceCoppon)
																			+ ' <span>/night</span>';
																} else {
																	s += '<span> $'
																			+ Math
																					.round(result[i].price)
																			+ ' /night </span>';
																}

																s += '</span></h3>';

																s += '</div>';
																s += '<div class="col-6 col-md-4">';

																s += '<p style="color: green;"><i class="fa fa-user"></i>Login deal</p>';

																s += '<p style="color: green;"><span style="color: green; font-size: 20px; font-weight: bold;"></span>FREE hotel fee</p>';

																s += '<br> <a class="btn-s" href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+' &checkout='+checkout+' &guests='+guests+' &room='+rooms+'&id='+result[i].id+'">Book Now</a>';s += '</div>';
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
						// end singlecheck---------------------------------------------------------------------------------------------------------------------------------------------------------
						
					});
</script>

<br>

<div class="sidebar">
	<h3><i class="fa fa-search" style="color: #81BEF7"></i>Filter</h3>
	<div class="form-group">
		<!--  <input type="number" id="minprice" placeholder="min" value="0"><input
			type="number" id="maxprice" placeholder="max" value="100"> -->
		<span>Min price</span>
		<select id="minprice" class="custom-select">
			<option selected>0</option>
			<option value="1">1</option>
			<option value="25">25</option>
			<option value="50">50</option>
			<option value="75">75</option>
			<option value="100">100</option>
			<option value="150">150</option>
			<option value="200">200</option>
			<option value="300">300</option>
			<option value="500">500</option>
			<option value="1000">1000</option>
		</select> 
		<span>Max price</span>
		<select id="maxprice" class="custom-select">
			<option value="1">1</option>
			<option value="25">25</option>
			<option value="50">50</option>
			<option value="75">75</option>
			<option  value="100">100</option>
			<option value="150">150</option>
			<option value="200">200</option>
			<option value="300">300</option>
			<option value="500">500</option>
			<option value="1000">1000</option>
			<option selected value="10000">10000</option>
		</select>
	</div>
	<!--  <div class="form-group">
		<input type="submit" id="bt" value="fillter">
	</div>-->

	<button class="dropdown-btn">
		Star rating <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="check5"><i class="fa fa-star" style="color: orange;"></i><i
				class="fa fa-star" style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="check4"><i class="fa fa-star" style="color: orange;"></i><i
				class="fa fa-star" style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="check3"><i class="fa fa-star" style="color: orange;"></i><i
				class="fa fa-star" style="color: orange;"></i><i class="fa fa-star"
				style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="check2"><i class="fa fa-star" style="color: orange;"></i><i
				class="fa fa-star" style="color: orange;"></i>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="check1"><i class="fa fa-star" style="color: orange;"></i>
			</label>
		</div>

	</div>

	<!--  <button class="dropdown-btn">
		Facilities <i class="fa fa-caret-down"></i>
	</button>-->


	<button class="dropdown-btn">
		Facilities <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">

		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="wifiCheck"><span>Wifi</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="parkingCheck"><span>Parking</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="spaCheck"><span>Spa</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="gymCheck"><span>Gym</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="carrentalCheck"><span>Car Rental</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="airporttransferCheck"><span>Airport Transfer</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="freebreakfastCheck"><span>Free Breakfast</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="swimmingpoolCheck"><span>Swimming Pool</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="payathotelCheck"><span>Pay at Hotel</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="assemblyfacilitesCheck"><span>Assembly Facilites</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="drivewayCheck"><span>Driveway</span>
			</label>
		</div>
	</div>

	<button class="dropdown-btn">
		Bed type <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">

		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="doublecheck"><span>Double Bed</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="queencheck"><span>Queen Bed</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="kingcheck"><span>King Bed</span>
			</label>
		</div>
		<div class="form-check mb-2 mr-sm-2">
			<label class="form-check-label"> <input type="checkbox"
				id="singlecheck"><span>Single Bed</span>
			</label>
		</div>

	</div>
	<!-- <button class="dropdown-btn">
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
	</div> -->

	<!--  <button class="dropdown-btn">
		Dropdown <i class="fa fa-caret-down"></i>
	</button>
	<div class="dropdown-container">
		<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a><a
			href="#">Link 3</a><a href="#">Link 3</a>
	</div>-->
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
											<p>
												<i class="fa fa-map-marker" style="color: #B1293E"></i>${item.ward},
												${item.city }
											</p>
											<p>
												<c:forEach var="star" begin="1"
													end="${ item.starRating.amount }" step="1">
													<i class="fa fa-star" style="color: orange;"></i>

												</c:forEach>
											</p>


											<c:set var="numstar" value="${ 0 }"></c:set>
											<c:forEach var="evaluate" items="${item.evaluates }">

												<c:set var="numstar"
													value="${ numstar + evaluate.numberOfStars }"></c:set>

											</c:forEach>
											<i> <c:if test="${numstar/ item.evaluates.size() > 3.5 }">
													<img alt="icon"
														src="${pageContext.request.contextPath }/resources/user/icon/home.png">

												</c:if>
											</i> <a href="#" class="meta-chat" style="color: black;"> <i
												class="fa fa-comment"></i> (${ item.evaluates.size() })
											</a>
											<hr>
											<h3 style="color: gray; text-align: right;">
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
											</h3>
										</div>
										<div class="col-6 col-md-4">
											<p style="color: green;">
												<i class="fa fa-user"></i>Login deal
											</p>
											<p style="color: green;">
												<span
													style="color: green; font-size: 20px; font-weight: bold;"></span>FREE
												hotel fee
											</p>

											<!--  <h5 style="color: #2E64FE">
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
											</h5>-->

											<br> <a class="btn-s"
												href="${pageContext.request.contextPath }/hotels/hotel_detail?address=${address }&checkin=${checkin }&checkout=${checkout }&guests=${guests }&room=${rooms}&id=${item.id}">Book
												Now</a>


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

			<a class="btn btn-primary" data-toggle="collapse" data-target="#demo"></a>
			<div id="demo" class="collapse">
				<input type="text" value="0" id="amount1"> <input
					type="text" value="0" id="amount2"> <input type="text"
					value="0" id="amount3"> <input type="text" value="0"
					id="amount4"> <input type="text" value="0" id="amount5">
				<input type="text" value="0" id="wifi"> <input type="text"
					value="0" id="parking"> <input type="text" value="0"
					id="spa"> <input type="text" value="0" id="gym"> <input
					type="text" value="0" id="carrental"> <input type="text"
					value="0" id="airporttransfer"> <input type="text"
					value="0" id="freebreakfast"> <input type="text" value="0"
					id="swimmingpool"> <input type="text" value="0"
					id="payathotel"> <input type="text" value="0"
					id="assemblyfacilites"> <input type="text" value="0"
					id="driveway"> <input type="text" value="0" id="doublebed">
				<input type="text" value="0" id="queenbed"> <input
					type="text" value="0" id="kingbed"> <input type="text"
					value="0" id="singlebed">
			</div>


		</div>
		<div class="col-3">
			<!-- form search -->


			<div class="container">
				<form action="${pageContext.request.contextPath}/search" method="get">

					<div class="form-row align-items-center">
						<div class="col-auto">
							<label for="state">City name <i class="fa fa-map-marker"></i></label>
							<input type="text" placeholder="City" id="address" name="address"
								value="${address }">
						</div>
						<div class="col-auto">
							<label>Guest <i class="fa fa-user"></i></label> <input
								class="inputRoom" type="number" id="guests" placeholder="0"  name="guests"
								value="${guests }">
						</div>
						<div class="col-auto">
							<label>Room <i class="fa fa-home"></i></label> <input
								class="inputRoom" type="number" id="rooms" placeholder="0" name="room"
								value="${rooms }">
						</div>

						<div class="col-auto">
							<label>Check in <i class="fa fa-sign-in"></i></label> <input
								type="date" value="${checkin }" id="checkin_date" name="checkin">
						</div>
						<div class="col-auto">
							<label>Check out <i class="fa fa-sign-out"></i></label> <input
								type="date" value="${checkout}" id="checkout_date" name="checkout">
						</div>


						<div class="col-auto">
							<input type="submit" id="bt" value="Re-Search" class="btn-s">
						</div>

					</div>


				</form>
			</div>
			<!-- /form search -->
		</div>
	</div>
</div>

