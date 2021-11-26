


<div class="container">

<div class="single">  
     
<?php


 $userid = $_SESSION['userid'];

  include('dbconnect.php');
  $sql = "select * from jobs";
  $rs = mysqli_query($con,$sql);
  while($data = mysqli_fetch_array($rs)){


    $_SESSION['jobid'] = $data['jobid'];
    $userid = $_SESSION['userid'];
?>
	   

       <div class="col-md-12" height="400px;" > 
               <div class="container my-3 border border-success rounded">
                <h2><?= $data['title'] ?></h2>
                <h5><?= $data['categories'] ?></h5>
                <h6>Desc :   <?= $data['description'] ?></h6>
                <h4>Salary :   <?= $data['salary'] ?></h4>
                <h4>Timing :   <?= $data['timing'] ?></h4>
                <h4>Location :   <?= $data['location'] ?></h4></div>

                 <?php

					$type = $_SESSION['type'];

					if($type == 2){

						echo "<a href='apply.php?jobid=".$data["jobid"]."' class='btn btn-success'>Apply Now</a>";
                
						
					}else{
						// echo '<a href="login.php" class="btn btn-outline-success"> Login </a> ';
						// echo '<a href="register.php" class="btn btn-success"> Register </a>';
					}

				 ?>
                 

        </div>



       <?php
  }
  ?>
	  
     </div>
     
         
</div>