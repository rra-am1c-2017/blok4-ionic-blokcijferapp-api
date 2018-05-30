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
  $absence = sanitize($_POST['absence']);
  $id = sanitize($_POST['id']);

  $sql ="UPDATE `users` 
         SET `absence` = '" . $absence . "' 
         WHERE `id` = " . $id;

  $result = mysqli_query($conn, $sql);

  if ($result) {
    // echo "{'message': 'Woonplaats gewijzigd'}";
    $message = [['message' => 'Absence gewijzigd']];
    echo json_encode($message);
  } else {
    // echo "{'message': 'Error: Woonplaats ongewijzigd'}"; 
    $message = [['message' => 'Error: Absence ongewijzigd']];
    echo json_encode($message);           
  };

?>