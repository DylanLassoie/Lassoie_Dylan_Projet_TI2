<?php
if(!isset($_SESSION['login'])){
    print "<meta http-equiv=\"refresh\": Content=\"0;url=../index_.php?page=accueil.php\">";
    exit();
}
