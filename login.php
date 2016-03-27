<?php 
require_once 'init.php';


$user_array = handle_user_requst();


	if (isset($_POST['regis'])) {
		 
	register_user($user_array);

}

	if (isset($_POST['sigin'])) {
		
	login_user($user_array);
	include "tpl/mes.html";
}
	

$tablice=mysqli_query($conn, "SELECT imya,last FROM juser ORDER BY last DESC LIMIT 5");
$bester=mysqli_query($conn, "SELECT best FROM juser WHERE id={$user['id']}");
$besters=mysqli_fetch_array($bester);




include ("tpl/main.html");
include ("tpl/carus.html");

 include ("tpl/footer.html"); 

?>

