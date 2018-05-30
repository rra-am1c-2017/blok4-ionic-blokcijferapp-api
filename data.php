<?php
  // Cors beveiliging opheffen
  header("Access-Control-Allow-Origin: *");
  // Maak contact met de database
  include("./db_connect.php");
  
  // Maak een query
  $sql = "SELECT * FROM `users`";

  // Vuur de query af op de database
  $result = mysqli_query($conn, $sql);

  // Zet de data in een php-array
  $records = mysqli_fetch_all($result, MYSQLI_ASSOC);

  // Zet de data om in een array van javascriptobjecten.
  echo json_encode($records);
?>