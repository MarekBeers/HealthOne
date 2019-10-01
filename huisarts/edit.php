<!--
TODO: Probleem met het parsen van adres en naam (achternaam)
-->
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
        <link rel="stylesheet" href="../css/index.css">
    </head>
    <body>
        <div class="container">
            <div class="jumbotron text-center" ">
            <div class="row">
                <div class="col-sm-3">
                    <img class="d-none d-sm-block img-fluid" src="../img/healthtwo_text_transparent.png" alt="Logo">
                    <img class="d-block d-sm-none img-fluid" src="../img/placeholder.png" alt="Logo">
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-sm bg-light navbar-light sticky-top">
            <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="../index.php">
                <img class="navbrand" src="../img/healthtwo_logo_transparent.png" alt="Logo">
            </a>
            <div class="collapse navbar-collapse" id="collapse_target">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.php">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Inloggen</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../contact.php">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>
        <?php
        echo ('<form action=edit2.php?id='.$_GET['id']. ' method="POST">');
        ?>
            <div class="form-group">
                <label for="Naam">Naam</label>
                <?php
                    $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
                    $query = $db->prepare("SELECT naam from patient WHERE patient_id = " . $_GET['id']);
                    $query->execute();
                    $result = $query->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($result as &$data) {
//                        echo $data['naam'];
                        echo ('<input class="form-control" name="naam" type="text" placeholder="Naam" value='.$data['naam'].'>');
                    }
                ?>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email adres</label>
                <?php

                $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
                $query = $db->prepare("SELECT email from patient WHERE patient_id = " . $_GET['id']);
                $query->execute();
                $result = $query->fetchAll(PDO::FETCH_ASSOC);
                foreach ($result as &$data) {
                      echo ('<input type="email" class="form-control" name="emailadres" id="exampleInputEmail1" placeholder="Email" value='.$data['email'].'>');
                }
                ?>
            </div>
            <div class="form-group">
                <label for="Adres">Adres</label>
                <?php

                $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
                $query = $db->prepare("SELECT adres from patient WHERE patient_id = " . $_GET['id']);
                $query->execute();
                $result = $query->fetchAll(PDO::FETCH_ASSOC);
                foreach ($result as &$data) {
                    echo ('<input class="form-control" id="Adres" type="text" name="adres" placeholder="Adres" value='.$data['adres'].'>');
                }
                ?>
<!--                <input class="form-control" id="Adres" type="text" name="adres" placeholder="Adres">-->
            </div>
            <div class="form-group">
                <label for="Telefoonnummer">Telefoonnummer</label>
                <?php

                $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
                $query = $db->prepare("SELECT telefoon from patient WHERE patient_id = " . $_GET['id']);
                $query->execute();
                $result = $query->fetchAll(PDO::FETCH_ASSOC);
                foreach ($result as &$data) {


                    echo ('<input class="form-control" id="Telefoonnummer" type="text" name="telefoonnummer" placeholder="Telefoonnummer" value='.$data['telefoon'].'>');
                }
                ?>
            </div>
            <div class="form-group">
                <label for="geboortedatum">Geboortedatum</label>
                <?php

                $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
                $query = $db->prepare("SELECT geboortedatum from patient WHERE patient_id = " . $_GET['id']);
                $query->execute();
                $result = $query->fetchAll(PDO::FETCH_ASSOC);
                foreach ($result as &$data) {
                    echo ('<input class="form-control" name="geboortedatum" type="date" value='.$data['geboortedatum'].'>');
                }
                ?>

                <!--    <input class="form-control" id="Arts" type="text" placeholder="Arts">-->
            </div>
            <div class="form-group">
                <label for="Verzekeringsnummmer">Verzekeringsnummmer</label>
                <?php

                $db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
                $query = $db->prepare("SELECT verzekeringnummer from patient WHERE patient_id = " . $_GET['id']);
                $query->execute();
                $result = $query->fetchAll(PDO::FETCH_ASSOC);
                foreach ($result as &$data) {
                    echo ('<input class="form-control" id="verzekeringnummer" name="verzekeringnummer" type="text" placeholder="Verzekeringsnummmer" value='.$data['verzekeringnummer'].'>');
                }
                ?>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Verstuur</button>
        </form>


        </div>
        <footer class="py-4 bg-light text-dark-50 text-center">
            <small>Copyright <em class="text-danger"> &copy; </em>Zilveren Kruis</small>
        </footer>
    </body>
</html>