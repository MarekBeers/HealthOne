<?php
if (isset($_POST['submit'])) {
    $naam = filter_var($_POST['Naam'], FILTER_SANITIZE_STRING);
    $fabrikant = filter_var($_POST['Fabrikant'], FILTER_SANITIZE_STRING);
    $vergoeding = filter_var($_POST['Vergoeding'], FILTER_SANITIZE_STRING);
    $bijwerking = filter_var($_POST['Bijwerking'], FILTER_SANITIZE_STRING);
    $effect = filter_var($_POST['Effect'], FILTER_SANITIZE_STRING);
    $prijs = filter_var($_POST['Prijs'], FILTER_SANITIZE_STRING);

    if ($vergoeding == "Vergoed"){
        $vergoeding = "1";
    }
    else{
        $vergoeding = "0";
    }

    echo $vergoeding;

    $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
    $query = $db->prepare("insert into medicijn (naam, fabrikant, vergoeding, bijwerkingen, effect, prijs) values ('$naam', '$fabrikant', '$vergoeding', '$bijwerking', '$effect','$prijs');");
    $query->execute();
    echo($query->queryString);
    header("Location: ../../overzicht.php");
}
?>