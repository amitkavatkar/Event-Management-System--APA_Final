<?php
	session_start();
	require 'db.php';
	// if(!isset($_SESSION['username'])){
	// 	header('Location: login.php');
	// }
	
	
	if(isset($_POST['submit'])){
		$sqlinsert = "INSERT INTO enquiery(Name, Email, Phone, Address, TypeEvent, LocationEvent, Attendees, Budget, Date, ServicesReuired) ".
						"VALUES('".$_POST['name']."', '".$_POST['email']."', '".$_POST['phone']."', '".$_POST['address']."', '".$_POST['type_event']."', '".$_POST['location_event']."', '".$_POST['attendees']."', '".$_POST['budget']."', '".$_POST['date']."', '".$_POST['service']."')";
		$resultinsert = mysqli_query($con, $sqlinsert); 
		if(!$resultinsert){
			echo "Error in record updating".mysqli_error($con);
		}
		if($resultinsert) {
?>
<script type='text/javascript'>alert('submitted successfully!')</script>
<?php
		}
		else
		{
		    echo "<script type='text/javascript'>alert('failed!')</script>";
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

    <title>APA - ENQUIRY</title>

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
			<div class="col-3" >
			</div>
			<div class="col-9" >
					<form autocomplete="off" class="well form-horizontal" action="enquir.php" method="post"  id="enquiery_form" >
						

						<!-- Form Name -->
						<legend>ENQUIRY</legend>

						<!-- Text input-->

						<div class="form-group">
						  <label class="col-7 control-label">Name *</label>  
						  <div class="col-7 inputGroupContainer">
						  <div class="input-group">
						  <input  name="name" placeholder="Name" class="form-control" required type="text">
							</div>
						  </div>
						</div>

						<!-- Text input-->
							   <div class="form-group">
						  <label class="col-7 control-label">E-Mail *</label>  
							<div class="col-7 inputGroupContainer">
							<div class="input-group">
						  <input name="email" placeholder="E-Mail Address" class="form-control" required type="email">
							</div>
						  </div>
						</div>


						<!-- Text input-->
							   
						<div class="form-group">
						  <label class="col-7 control-label">Phone *</label>  
							<div class="col-7 inputGroupContainer">
							<div class="input-group">
						  <input name="phone" placeholder="(845)555-1212" class="form-control" required type="text">
							</div>
						  </div>
						</div>

						<!-- Text input-->
							  
						<div class="form-group">
						  <label class="col-7 control-label">Address *</label>  
							<div class="col-7 inputGroupContainer">
							<div class="input-group">
						  <input name="address" placeholder="Address" class="form-control" required type="text">
							</div>
						  </div>
						</div>
					
						<!-- Text input-->

						<div class="form-group">
						  <label class="col-7 control-label">Type of Event *</label>  
							<div class="col-7 inputGroupContainer">
							<div class="input-group">
						<select name="type_event" class="form-control selectpicker" required>
						  	  <option value="0" >Please select Event Type</option>
							  <option value="birthday">Birthday</option>
							  <option value="marriage">Marriage</option>
							  <option value="anniversery">Annivesery</option>
							  <option value="djnight">DJ Night</option>
						</select>
							</div>
						</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
						  <label class="col-7 control-label">Location of Events</label>  
						   <div class="col-7 inputGroupContainer">
							<div class="input-group">
						  <input name="location_event" placeholder="Location of Events" required class="form-control" type="text">
							</div>
						  </div>
						</div>
						
						<!-- Text input-->
						<div class="form-group">
						  <label class="col-7 control-label">Number of Attendees</label>  
						   <div class="col-7 inputGroupContainer">
							<div class="input-group">
						  <input name="attendees" placeholder="Number of Attendees" required class="form-control" type="text">
							</div>
						  </div>
						</div>
						
						<!-- Text input-->
						<div class="form-group">
						  <label class="col-7 control-label">Budget *</label>  
						   <div class="col-7 inputGroupContainer">
							<div class="input-group">
						  <input name="budget" placeholder="Budget" required class="form-control" type="text">
							</div>
						  </div>
						</div>
						
						<!-- Text input-->
						<div class="form-group">
						  <label class="col-7 control-label">Date *</label>  
						   <div class="col-7 inputGroupContainer">
							<div class="input-group">
						  <input name="date" placeholder="DD/MM/YYYY" required class="form-control" type="date">
							</div>
						  </div>
						</div>
						
						
						<!-- Button -->
						<div class="form-group">
						  <label class="col-7 control-label"></label>
						  <div class="col-7">
							<input type="submit" class="btn btn-warning" name="submit" value="submit">
						  </div>
						</div>

						
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

