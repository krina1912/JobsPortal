<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		
	    <div class="navbar-header container d-flex justify-content-center">
	        <button type="button" class="btn btn-primary btn-lg btn-block navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">RecruitHub</span>
		       
	        </button>
			<!-- <button type="button" class="btn btn-secondary dropdown-toggle collapsed" data-toggle="collapse" data-target="bs-example-navbar-collapse-1 " aria-haspopup="true" aria-expanded="false">
		        <span class="sr-only">RecruitHub</span> </button> -->
	        <!-- <a class="navbar-brand" href="index.php"><img src="images/logo.png" alt=""></a> -->
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		
				   <?php 

                           error_reporting(0);

						  session_start();
						  $type = $_SESSION['type'];

						  if($type == 1){
							  echo '
							  <li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="admin.php">Dashboard</a></li>
							  <li><a  class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="categories.php">Categories</a></li>
							  <li><a  class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="uploadjob.php">Jobs</a></li>
								<li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="application.php">View Application</a></li>
								<li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="logout.php">Logout</a></li>
							  ';
						  }else if($type == 2){
							echo '
							      <li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="index.php">Home</a></li>
							      <li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="viewappjob.php">View Applied Job</a></li>
							      <li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="logout.php">Logout</a></li>
							';
						  }else{
							  echo '
							  <li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="login.php">Login</a></li>
						      <li><a class="d-flex justify-content-center" style="text-decoration:none; color:black; font-size: 20px;" href="register.php">Register</a></li>
							  ';
						  }
				   ?>
				       
			         	
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>