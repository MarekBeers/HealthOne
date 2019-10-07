<?php
$db = new PDO("mysql:host=localhost;dbname=healthone","root","");
$query = $db->prepare("UPDATE `recept` SET `afgehandeld`='1' WHERE recept_id=".$_GET['id']);
$query->execute();
header("Location: ../index.php");

