<?php 
$conn=mysqli_connect("localhost","root","","qrsystem");


if(isset($_POST['btn']))
{
	
	$sql="update student set status='0' where prn='".$_POST['prn']."'";
	if(mysqli_query($conn,$sql))
	{	
		header('location:welcomepage.php');
	}
	else
	{
		echo "not updeted";
	}
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Start Here...!</title>
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<style type="">
		.container
		{
			background-color: whitesmoke;
			padding: 20px;
			margin-top: 50px; 
		}
		.login
		{
			margin-top: 100px;
			margin-bottom: 100px;
		}
	</style>
</head>
<body>
	<div class="container">

	<form action="startlogin.php" method="post">
		<div class="row login">
			<div class="col-sm-3"></div>
			<div class="col-sm-6" style="background-color: white;padding: 30px;">
				<div class="col-sm-12">
				<h3>Start Login</h3>
				<br>
				<div class="row">
			<div class="col-sm-12">
				<input type="text" name="prn" placeholder="Enter Prn" class="form-control">
			</div>
		</div>
		<br><br>
		<div class="row">
			<div class="col-sm-12">
				<input type="submit" value="Start Here" name="btn" class="btn btn-primary">
			</div>
		</div>
		 </div> 
			</div>
			<div class="col-sm-3"></div>
		</div>
		
	</form>
    </div>
        

</body>
</html>