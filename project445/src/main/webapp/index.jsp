<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book index</title>
<%@include file="allcomponent/allCss.jsp"%>
<style type="text/css">
.back-image {
	background: url("image/boo.jpg");
	height: 80vh;
	width: 100%%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}

.welcome {
	position: absolute;
	transform: translate(-50%, -50%);
	left: 20%;
	top: 50%
}

.icons-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap:1.5rem;
}

.icons-container .icons{
    display: flex;
    align-items: center;
    gap:1.5rem;
    padding:1rem 0;
}

.icons-container .icons i{
    font-size: 2.5rem;
    color:var(--green);
}

.icons-container .icons h3{
    font-size: 2.2rem;
    color:var(--black);
    padding-bottom: .5rem;
}

.heading{
    text-align: center;
    margin-bottom: 2rem;
    position: relative;
}

.heading::before{
    content: '';
    position: absolute;
    top:50%; left:0;
    transform: translateY(-50%);
    width: 100%;
    height:.01rem;
    background: rgba(0,0,0,.1);
    z-index: -1;
}

.heading span{
    font-size: 3rem;
    padding:.5rem 2rem;
    color:var(--black);
    background: #fff;
    border:var(--border);
}

.home .row .content h3{
    color:var(--black);
    font-size: 4.5rem;
}

.home .row .content p{
    color:var(--light-color);
    font-size: 1.4rem;
    line-height: 2;
    padding:1rem 0;
}

</style>
</head>

<br>
<body style="background-color: #fcf7f7;">
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container-fluid back-image">
		<!--Background image-->
		<br>
		<div class="bg-image bg">
			<div class="welcome">

				<p
					style="color: rgba(255, 255, 255, 0.822); font-family: 'Aclonica'; font-size: 50px;">
					The Best Libraries That <br> Every Book Lover Must  <br> Visit!

				<p
					style="color: rgb(255, 255, 255); font-size: 20px; opacity: 50%; font-family: 'Abel';">
					Where Everthing is possible just Sign up with us <br>and leave
					the rest to us
				</p>

			</div>
		</div>

	</div>
<br>

<!-- icons section starts  -->

<section class="icons-container">

    <div class="icons">
        <i class="fas fa-shipping-fast"></i>
        <div class="content">
            <h3>free shipping</h3>
            <p>order over $100</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-lock"></i>
        <div class="content">
            <h3>secure payment</h3>
            <p>100 secure payment</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-redo-alt"></i>
        <div class="content">
            <h3>easy returns</h3>
            <p>10 days returns</p>
        </div>
    </div>

</section>
<br>
<br>
<!-- icons section ends -->
	<!-- start Recent Book  -->

	<div class="conntainer">
		<div style="text-align: center;">
		<h1 class="heading"> <span>Recent Book</span> </h1>
			<div class="row">
				<div class="col-md-3">
					<div class="card crd-ho">

						<div class="card-body text-center">
							<img alt="" src="book/java.jpg"
								style="width: 150px; height: 200px" class="img-thumblin">
							<p>java Programming</p>
							<p>Balguruswamy</p>
							<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-cart-circle-plus"> </i>Add Cart</a> <a href=""
									class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-1">299</a>

							</div>

						</div>

					</div>

				</div>


				<div class="col-md-3">
					<div class="card crd-ho">

						<div class="card-body text-center">
							<img alt="" src="book/linux.jpeg"
								style="width: 150px; height: 200px" class="img-thumblin">
							<p>Linux</p>
							<p>DR. PHILP</p>
							<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1">299</a>

							</div>

						</div>

					</div>

				</div>


				<div class="col-md-3">
					<div class="card crd-ho">

						<div class="card-body text-center">
							<img alt="" src="book/sql.jpg"
								style="width: 150px; height: 200px" class="img-thumblin">
							<p>SQL</p>
							<p>ANTHONY HACK</p>
							<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1">299</a>

							</div>

						</div>

					</div>

				</div>

				<div class="col-md-3">
					<div class="card crd-ho">

						<div class="card-body text-center">
							<img alt="" src="book/story.jpg"
								style="width: 150px; height: 200px" class="img-thumblin">
							<p>NEW YORK TIMES </p>
							<p>Christine</p>
							<p>Categories:Recent</p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1">299</a>

							</div>

						</div>

					</div>

				</div>


			</div>
			<div class="text-center mt-1">
				<br> <a href="" class="btn btn-danger btn-sm text-white">View
					All</a>
			</div>

		</div>
		<br>
		<!-- End Recent Book -->

		<!-- start New Book  -->
		<div class="conntainer">
			<div style="text-align: center;">
					<h1 class="heading"> <span>New Book</span> </h1>
				<div class="row">
					<div class="col-md-3">
						<div class="card crd-ho">

							<div class="card-body text-center">
								<img alt="" src="book/book-1.png"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p>The Art city</p>
								<p>sam bill</p>
								<p>Categories:New</p>
								<div class="row">
									<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
										href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
										href="" class="btn btn-danger btn-sm ml-1">299</a>

								</div>

							</div>

						</div>

					</div>


					<div class="col-md-3">
						<div class="card crd-ho">

							<div class="card-body text-center">
								<img alt="" src="book/book3.png"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p>Best New</p>
								<p>sam bill</p>
								<p>Categories:New</p>
								<div class="row">
									<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
										href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
										href="" class="btn btn-danger btn-sm ml-1">299</a>

								</div>

							</div>

						</div>

					</div>


					<div class="col-md-3">
						<div class="card crd-ho">

							<div class="card-body text-center">
								<img alt="" src="book/book5.png"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p>Be Grateful and give thanks</p>
								<p>Dr.Salline</p>
								<p>Categories:New</p>
								<div class="row">
									<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
										href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
										href="" class="btn btn-danger btn-sm ml-1">299</a>

								</div>

							</div>

						</div>

					</div>

					<div class="col-md-3">
						<div class="card crd-ho">

							<div class="card-body text-center">
								<img alt="" src="book/book7.png"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p>Place yourText here</p>
								<p>Balguruswamy</p>
								<p>Categories:New</p>
								<div class="row">
									<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
										href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
										href="" class="btn btn-danger btn-sm ml-1">299</a>

								</div>

							</div>

						</div>

					</div>




				</div>
				<div class="text-center mt-1">
					<hr>
					<a href="" class="btn btn-danger btn-sm text-white">View All</a>
				</div>
			</div>
			<!-- End New Book -->

			<hr>
			<!-- start old Book  -->
			<div class="conntainer">
				<div style="text-align: center;">
				  <h1 class="heading"> <span>Old Book</span> </h1>
					<div class="row">
						<div class="col-md-3">
							<div class="card crd-ho">

								<div class="card-body text-center">
									<img alt="" src="book/book-5.png"
										style="width: 150px; height: 200px" class="img-thumblin">
									<p>Music Rock</p>
									<p>Baswamy</p>
									<p>Categories:Old</p>
									<div class="row">
										<hr>

						<a href="" class="btn btn-success btn-sm ml-5">View
											Details</a> <a href="" class="btn btn-danger btn-sm ml-1">299</a>

									</div>

								</div>

							</div>

						</div>


						<div class="col-md-3">
							<div class="card crd-ho">

								<div class="card-body text-center">
									<img alt="" src="book/book-8.png"
										style="width: 150px; height: 200px" class="img-thumblin">
								<p>Black history month</p>
									<p>Baswamy</p>
									<p>Categories:Old</p>
									<div class="row">
										<a href="" class="btn btn-success btn-sm ml-5">View
											Details</a> <a href="" class="btn btn-danger btn-sm ml-1">299</a>

									</div>

								</div>

							</div>

						</div>


						<div class="col-md-3">
							<div class="card crd-ho">

								<div class="card-body text-center">
									<img alt="" src="book/book-9.png"
										style="width: 150px; height: 200px" class="img-thumblin">
										<p>A novel</p>
									<p>Baswamy</p>
									<p>Categories:Old</p>
									<div class="row">
										<a href="" class="btn btn-success btn-sm ml-5">View
											Details</a> <a href="" class="btn btn-danger btn-sm ml-1">299</a>

									</div>

								</div>

							</div>

						</div>

						<div class="col-md-3">
							<div class="card crd-ho">

								<div class="card-body text-center">
									<img alt="" src="book/book-6.png"
										style="width: 150px; height: 200px" class="img-thumblin">
									<p>Sample text</p>
									<p>Baswamy</p>
									<p>Categories:Old</p>
									<div class="row">
										<a href="" class="btn btn-success btn-sm ml-5">View
											Details</a> <a href="" class="btn btn-danger btn-sm ml-1">299</a>

									</div>

								</div>

							</div>

						</div>




					</div>
					<div class="text-center mt-1">
						<hr>
						<a href="" class="btn btn-danger btn-sm text-white">View All</a>
					</div>
				</div>
				<br>
				<!-- End old Book -->
				<%@include file="allcomponent/footer.jsp"%>
</body>
</html>