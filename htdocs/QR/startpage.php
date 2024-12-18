<?php  
session_start();
$conn=mysqli_connect("localhost","root","","qrsystem");

date_default_timezone_set("Asia/Kolkata");   
  
if(isset($_POST['btn']))
{

$cdate=date("Y-m-d");  
$ctime=date("H:i:s");

	$sql="insert into caltime(name,contact,prn,email,class,dept,date1,time1)values('".$_SESSION['name']."','".$_SESSION['contact']."','".$_SESSION['prn']."','".$_SESSION['email']."','".$_SESSION['class']."','".$_SESSION['dept']."','".$cdate."','".$ctime."')";
	if(mysqli_query($conn,$sql))
	{
       header("location:logout.php");
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
		.login
		{
			margin-top: 100px;
			margin-bottom: 100px;
		}
	</style>
</head>
<body>
	<div class="container">
	
<form action="startpage.php" method="post">
<div class="row login">
	<div class="col-sm-2"></div>
	<div class="col-sm-8" style="background-color: white;padding: 30px;">
		<h1>Welcome to System Plz click submit button to start your system </h1>
<input type="submit" name="btn" class="btn btn-success">

</div>
<div class="col-sm-2"></div>
</div>
</form>
</div>
</body>
</html>