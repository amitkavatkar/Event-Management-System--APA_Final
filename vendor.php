<?php
	session_start();
	require 'db.php';
	if(!isset($_SESSION['username'])){
		header('Location: login.php');
	}

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets/img/favicon.png">

    <title>APA - EVENTS</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/navbar-top-fixed.css" rel="stylesheet">
    <link href="assets/css/sticky-footer-navbar.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="index.html"><b style="color: #ff8417">APA </b>Events</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="gallery.html">Gallery</a>
          </li>
          <li class="nav-item">
            <a class="nav-link float-right" href="enquiery.php">Enquiry</a>
          </li>
          <li class="nav-item">
            <a class="nav-link float-right" href="logout.php">Logout</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container">
      <div class="jumbotron">
		<div class="row">
			<div class="col-2" style="border-right: 1px solid #ccc">
				<div class="text-center">
					<img src="assets/img/user.png" class="rounded" alt="...">
					<h5 class="text-center">HELLO APA</h5>
					<a href="logout.php">Logout</a>
				</div>
				<hr>
				<a class="nav-link" href="client.php">Clients</a>
				<hr>
				<a class="nav-link" href="vendor.php">Vendors</a>
				<hr>
				<a class="nav-link" href="create.php">Create</a>
				<hr>
				<a class="nav-link" href="event.php">Events</a>
				<hr>
			</div>
			<div class="col-10">
				<h4>Vendors</h4>
				<hr>
				<table class="table table-striped table-sm">
					<thead class="thead-inverse">
						<tr>
							<th>Vendor Company</th>
							<th>Vendor Name</th>
							<th>Vendor Email</th>
							<th>Vendor City</th>
							<th>Vendor Type</th>
							<th>Vendor Phone</th>
							<th>Vendor Cost</th>
						</tr>
					</thead>
					<tbody>
					<?php
						$sql = "SELECT * FROM vendor";
						$result = mysqli_query($con, $sql); 
						if (mysqli_num_rows($result) > 0) {
							// output data of each row
							while($row = mysqli_fetch_assoc($result)) {
								echo "<tr><td>". $row["vendorCompany"]. "</td><td>" . $row["vendorName"]. "</td><td>" . $row["vendorEmail"]. "</td>". "</td><td>" . $row["vendorCity"]. "</td>". "</td><td>" . $row["vendorType"]. "</td>". "</td><td>" . $row["vendorType"]. "</td></td><td>" . $row["vendorPrice"]. "</td>";
							}
						} else {
							echo "<tr><td colspan='6' class='text-center'>0 results</td></tr>";
						}

						mysqli_close($con);
					?>
					
					</tbody>
				</table>
			</div>
		</div>
      </div>
    </div>

    <footer class="footer">
      <div class="container">
        <span class="text-muted">© 2017 APA</span>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="assets/js/jquery.min.js"><\/script>')</script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>

