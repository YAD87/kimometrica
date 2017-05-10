<?php
session_start();

$conn =mysqli_connect('mysqldb', 'root', 'root', 'kino');

$user = isset($_SESSION['user']) ? $_SESSION['user'] : NULL;
require 'func.php';
