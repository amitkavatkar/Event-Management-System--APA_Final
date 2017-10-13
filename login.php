<?php
	session_start();
	require 'db.php';
	
	
	if(isset($_POST['submit'])){
			$sql = "SELECT Name, Password FROM employee WHERE Name = '".$_POST['name']."'AND Password = '".$_POST['password']."'";
			$result = mysqli_query($con, $sql); 
			if (mysqli_num_rows($result) > 0) {
				session_start();
				$_SESSION["username"] = $_POST['name'];
?>
<script type="text/javascript">
window.location.href = 'admin.php';
</script>
<?php
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
			<div class="col-4">
			</div>
			<div class="col-4">
				<h4>Login(For employees only)</h4>
				<hr>
				<form autocomplete="off" method="post" action="">
					<label class="mr-sm-2" for="inlineFormCustomSelectPref">Username</label>
					<input type="text" class="form-control form-control-sm mr-sm-2" name="name" required>

					<label class="mr-sm-2" for="inlineFormCustomSelectPref">Password</label>
					<input type="password" class="form-control form-control-sm mr-sm-2" name="password" required>

					<br><br>

					<button type="submit" class="btn btn-primary btn-sm" name="submit">Submit</button>

				</form>
			</div>
			<div class="col-4">
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

