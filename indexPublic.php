<?php
    session_start();
    require './admin/lib/php/admin_liste_include.php';
?>

<!doctype html>
<html lang="fr">
    <head>
        <title>Lassoie Dylan Projet TI 2</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
        <?php
            if(file_exists('./lib/php/menuPublic.php')) {
                include('./lib/php/menuPublic.php');
            }
        ?>
    </body>
    <footer>

    </footer>
</html>
