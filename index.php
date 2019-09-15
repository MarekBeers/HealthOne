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
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
    <div class="container">
        <div class="jumbotron text-center" ">
            <div class="row">
                <div class="col-sm-3">
                    <img class="d-none d-sm-block img-fluid" src="img/zilverenkruis.png" alt="Logo">
                    <img class="d-block d-sm-none img-fluid" src="img/placeholder.png" alt="Logo">
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-sm bg-light navbar-light sticky-top">
            <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="index.php">
                <img class="navbrand" src="img/zilverenkruis.png" alt="Logo">
            </a>
            <div class="collapse navbar-collapse" id="collapse_target">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Inloggen</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row text-center">

            <div class="col-sm-4">
                <a href="contact.php">
                    <img class="img-fluid" src="img/doctor.png">
                    <h3>Doctor</h3>
                    <p>De docter kan uw gegevens inzien en aan passen en toevoegen.</p>
                </a>
            </div>

            <div class="col-sm-4">
                <a href="contact.php">
                    <img class="img-fluid" src="img/apotheker.png">
                    <h3>Apotheker</h3>
                    <p>Kan recepten inzien die de doctor heeft voorgeschreven.</p>
                </a>
            </div>
            <div class="col-sm-4">
                <a href="contact.php">
                    <img class="img-fluid" src="img/verzekeraar.png">
                    <h3>Zorgverzekeraar</h3>
                    <p>Kan alles in zien voor het verzekeren voor de bedragen.</p>
                </a>
            </div>
        </div>
        <footer id="sticky-footer" class="py-4 bg-light text-dark-50">
            <div class="container text-center">
                <small>Copyright &copy; Zilverenkruis</small>
            </div>
        </footer>
    </div>
</body>
</html>