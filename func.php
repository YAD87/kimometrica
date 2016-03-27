<?php


function handle_user_requst(){

	if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['imya'], $_POST['pass'])) {
		return array(
			'name' => $_POST['imya'], 
			'pass' => $_POST['pass']
		);
	}

	return NULL;
}


function register_user($user_array){
	global $conn;
	$name = $user_array['name'];
	$is_admin = $name === 'admin' ? 1 : 0;
	$pass =$user_array['pass'];

	mysqli_query($conn, 
		"INSERT INTO juser(imya, passw) VALUES('{$name}', '{$pass}')");
	if(!mysqli_error($conn)){
		header('Location: login.php');
		exit();
	} else {
		echo mysqli_error($conn);
	}


}


function login_user($user_array){
	global $conn;
	$user = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM juser WHERE imya = '{$user_array['name']}'"));
	// var_dump(password_verify($user_array['pass'], '$2y$10$nwphZflrWEUIUMqU4EXdKuVHbwbFLNwpqS.Mf78dlik'));
	if ($user){
		//unset($user['pass']);
		$_SESSION['user'] = $user;
		header('Location:login.php');
		exit();
	}
}

function logout_user(){
	//mysqli_query($conn, "UPDATE juser SET ochki =0 WHERE id={$user['id']}"); очитка счета при логауте
	session_destroy();
	header('Location: login.php');
	exit();
}





