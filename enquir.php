<?php
	session_start();
	require 'db.php';
	//if(!isset($_SESSION['username'])){
	//	header('Location: login.php');
	//}

	
	if(isset($_POST['submit'])){
		$sqlinsert = "INSERT INTO enquiery(Name, Email, Phone, Address, TypeEvent, LocationEvent, Attendees, Budget, Date) ".
						"VALUES('".$_POST['name']."', '".$_POST['email']."', '".$_POST['phone']."', '".$_POST['address']."', '".$_POST['type_event']."', '".$_POST['location_event']."', '".$_POST['attendees']."', '".$_POST['budget']."', '".$_POST['date']."')";
		$resultinsert = mysqli_query($con, $sqlinsert); 
		if(!$resultinsert){
			echo "Error in record updating".mysqli_error($con);
		}
		if(isset($_POST['submit'])){
			$event = $_POST['type_event'];
			$caterer = array();
		
		
			$venue = array();
		
		
			$decorator = array();
			
		
			$performer = array();

			$sqlselect = "SELECT * FROM qtns WHERE typeEvent = '$event' ";
			$res = mysqli_query($con, $sqlselect);
			while ($result = mysqli_fetch_assoc($res)) {
				$caterer[] .= $result['caterer'];
				$venue[] .= $result['venue'];
				$decorator[] .= $result['decorator'];
				$performer[] .= $result['performer'];
			}
			$budget = array();
			$budget[0] = "Rs. ".((66/100) * $_POST['budget'])." /-";
			$budget[1] = "Rs. ".$_POST['budget']." /-";
			$budget[2] = "Rs. ".((120/100) * $_POST['budget'])." /-";

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
            <a class="nav-link float-right" href="login.php">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link float-right" href="register.php">Register</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container">
      <div class="jumbotron">
		<div class="row">
			<div class="col-4" id="print1">
				<h2 align="center">Quotation1</h2>
				<table>
					<tr>
						<th>Name : </th>
						<td><?php echo $_POST['name']; ?></td>
					</tr>
					<tr>
						<th>Phone : </th>
						<td><?php echo $_POST['phone']; ?></td>
					</tr>
					<tr>
						<th>Type of Event : </th>
						<td><?php echo $_POST['type_event']; ?></td>
					</tr>
					<tr>
						<th>Venues : </th>
						<td><ul><?php echo $venue[0]; ?></ul></td>
					</tr>
					<tr>
						<th>Caterer : </th>
						<td><ul><?php echo $caterer[0]; ?></ul></td>
					</tr>
					<tr>
						<th>Decorator : </th>
						<td><ul><?php echo $decorator[0]; ?></ul></td>
					</tr>
					<tr>
						<th>Performer : </th>
						<td><ul><?php echo $performer[0]; ?></ul></td>
					</tr>
					<tr>
						<th>Budget : </th>
						<td><ul><?php echo $budget[0]; ?></ul></td>
					</tr>
				</table>
				<input type="submit" onclick="printDiv('print1')" class="btn btn-primary " name="print" value="Print">
			</div>
			<div class="col-4" id="print2">
				<h2 align="center">Quotation2</h2>
				<table>
					<tr>
						<th>Name : </th>
						<td><?php echo $_POST['name']; ?></td>
					</tr>
					<tr>
						<th>Phone : </th>
						<td><?php echo $_POST['phone']; ?></td>
					</tr>
					<tr>
						<th>Type of Event : </th>
						<td><?php echo $_POST['type_event']; ?></td>
					</tr>
					<tr>
						<th>Venues : </th>
						<td><ul><?php echo $venue[1]; ?></ul></td>
					</tr>
					<tr>
						<th>Caterer : </th>
						<td><ul><?php echo $caterer[1]; ?></ul></td>
					</tr>
					<tr>
						<th>Decorator : </th>
						<td><ul><?php echo $decorator[1]; ?></ul></td>
					</tr>
					<tr>
						<th>Performer : </th>
						<td><ul><?php echo $performer[1]; ?></ul></td>
					</tr>
					<tr>
						<th>Budget : </th>
						<td><ul><?php echo $budget[1]; ?></ul></td>
					</tr>
				</table>
				<input type="submit" onclick="printDiv('print2')" class="btn btn-primary" name="print" value="Print">
			</div>
			<div class="col-4" id="print3">
				<h2 align="center">Quotation3</h2>
				<table>
					<tr>
						<th>Name : </th>
						<td><?php echo $_POST['name']; ?></td>
					</tr>
					<tr>
						<th>Phone : </th>
						<td><?php echo $_POST['phone']; ?></td>
					</tr>
					<tr>
						<th>Type of Event : </th>
						<td><?php echo $_POST['type_event']; ?></td>
					</tr>
					<tr>
						<th>Venues : </th>
						<td><ul><?php echo $venue[2]; ?></ul></td>
					</tr>
					<tr>
						<th>Caterer : </th>
						<td><ul><?php echo $caterer[2]; ?></ul></td>
					</tr>
					<tr>
						<th>Decorator : </th>
						<td><ul><?php echo $decorator[2]; ?></ul></td>
					</tr>
					<tr>
						<th>Performer : </th>
						<td><ul><?php echo $performer[2]; ?></ul></td>
					</tr>
					<tr>
						<th>Budget : </th>
						<td><ul><?php echo $budget[2]; ?></ul></td>
					</tr>
				</table>
				<input type="submit" onclick="printDiv('print3')" class="btn btn-primary" name="print" value="Print">
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
	<script>
		function printDiv(divName) {
			 var printContents = document.getElementById(divName).innerHTML;
			 var originalContents = document.body.innerHTML;

			 document.body.innerHTML = printContents;

			 window.print();

			 document.body.innerHTML = originalContents;
		}
	</script>
  </body>
</html>

