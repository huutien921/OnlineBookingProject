<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<br>

<h3 style="text-align: center;">Hotel booking</h3>
<div class="container">
	<div class="row">
		<div class="col-sm-4">
			<div class="card">
				<h5 class="card-header">Booking detail</h5>
				<div class="card-body">
					<div class="container">
						<div class="row">
							<div class="col-4">
								<img
									src="${pageContext.request.contextPath }/resources/user/images/khuyenmai.png"
									alt="Snow" style="width: 90px; height: 90px">
							</div>
							<div class="col-8">

								<p>
									<small style="font-weight: bold;">Hotel name name name
										name s sdfs dfds f </small>
								</p>

							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-6 col-md-6">
								<p style="color: green;">
									<small>Free cancellation</small>
								<p>
							</div>
							<div class="col-6 col-md-6">
								<p style="color: green;">
									<small>Free breakfast</small>
								</p>
							</div>
						</div>


						<hr>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Duration of Stay</small>
							</div>
							<div class="col-6 col-md-6">
								<small>2 night</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Check-in</small>
							</div>
							<div class="col-6 col-md-6">
								<small>25/11/2019</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Check-out</small>
							</div>
							<div class="col-6 col-md-6">
								<small>27/11/2019</small>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Room type</small>
							</div>
							<div class="col-6 col-md-6">
								<small>roomtype</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Bed type</small>
							</div>
							<div class="col-6 col-md-6">
								<small>1 queen bed</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">No. of room</small>
							</div>
							<div class="col-6 col-md-6">
								<small>1 Room</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Guests per room</small>
							</div>
							<div class="col-6 col-md-6">
								<small>7 Guests</small>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Price</small>
							</div>
							<div class="col-6 col-md-6">
								<small">$5000/night</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold;">Hotel fee </small>
							</div>
							<div class="col-6 col-md-6">
								<small style="color: green;">FREE</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold; color: green;">Bookbed
									fee</small>
							</div>
							<div class="col-6 col-md-6">
								<small style="color: green;">FREE</small>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold; color: green;">Login
									deal</small>
							</div>
							<div class="col-6 col-md-6">
								<small style="color: green;">-10%</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold; color: green;">Private
									deal</small>
							</div>
							<div class="col-6 col-md-6">
								<small style="color: green;">-30%</small>
							</div>
						</div>
						<div class="row">
							<div class="col-6 col-md-6">
								<small style="font-weight: bold; color: green;">Gift
									code</small>
							</div>
							<div class="col-6 col-md-6">
								<small style="color: green;">-0%</small>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-6 col-md-6">
								<h5 style="font-weight: bold; color: #2E64FE;">Final price</h5>

							</div>
							<div class="col-6 col-md-6">
								<h4 style="color: #2E64FE;">$6000</h4>
								<p>(2 night)</p>
							</div>
						</div>

						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="Gift code">
							<div class="input-group-append">
								<button class="btn btn-success" type="submit">Update</button>

							</div>
						</div>
						<span style="color: red">Code not found</span><span
							style="color: green;">Success</span>
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
									style="color: red">*</span></label> <input type="password"
									id="inputPassword5" class="form-control"
									aria-describedby="passwordHelpBlock"> <small
									id="passwordHelpBlock" class="form-text text-muted"> As
									in Passport/Official ID Card (without title/special characters)
								</small>
							</div>
							<div class="col-10">
								<label for="inputPassword5">Email <span
									style="color: red">*</span></label> <input type="password"
									id="inputPassword5" class="form-control"
									aria-describedby="passwordHelpBlock"> <small
									id="passwordHelpBlock" class="form-text text-muted">
									e.g.: email@example.com </small>
							</div>

							<div class="col-10">

								<div class="form-group">
									<label for="comment">Add special requests:</label>
									<textarea class="form-control" rows="5" id="comment"
										placeholder="Have a special request? Ask, and the property will do its best to meet your wish. (Note that special request are not guaranteed and may incur charges)"></textarea>
								</div>

							</div>

						</div>
						<div class="row">
							<div class="col-6"></div>
							<div class="2"> 
								<div class="spinner-border text-info"></div>
							</div>
							<div class="col-4">
								<input type="button" value="Booking" class="btn-s">
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>

			<!-- /hotels -->
		</div>

	</div>
</div>

