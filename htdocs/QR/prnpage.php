<?php 
$conn=mysqli_connect("localhost","root","","qrsystem");
session_start();
if(isset($_POST['submit']))
{
	$sql=mysqli_query($conn,"select * from student where prn='".$_POST['prn']."'");
	if($row=mysqli_fetch_assoc($sql))
	{	
        $_SESSION['prn']=$_POST['prn'];
        $_SESSION['url']='http://192.168.90.137/QR/startlogin.php';
		header('location:qrgenrator.php');
	}
	else
	{
		echo "Prn not registerd";
	}
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Prn Here...!</title>
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

	<form action="prnpage.php" method="post">
		<div class="row login">
		<div class="col-sm-3"></div>
			<div class="col-sm-6" style="background-color: white;padding: 25px">
				<h3>Start Login</h3>
				<br>
				<div class="row">
			<div class="col-sm-12">
				<input type="text" name="prn" placeholder="Prn" class="form-control">
			</div>
		</div>
		<br>
		
		<br>
		<div class="row">
			<div class="col-sm-12">
				<input type="submit" value="Submit" name="submit" class="btn btn-primary">
			</div>
		</div>
		 </div>  
		 	<div class="col-sm-3"></div>
		 </div> 
	</form>
    </div>
        

</body>
</html>