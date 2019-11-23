<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script
	src="${pageContext.request.contextPath }/resources/user/js/jquery-3.4.1.min.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">
	jQuery(document).ready(function() {

		$('#bt').click(function() {

			var address = $('#address').val();
			var checkin = $('#checkin_date').val();
			var checkout = $('#checkout_date').val();
			var guests = $('#guests').val();
			var rooms = $('#rooms').val();
			var minprice = $('#minprice').val();
			var maxprice = $('#maxprice').val();

			$.ajax({
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
				success : function(result) {
					var s = '';
					for (var i = 0; i < result.length; i++) {
						s += ' <div class="col-sm col-md-6 col-lg-4  "> <div class="destination">' ;
						s += ' <a href="${pageContext.request.contextPath }/hotels/hotel_detail" class="img img-2 d-flex justify-content-center align-items-center"';
						s += ' style="background-image: url(${pageContext.request.contextPath }/uploads/images/' + result[i].image + ');">';
						s += ' <div class="icon d-flex justify-content-center align-items-center"> <span class="icon-link"></span></div>';
						s +=' </a> <div class="text p-3"><div class="d-flex"> <div class="one"> <h3> ' ;
							s += '<a href="#"> '+result[i].name+' </a></h3><p class="rate">';
							for(var j =0 ; j < result[i].starRatingNum ; j++)
								{s += '<i class="icon-star"></i>';}
							s += '</p>'; 
								s +='</div> <div class="two"> <span class="price per-price">';
								
							
							
							s += ' </div> </div>';
								s += ' <span class="icon-map-marker"></span> <span>'+ result[i].ward +','+ result[i].city +'</span> <br>' ;
							
								s += ' <div class="row"> <div class="col-md-12"><span>'	;
								if(result[i].priceCoppon != null){
									s += ' <span style="text-decoration: line-through;">$ '+ Math.round(result[i].price) +' <span> /night</span></span> <br> ';
									s += Math.round(result[i].priceCoppon) + ' <span>/night</span></span>';
									}else{
										s += Math.round(result[i].price) + ' <span>/night</span></span>';
										}
									


								s +=	'</div></div>';
								s += ' <hr><p class="bottom-area d-flex">'	;
								if(result[i].prestige == true){
									s += ' <img alt="icon" src="${pageContext.request.contextPath }/resources/user/icon/home.png">';
									
									}
								s += ' <a href="#" class="meta-chat" style="color: black;"><span class="icon-chat"></span>'+result[i].comment+'</a> <span class="ml-auto">';
								s += ' <a href="${pageContext.request.contextPath }/hotels/hotel_detail?address='+address+'&checkin='+checkin+'&checkout='+checkout+'&guests='+guests+'&room='+rooms+'&id='+result[i].id+'">Book Now</a></span>';
								s += ' </p></div></div></div></div>';
					}
					$('#resss').html(s);
										
					$('#res').text(JSON.stringify(result));

				}

			});

		});
		
	});
</script>

<section class="ftco-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 sidebar order-md-last ftco-animate">
				<div class="sidebar-wrap ftco-animate">
					<h3 class="heading mb-4">Filter Results</h3>

					<div class="fields">
						<div class="form-group">
							<input type="text" class="form-control" value="${address }"
								id="address" placeholder="Destination, City">
						</div>

						<div class="form-group">
							<input type="text" id="checkin_date"
								class="form-control checkin_date" value="${checkin }"
								placeholder="Check in">
						</div>
						<div class="form-group">
							<input type="text" id="checkout_date"
								class="form-control checkout_date" value="${checkout }"
								placeholder="Check out">
						</div>
						<div class="form-group">
							<div class="select-wrap one-third">
								<div class="icon"></div>
								<input type="text" class="form-control" value="${guests }"
									id="guests" placeholder="Guest">
							</div>
						</div>
						<div class="form-group">
							<div class="select-wrap one-third">
								<div class="icon"></div>
								<input type="text" class="form-control" value="${rooms }"
									id="rooms" placeholder="Rooms">
							</div>
						</div>

						<div class="form-group">

							<div class="range-slider">

								<span> <input type="number" value=0 min="0" max="120000"
									id="minprice" /> - <input type="number" value="50" min="0"
									max="100000" id="maxprice" />
								</span> <input value="1000" min="0" max="120000" step="500"
									type="range" id="minprice" /> <input value="50000" min="0"
									max="120000" step="500" type="range" id="maxprice" />

							</div>
						</div>
						<div class="form-group">
							<input type="submit" id="bt" value="Search"
								class="btn btn-primary py-3 px-5">
						</div>
					</div>

				</div>
				<div class="sidebar-wrap ftco-animate">
					<h3 class="heading mb-4">Star Rating</h3>
					<form method="post" class="star-rating">
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									<span><i class="icon-star"></i><i class="icon-star"></i><i
										class="icon-star"></i><i class="icon-star"></i><i
										class="icon-star"></i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									<span><i class="icon-star"></i><i class="icon-star"></i><i
										class="icon-star"></i><i class="icon-star"></i><i
										class="icon-star-o"></i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									<span><i class="icon-star"></i><i class="icon-star"></i><i
										class="icon-star"></i><i class="icon-star-o"></i><i
										class="icon-star-o"></i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									<span><i class="icon-star"></i><i class="icon-star"></i><i
										class="icon-star-o"></i><i class="icon-star-o"></i><i
										class="icon-star-o"></i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									<span><i class="icon-star"></i><i class="icon-star-o"></i><i
										class="icon-star-o"></i><i class="icon-star-o"></i><i
										class="icon-star-o"></i></span>
								</p>
							</label>
						</div>
					</form>
				</div>
				<div class="sidebar-wrap ftco-animate">
					<h3 class="heading mb-4">Sort Results</h3>
					<form method="post" class="star-rating">
						<div class="form-check">
							<input type="radio"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Highest Price</p>
							</label>
						</div>
						<div class="form-check">
							<input type="radio"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Lowest Price</p>
							</label>
						</div>
						<div class="form-check">
							<input type="radio"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Highest Price</p>
							</label>
						</div>
						<div class="form-check">
							<input type="radio"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Highest Price</p>
							</label>
						</div>
					</form>
				</div>
				<div class="sidebar-wrap ftco-animate">
					<h3 class="heading mb-4">Facilities</h3>
					<form method="post" class="star-rating">
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Wifi</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Parking</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Spa</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Gym</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Car rental</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Airport transfer</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Free breakfast</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Swimming pool</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Elevator</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Receptionist</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Air conditioner</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Free cancellation</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Pay at hotel</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Assembly facilites</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Driveway</i></span>
								</p>
							</label>
						</div>
					</form>
				</div>
				<div class="sidebar-wrap ftco-animate">
					<h3 class="heading mb-4">Accommodation Type</h3>
					<form method="post" class="star-rating">
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Apartments</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Homes</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">Resorts</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									B&B</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Villas</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Luxury</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Guest Housesr</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Hotels</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Homestays</i></span>
								</p>
							</label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">
								<p class="rate">
									Hostels</i></span>
								</p>
							</label>
						</div>

					</form>
				</div>
			</div>
			<!-- END-->

			<div  class="col-lg-9">
				<div id="resss"  class="row">
					<c:forEach var="item" items="${hotels }">
						<div class="col-sm col-md-6 col-lg-4 ftco-animate">
							<div class="destination">
								<a
									href="${pageContext.request.contextPath }/hotels/hotel_detail"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${pageContext.request.contextPath }/uploads/images/${item.image });">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-link"></span>
									</div>
								</a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="#"> ${item.name} </a>
											</h3>
											<p class="rate">
												<c:forEach var="star" begin="1"
													end="${ item.starRating.amount }" step="1">
													<i class="icon-star"></i>

												</c:forEach>


											</p>
										</div>
										<div class="two">
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
										</div>
									</div>

									<span class="icon-map-marker"></span> <span>
										${item.ward} , ${item.city } </span> <br>
									<c:set var="numstar" value="${ 0 }"></c:set>
									<c:forEach var="evaluate" items="${item.evaluates }">

										<c:set var="numstar"
											value="${ numstar + evaluate.numberOfStars }"></c:set>

									</c:forEach>



									<div class="row">

										<div class="col-md-12">


											<span> <c:if
													test="${item.copponHotel != null and item.copponHotel.status == true }">
													<span style="text-decoration: line-through;">$ <fmt:formatNumber
															type="number" value="${tatolPrice / quantity }"
															pattern="###,###" /><span> /night</span></span>
													<br>
												</c:if> $ <fmt:formatNumber type="number"
													value="${(tatolPrice / quantity) * (100 -item.copponHotel.sale )/100 }"
													pattern="###,###" /> <span>/night</span></span>
										</div>


									</div>

									<hr>
									<p class="bottom-area d-flex">

										<c:if test="${((numstar / item.evaluates.size() )) > 3.5 }">
											<img alt="icon"
												src="${pageContext.request.contextPath }/resources/user/icon/home.png">

										</c:if>
										<a href="#" class="meta-chat" style="color: black;"><span
											class="icon-chat"></span> ${ item.evaluates.size() }</a> <span
											class="ml-auto"><a
											href="${pageContext.request.contextPath }/hotels/hotel_detail?address=${address }&checkin=${checkin }&checkout=${checkout }&guests=${guests }&room=${rooms}&id=${item.id}">Book
												Now</a></span>
									</p>
								</div>
							</div>
						</div>

					</c:forEach>



					<c:if test="${hotels.isEmpty()}">
						<h3>khong tim thays khach san</h3>
					</c:if>

				</div>

				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<li><a href="#">&lt;</a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&gt;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- .col-md-8 -->
		</div>
	</div>
</section>
<!-- .section -->

<section class="ftco-section-parallax">
	<div class="parallax-img d-flex align-items-center">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div
					class="col-md-7 text-center heading-section heading-section-white ftco-animate">
					<h2>Subcribe to our Newsletter</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in</p>
					<div class="row d-flex justify-content-center mt-5">
						<div class="col-md-8">
							<form action="#" class="subscribe-form">
								<div class="form-group d-flex">
									<input type="text" class="form-control"
										placeholder="Enter email address"> <input
										type="submit" value="Subscribe" class="submit px-3">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>