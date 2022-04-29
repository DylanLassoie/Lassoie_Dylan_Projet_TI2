<?php
if(file_exists('./lib/php/pgConnect.php')){
    require 'lib/php/pgConnect.php';
    require 'lib/php/classes/autoloader.class.php';
    Autoloader::register();
    $cnx = Connexion::getInstance($dsn,$user,$password);
}else {
    if(file_exists('./admin/lib/php/pgConnect.php')){
        require 'admin/lib/php/pgConnect.php';
        require 'admin/lib/php/classes/autoloader.class.php';
        Autoloader::register();
        $cnx = Connexion::getInstance($dsn,$user,$password);
    }
}