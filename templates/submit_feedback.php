<?php
	include_once 'config.php';
 ?>
 

<?php 
     $name = $_POST["name"];
	 $mail =  $_POST["email"];
	 $message  = $_POST["message"];
	 
	  
	   $sql = "INSERT INTO submit_feedback(id,name,email,message)VALUES ('','$name','$mail','$message')";
	
	  
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
