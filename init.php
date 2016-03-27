<?php
session_start();

$conn =mysqli_connect('localhost', 'root', '', 'kino');

$user = isset($_SESSION['user']) ? $_SESSION['user'] : NULL;
require 'func.php';