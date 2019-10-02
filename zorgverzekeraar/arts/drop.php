<?php
    $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
    $query = $db->prepare("DELETE FROM arts WHERE id = " . $_GET['id']);
    $query->execute();
   echo($query->queryString);
    echo("<br>Arts verwijderd.");
    header('refresh:2;url=artsen_beheer.php');
?>