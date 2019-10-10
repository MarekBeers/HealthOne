<?php
session_start();
$functie = "verzekeringsmedewerker";
if($_SESSION['functie'] != $functie) {
    header('Location: ../401.php');
};
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HealthOne</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../css/index.css">
</head>
<body>
<div class="container">
    <div class="jumbotron text-center">
    <div class="row">
        <div class="col-sm-3">
            <img class="d-none d-sm-block img-fluid" src="../../../img/healthtwo_text_transparent.png" alt="Logo">
            <img class="d-block d-sm-none img-fluid" src="../../../img/placeholder.png" alt="Logo">
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-sm bg-light navbar-light sticky-top">
    <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="../../../index.php">
        <img class="navbrand" src="../../../img/healthtwo_logo_transparent.png" alt="Logo">
    </a>
    <div class="collapse navbar-collapse" id="collapse_target">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="../../../index.php">Home</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#">Inloggen</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../../../contact.php">Contact</a>
            </li>
        </ul>
    </div>
</nav>
<form>
    <div class="form-group">
    <label for="Naam">Naam</label>
        <input class="form-control" id="Naam" type="text" placeholder="Naam">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Email adres</label>
        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
    </div>
    <div class="form-group">
    <label for="Adres">Adres</label>
    <input class="form-control" id="Adres" type="text" placeholder="Adres">
    </div>
    <div class="form-group">
    <label for="Telefoonnummer">Telefoonnummer</label>
    <input class="form-control" id="Telefoonnummer" type="text" placeholder="Telefoonnummer">
    </div>
    <div class="form-group">
    <label for="Arts">Arts</label>
    <input class="form-control" id="Arts" type="text" placeholder="Arts">
    </div>
    <div class="form-group">
    <label for="Verzekeringsnummmer">Verzekeringsnummmer</label>
    <input class="form-control" id="Verzekeringsnummmer" type="text" placeholder="Verzekeringsnummmer">
    </div>
    <button type="submit" class="btn btn-primary">Verstuur</button>
</form>


</div>
    <footer class="py-4 bg-light text-dark-50 text-center">
        <small>Copyright <em class="text-danger"> &copy; </em>Zilveren Kruis</small>
    </footer>
</body>
</html>