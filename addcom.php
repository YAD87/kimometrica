<?php

require 'init.php';
if (!empty($_POST['comment'])) {

	$post=$_POST['comment'];
    $namespost=$user['imya'];
	$postig=mysqli_query($conn, "INSERT INTO soob(posts,name) VALUES('$post','$namespost')");

	
	

	
	
	

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
		<h3 class="panel-title"> добавьте ваш коммент</h3>
	</div>
		<form  method="POST" role="form">
			
		<div class="panel-body" style="background-color:#e2e3e4">
			
		
			<p><textarea name="comment" id="inputComment" class="form-control" rows="4" required="required"></textarea>

		
			
		
			<button type="submit" class="btn btn-primary">Submit</button>
			<a style="color:white" href="login.php"><button type="button"  class="btn btn-success">На Кинометрику</button></a>
		</form>
		</div>
</div>
				

		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</body>
</html>