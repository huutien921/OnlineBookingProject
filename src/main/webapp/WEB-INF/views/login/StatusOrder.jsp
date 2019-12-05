<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<br>
<br>
<h3 style="text-align: center;">
	<i class="fa fa-building" style="color: #2E64FE;"></i>My Order
</h3>
<hr>
<div class="container-fluid">

	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">

			<div class="row">
				<div class="col-sm-12" style="background-color: #E6E6E6;">
					<div class="row">
						<div class="col-sm-3">
							<br> <img alt="room"
								src="${pageContext.request.contextPath }/uploads/images/hotel-1.jpg"
								style="width: 200px; height: 150px">
							<hr>
							<span style="font-weight: bold;">Room name: </span> <span>Room
								name name namename name name name Room name name namename name
								name name</span>
						</div>
						<div class="col-sm-3">
							<br>
							<h4>
								<i class="fa fa-info" style="color: #2E64FE;"></i>Info
							</h4>
							<hr>
							<p>
								<span style="font-weight: bold;">Check in:</span> <span>20/12/2019</span>
							</p>
							<p>
								<span style="font-weight: bold;">Check out:</span> <span>20/12/2019</span>
							</p>
							<p>
								<span style="font-weight: bold;">Amount of room:</span> <span>2</span>
							</p>
						</div>
						<div class="col-sm-3">
							<br>
							<h4>
								<i class="fa fa-home" style="color: #58ACFA;"></i>Room
							</h4>
							<hr>
							<p>
								<span style="font-weight: bold;">Room:</span> <span
									class="badge badge-info">Vip</span>
							</p>
							<p>
								<span style="font-weight: bold;">Type:</span> <span
									class="badge badge-secondary">Don</span>
							</p>
							<p>
								<span style="font-weight: bold;">Bed:</span> <span
									class="badge badge-light">Single</span>
							</p>
						</div>
						<div class="col-sm-3">
							<br>
							<h4>
								<i class="fa fa-check" style="color: #74DF00;"></i>Status
							</h4>
							<hr>
							<p>
								<span style="font-weight: bold;">Status:</span> <span
									class="badge badge-success">OK</span> <span
									class="badge badge-danger">Waiting</span>
							</p>
							<p>
								<span style="font-weight: bold;">Price:</span> <span
									style="color: #0080FF; font-weight: bold; font-size: 15px">$30</span>
							</p>
							<p>
								<span style="font-weight: bold;">Sale off:</span> <span
									style="color: #0080FF; font-weight: bold; font-size: 15px; text-decoration: line-through;">$20</span>
							</p>
							<p>
								<span style="font-weight: bold;">Total:</span> <span
									style="color: #0431B4; font-weight: bold; font-size: 30px">$40</span>
							</p>
							<a href="" class="btn btn-success">Detail</a>
							<hr>
						</div>
					</div>
				</div>

			</div>

		</div>
		<div class="col-sm-2"></div>
	</div>
	<!-- end status -->

	<br> <br>

	<h3 style="text-align: center;">
		<i class="fa fa-calendar" style="color: #BDBDBD;"></i>History
	</h3>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="row">
				<div class="col-sm-12" style="background-color: #E6E6E6;">
					<div class="container mt-3">
						<h2>My history order</h2>
						<p>Search</p>
						<input class="form-control" id="myInput" type="text"
							placeholder="Search.."> <br>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Hotel</th>
									<th>Room</th>
									<th>Price</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Detail</th>
								</tr>
							</thead>
							<tbody id="myTable">
								<tr>
									<td>John</td>
									<td>Doe</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td><a href="#" style="color: #0080FF">Detail</a></td>
								</tr>
								<tr>
									<td>John</td>
									<td>Doe</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td><a href="#" style="color: #0080FF">Detail</a></td>
								</tr>
								<tr>
									<td>John</td>
									<td>Doe</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td><a href="#" style="color: #0080FF">Detail</a></td>
								</tr>
								<tr>
									<td>John</td>
									<td>Doe</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td>john@example.com</td>
									<td><a href="#" style="color: #0080FF">Detail</a></td>
								</tr>
							</tbody>
							<thead>
								<tr>
									<th>Hotel</th>
									<th>Room</th>
									<th>Price</th>
									<th>Check in</th>
									<th>Check out</th>
									<th>Detail</th>
								</tr>
							</thead>
						</table>


					</div>

					<script>
						$(document)
								.ready(
										function() {
											$("#myInput")
													.on(
															"keyup",
															function() {
																var value = $(
																		this)
																		.val()
																		.toLowerCase();
																$("#myTable tr")
																		.filter(
																				function() {
																					$(
																							this)
																							.toggle(
																									$(
																											this)
																											.text()
																											.toLowerCase()
																											.indexOf(
																													value) > -1)
																				});
															});
										});
					</script>
				</div>
			</div>
		</div>

	</div>
	<div class="col-sm-2"></div>
</div>
<br>
<br>
<br>
<br>
<br>