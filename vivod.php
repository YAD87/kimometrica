<?php
require "init.php";


$vib=mysqli_query($conn, "SELECT path1,id FROM kinopath ORDER BY RAND() LIMIT 1");

//$real=mysqli_query($conn, "SELECT name FROM kinoname WHERE id.kinoname=id.kinopath");
$row=mysqli_fetch_array($vib);

$slop=$row['path1'] ;
$slopi=$row['id'] ;// ай ди выбрайнной картинки
$nazva=mysqli_query($conn, "SELECT name,id FROM kinoname WHERE id!={$slopi} ORDER BY RAND() LIMIT 4");
$row2=mysqli_fetch_array($nazva);
$slop2=$row2['name'];
$real=mysqli_query($conn, "SELECT name,id FROM kinoname WHERE id={$slopi}");
  	$row3=mysqli_fetch_array($real);

if (isset($_COOKIE['counter'])) {
	setcookie('counter',++$_COOKIE['counter']);
} else {
	setcookie('counter',0);
}





$i=0;
while($myrow777 = mysqli_fetch_assoc($nazva)) {
$arrow[] = $myrow777['name']."<br>";// запись в массив 4 выбранных названий
$arrow1[]=$myrow777['id'];
$i++; }  

  
  	$arrow[3]=$row3['name'];// поместить в третий элемент значение правильного ответа
//var_dump($arrow);
    $arrow2=$arrow;// присвоить массиву ар2 массив исходный массив ар
    shuffle($arrow2);
   
  // перемешать массив ар2

if(isset($_POST["p1"])) {
 	$otvet=$_POST["p1"];
  	$uzi=mysqli_query($conn, "SELECT id FROM kinoname WHERE name='{$otvet}'");
  	//$begin=mysqli_query($conn, "INSERT INTO juser(ochki) VALUES (0) WHERE id={$user['id']}");
 	$klop=mysqli_fetch_array($uzi);
 	
 	$flopi=$klop['id'];
 	
 			if ($flopi!=NULL) {
 // если значение ответа равно значениею третьего элемента исходного массива ар
    $rate=mysqli_query($conn, "UPDATE juser SET ochki = ochki + 1 WHERE id={$user['id']}");
    $best=mysqli_query($conn, "UPDATE juser SET best = best + 1 WHERE id={$user['id']}");
    $last=mysqli_query($conn, "UPDATE juser SET last = ochki  WHERE id={$user['id']}");

    

    		header('Location:vivod.php');// редирект и следующая картинка
     				}

 		else	{
 		?>
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<script>
		$(document).ready(function(){
  //при нажатию на любую кнопку, имеющую класс .btn
  
    //открыть модальное окно с id="myModal"
    	$("#modal-id").modal('show');
  		});
		</script>
 		<?php 

 //unset($_COOKIE['counter']);
  		
  				
 		//$redk=mysqli_query($conn, "UPDATE kinoname SET redk=redk+1 WHERE id={$slopi}");( вариант добавления бала 
 		//для самого сожного кадра)
  				}
  				
 	                                  
 

}
$ochki=mysqli_query($conn, "SELECT ochki FROM juser WHERE id={$user['id']}");
$schet=mysqli_fetch_array($ochki);

$schet2=$schet['ochki'];

$last=mysqli_query($conn, "UPDATE juser SET last = ochki  WHERE id={$user['id']}");




if(isset($_POST["raz"])) {
  			
$ratet=mysqli_query($conn, "UPDATE juser SET ochki =0 WHERE id={$user['id']}");

}


include "tpl/vivod.html"
 
?> 













