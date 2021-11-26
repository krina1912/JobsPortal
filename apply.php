


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apply Job | Jobs Portal</title>
    <?php 
    
    include('header_link.php'); 
    include('dbconnect.php'); 
    



    ?>
</head>
<body>

<?php 
    
    include('header.php');

    if(!isset( $_SESSION['userid'] ) ){
        header('Location: login.php');
      } 
      
    $jobid = $_GET['jobid'];
    $userid = $_SESSION['userid'];

    ?>

    <div class="container">


      <div class="single my-2">
      <h3>Apply for Job </h3>
      <h5>Upload CV</h5>
            <div class="col-md-6 ">
                 <form action="apply.php" method="post" enctype="multipart/form-data">

                   <input type="hidden" value="<?=$jobid?>" name="jobid" >
                   <input type="hidden" value="<?=$userid?>" name="userid" >
     
                    <div class="form-group my-2">
                    <input type="file"  name="file" class="form-control"> 
                    </div>
                    
                    <input type="submit"  name="applyjob" value="Apply" class="btn btn-success">

                 </form>
              

            </div>

      </div>
 

       <?php 
 
           if(isset($_POST['applyjob']))
           {

        

            $userid = $_POST['userid'];
            $jobid = $_POST['jobid'];
            $date = date('d/m/y');
            

             $file = $_FILES['file']['name'];
             $tmp = $_FILES['file']['tmp_name'];


              move_uploaded_file($tmp, "cv/$file");

           $sql = "INSERT INTO `application`(`userid`, `jobid`, `cv`, `date`) VALUES ('$userid','$jobid','$file','$date')";
           mysqli_query($con,$sql);
           
        

           echo "<script>alert('Apply Job')</script>";

           header('Location: index.php');

        }
?>

    
</div>

<br><br>
 <?php include('footer.php'); ?>


</body>
</html>