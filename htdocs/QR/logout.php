<?php  
session_start();
$conn=mysqli_connect("localhost","root","","qrsystem");

date_default_timezone_set("Asia/Kolkata");   

if(isset($_POST['btn1']))
{

	 $cdate=date("Y-m-d");  
     $ctime=date("H:i:s");
	$sql="update caltime set date2='".$cdate."',time2='".$ctime."' where prn='".$_SESSION['prn']."';";
	$sql .="update student set status='1' where prn='".$_SESSION['prn']."'";
	if(mysqli_multi_query($conn,$sql))
	{
		session_unset();
        session_destroy();
       header("location:prnpage.php");
	}
	else
	{
        echo "error".mysqli_error($conn);
	}
}


?>

<!DOCTYPE html>
<html>
<head>
	<title>Welcome To Our System</title>
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<style type="text/css">
		.container
		{
			padding: 50px;
			background-color: whitesmoke;
			margin-top: 50px;
		}
	</style>
</head>
<body>
	<div class="container">
	
<form action="logout.php" method="post">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8" style="background-color: white;padding: 30px">
			<div class="row">
			<h1>Welcome to System Plz click Logout button to exit from system </h1>
				<div class="col-sm-12">
			<input type="submit" name="btn1" value="Logout" class="btn btn-danger">
			</div>

</div>
		</div>
		<div class="col-sm-2"></div>
	</div>

</form>
</div>
</body>
</html>