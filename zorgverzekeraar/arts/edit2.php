<?php
if (isset($_POST['submit'])) {
    $name = filter_var($_POST['naam'], FILTER_SANITIZE_STRING);
    $email = filter_var($_POST['emailadres'], FILTER_SANITIZE_EMAIL);
    $adres = filter_var($_POST['adres'], FILTER_SANITIZE_STRING);
    $telefoonnummer = filter_var($_POST['telefoonnummer'], FILTER_SANITIZE_NUMBER_INT);
    $geboortedatum = filter_var($_POST['geboortedatum'], FILTER_SANITIZE_STRING);
    $verzekeringnummer = filter_var($_POST['verzekeringnummer'], FILTER_SANITIZE_STRING);


//    echo "Name: " . $name;
//    echo "Email: " . $email;
//    echo "Adres: " . $adres;
//    echo "Phone Number: " . $telefoonnummer;
//    echo "Verz. Nummer: " . $verzekeringnummer;
    $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
    $query = $db->prepare("UPDATE arts SET naam='$name',adres='$adres',telefoon = '$telefoonnummer' WHERE id =" . $_GET['id']);
    $query->execute();
    echo($query->queryString);
}