<?php 
include 'header.php';
$conn=mysqli_connect("localhost","root","","qrsystem");
session_start();
if(isset($_POST['submit']))
{
	$sql="insert into student(name,address,contact,email,prn,class,dept,status)values('".$_POST['fname']."','".$_POST['address']."','".$_POST['contact']."','".$_POST['email']."','".$_POST['prn']."','".$_POST['class']."','".$_POST['dept']."','1')";
	if(mysqli_query($conn,$sql))
	{	
        echo "Inserted";
	}
	else
	{
		echo "Not Inserted";
	}
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login Here...!</title>
	
	<style type="">
		.container
		{
			background-color: whitesmoke;
			padding: 20px;
			margin-top: 50px; 
		}
	</style>
</head>
<body>
	<div class="container">

	<form action="add_student.php" method="post">
		<div class="row">
		
			<div class="col-sm-12">
				<h3>Add Student</h3>
				<br>
				<div class="row">
			<div class="col-sm-12">
				<input type="text" name="fname" placeholder="Enter Name" class="form-control">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="text" name="address" placeholder="Enter Address" class="form-control">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="text" name="contact" placeholder="Enter Contact" class="form-control">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="email" name="email" placeholder="Enter Email" class="form-control">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="text" name="prn" placeholder="Enter Prn" class="form-control">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="text" name="class" placeholder="Enter Class" class="form-control">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="text" name="dept" placeholder="Enter Department" class="form-control">
			</div>
		</div>
		
		
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="submit" value="Submit" name="submit" class="btn btn-primary">
				<input type="submit" value="Cancel" name="cancel" class="btn btn-danger">
			</div>
		</div>
		 </div>  
		 
		 </div> 
	</form>
    </div>
        

</body>
</html>