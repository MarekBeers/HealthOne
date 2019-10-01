<?php
    $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
    $query = $db->prepare("DELETE FROM patient WHERE patient_id = " . $_GET['id']);
    $query->execute();
//    echo($query->queryString);
    echo("Patient verwijderd.");
    header('refresh:2;url=patienten.php');