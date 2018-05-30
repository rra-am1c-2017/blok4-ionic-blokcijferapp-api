<?php
  function sanitize($data) {
    // Het weghalen van alle spaties links en rechts van de string en meerdere spaties in het midden
    $data = trim($data); 
    // addslashes escaped (onschadelijk maken) een enkele quote', een dubbele quote " en 
    // backslashes \
    $data = addslashes($data);
    // Deze functie zet alle html characters om naar html entities
    $data = htmlspecialchars($data);
    return $data;
  }

  // Maak contact met de database
  include("./db_connect.php");

  // Maak de $_POST vars schoon
  $residence = sanitize($_POST['residence']);
  $id = sanitize($_POST['id']);

  $sql ="UPDATE `users` 
         SET `residence` = '" . $residence . "' 
         WHERE `id` = " . $id;

  $result = mysqli_query($conn, $sql);

  echo $result;

?>