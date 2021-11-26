<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Jobs Portal</title>
    <?php 
    
    include('header_link.php'); 
    include('dbconnect.php');

    
    
    ?>
</head>
<body>
<?php 
    
    include('header.php'); 

    ?>
<div class="container my-3">


      <div class="single">
           
            <div class="col-md-6">
            <h3>Employer Registration</h3>

                 <form action="register.php" method="post">

                     <div class="form-group my-2">
                     <input type="text" placeholder="Enter your name" name="name" class="form-control"> 
                     </div>
                     <div class="form-group my-2">
                    <input type="text" placeholder="Enter your email" name="email" class="form-control">
                    </div>
                    <div class="form-group my-2">
                    <input type="password" placeholder="Enter password" name="password" class="form-control">
                    </div>
                    <input type="submit"  name="empregister" value="Register Employer" class="btn btn-success">

                 </form>
              

            </div>
            <br><br>

            <div class="col-md-6">
            <h3>User Registration</h3> 
                 <form action="register.php" method="post">

                     <div class="form-group my-2">
                     <input type="text" placeholder="Enter your Name" name="name" class="form-control"> 
                     </div>
                     <div class="form-group my-2">
                    <input type="text" placeholder="Enter your email" name="email" class="form-control ">
                    </div>
                    <div class="form-group my-2">
                    <input type="password" placeholder="Enter password" name="password" class="form-control">
                    </div>
                    
                    <input type="submit"  name="userregister" value="Register User" class="btn btn-success">

                 </form>
              

            </div>
      </div>
 

       <?php 

           if(isset($_POST['empregister']))
           {

            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];

           $sql = "INSERT INTO `employer`( `name`, `email`, `password`, `type`) VALUES ('$name','$email','$password','1')";
           mysqli_query($con,$sql);
           


           echo "<script>alert('Employer Register')</script>";

        }

        if(isset($_POST['userregister']))
        {

         $name = $_POST['name'];
         $email = $_POST['email'];
         $password = $_POST['password'];

  
        $sql2 = "INSERT INTO `user`(`name`, `email`, `password`, `type`) VALUES ('$name','$email','$password','2')";
        mysqli_query($con,$sql2);
       

        echo "<script>alert('User Register')</script>";

     }

?>

 </div>
 <br><br>
 <?php include('footer.php'); ?>

</body>
</html>