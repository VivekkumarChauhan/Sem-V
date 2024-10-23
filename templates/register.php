<?php
	include_once 'config.php';
 ?>
 

<?php 
     $name = $_POST["signup_username"];
	 $mail =  $_POST["signup_email"];
	 $pwd  = $_POST["signup_password"];
	 
	  
	   $sql = "INSERT INTO new_register(id,signup_username,signup_email,signup_password )VALUES ('','$name','$mail','$pwd')";
	
	  
	  //$sql = insert into item(Item_name,Item_description,Price,Quantity,Item_code('$name','$des','$price','$qty','$code')
	  
	  if(mysqli_query($conn,$sql)) {
		  echo "<script> alert('Record inserted successfully!!!')</script>";
		  header("Location:home.html");
	  }
	  else{
		  echo"<script>alert('Error in ')</script>";
	  }
	  
	  mysqli_close($conn);
  ?>
