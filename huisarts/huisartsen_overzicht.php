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
            <div class="jumbotron text-center"
            ">
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
        <div class="row text-center">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Edit</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Opc</td>
                    <td>
                        <button type="button" class="btn btn-success">Recept</button>
                        <button type="button" class="btn btn-primary">Update</button>
                        <button type="button" class="btn btn-danger">Delete</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Opc</td>
                    <td>
                        <button type="button" class="btn btn-success">Recept</button>
                        <button type="button" class="btn btn-primary">Update</button>
                        <button type="button" class="btn btn-danger">Delete</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>Opc</td>
                    <td>
                        <button type="button" class="btn btn-success">Recept</button>
                        <button type="button" class="btn btn-primary">Update</button>
                        <button type="button" class="btn btn-danger">Delete</button>
                    </td>
                </tr>
                </tbody>
            </table>
            <button class="btn btn-success"><a href="patient_aanmaken_index.php">Toevoegen</a></button>

        </div>
        </div>
        <footer class="py-4 bg-light text-dark-50 text-center">
            <small>Copyright <em class="text-danger"> &copy; </em>Zilveren Kruis</small>
        </footer>
    </body>
</html>