<?php
	session_start();
	require 'db.php';
	if(!isset($_SESSION['username'])){
		header('Location: login.php');
	}

	$caterer = '';
	$decorator = '';
	$performer = '';
	$venue = '';
	
	if(isset($_POST['submit'])){
		$sqlinsert = "INSERT INTO event(customerID, catererID, venueID, decoraterID, performerID) ".
						"VALUES('".$_POST['customer']."', '".$_POST['caterer']."', '".$_POST['venue']."', '".$_POST['decoration']."', '".$_POST['performer']."')";
		$resultinsert = mysqli_query($con, $sqlinsert); 
		if(!$resultinsert){
			echo "Error in record updating".mysqli_error($con);
		}
	}
	
	$sql = "SELECT vendorID, vendorName, vendorType, vendorPrice FROM vendor ORDER BY vendorPrice ASC";
	$result = mysqli_query($con, $sql); 
	if (mysqli_num_rows($result) > 0) {
		// output data of each row
		while($row = mysqli_fetch_assoc($result)) {
			if(rtrim($row['vendorType']) == 'Caterers'){ 
				$caterer = $caterer."<option value='".$row['vendorName']."'>".$row['vendorName']."</option>";
			}else if(rtrim($row['vendorType']) == 'Decorator'){
				$decorator = $decorator."<option value='".$row['vendorName']."'>".$row['vendorName']."</option>";
			}else if(rtrim($row['vendorType']) == 'Performer'){
				$performer = $performer."<option value='".$row['vendorName']."'>".$row['vendorName']."</option>";
			}else if(rtrim($row['vendorType']) == 'Venue'){
				$venue = $venue."<option value='".$row['vendorName']."'>".$row['vendorName']."</option>";
			}


		}
	}

	$sql1 = "SELECT ID, Name FROM enquiery";
	$result1 = mysqli_query($con, $sql1); 
	if (mysqli_num_rows($result1) > 0) {
		// output data of each row
		while($row1 = mysqli_fetch_assoc($result1)) {
				$customer = $customer."<option value='".$row1['ID']."'>".$row1['Name']."</option>";
		}
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
				<h4>Create</h4>
				<hr>
				<form method="post" action="">
					<label class="mr-sm-2" for="inlineFormCustomSelectPref">Customer</label>
					<select class="form-control form-control-sm mr-sm-2" name="customer" required>
						<option value="">Open this select menu</option>
						<?php echo $customer; ?>
					</select>

					<label class="mr-sm-2" for="inlineFormCustomSelectPref">Caterer</label>
					<select class="form-control form-control-sm mr-sm-2" name="caterer" required>
						<option value="">Open this select menu</option>
						<?php echo $caterer; ?>
					</select>

					<label class="mr-sm-2" for="inlineFormCustomSelectPref">Venue</label>
					<select class="form-control form-control-sm mr-sm-2" name="venue" required>
						<option value="">Open this select menu</option>
						<?php echo $venue; ?>
					</select>

					<label class="mr-sm-2" for="inlineFormCustomSelectPref">Decoration</label>
					<select class="form-control form-control-sm mr-sm-2" name="decoration" required>
						<option value="">Open this select menu</option>
						<?php echo $decorator; ?>
					</select>

					<label class="mr-sm-2" for="inlineFormCustomSelectPref">Performer</label>
					<select class="form-control form-control-sm mr-sm-2" name="performer" required>
						<option value="">Open this select menu</option>
						<?php echo $performer; ?>
					</select>
					
					<br><br>

					<button type="submit" class="btn btn-primary btn-sm" name="submit">Submit</button>

				</form>
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

