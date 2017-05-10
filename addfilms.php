<?php


require 'init.php';



$fotos_dir="foto/";
$foto_name = $fotos_dir.time()."_.jpg";
//."_".basename($_POST['nazv'].".jpg");
//$light_name= time()."_".basename($_POST['nazv']);
$tagspic="<img src=\"$foto_name\" border=\"0\">'";


 if (!empty($_POST['nazv'])) {
	$a=$_POST['nazv'];
	$b=$_FILES['f'];

if (copy($_FILES['f']['tmp_name'], $foto_name))
{
	echo "Файл успешно загружен";
}
else { echo "Ошибка не удалось";

exit;
}

$z=mysqli_query($conn,
	"INSERT INTO kinoname(name) VALUES ('$a') ");

$zp=mysqli_query($conn,
	"INSERT INTO kinopath (path1) VALUES ('$foto_name') ");
 


}
?>



<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Добавьте фильм</title>

		<!-- Bootstrap CSS -->
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="style11.css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container">
			<div class="row">
		<div class="panel panel-primary">
	<div class="panel-heading" style="background-color:#333">
		<h3 class="panel-title">Введите название и загрузите кадр</h3>
	</div>
		<form enctype="multipart/form-data" action="" method="POST" role="form">
			
		<div class="panel-body" style="background-color:#e2e3e4">
			
			<input type="text" name="nazv" id="input" class="form-control" value=""  title="">
			<p><input type="file" name="f">

		
			
		
			<button type="submit" class="btn btn-primary">Submit</button>
			<a style="color:white" href="login.php"><button type="button"  class="btn btn-success">На Кинометрику</button></a>
		</form>
		</div>
</div>
<div class="container">
			<div class="row">

		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</body>
</html>







