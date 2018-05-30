<?php
  // De logingegevens voor de mysql-database
  define("SERVER_NAME", "localhost");
  define("USER_NAME","root");
  define("PASSWORD","");
  define("DATABASE_NAME","am1c-ionic");
  
  // We maken contact met de mysql-server
  $conn = mysqli_connect(SERVER_NAME, USER_NAME, PASSWORD, DATABASE_NAME);
?>