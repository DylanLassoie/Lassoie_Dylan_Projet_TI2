<?php
if(isset($_POST['submit_login'])){
    extract($_POST,EXTR_OVERWRITE);
    $admin = new AdminBD($cnx);
    $adm = $admin->getAdmin($login,$password);
    if($adm!=null){
        print "<br>Bienvenue ".$adm[0]->login;
        $_SESSION['login'] = $adm[0]->login;
        //unset($_SESSION['page']);
        print "<meta http-equiv=\"refresh\": Content=\"0;url=admin/index_.php?page=accueil.php\">";

    }else{
        print "<br>Etes-vous enregistré ? ";
    }

}
?>

<div class="container login_form">
    <form action="<?php print $_SERVER['PHP_SELF']; ?>" method="post">
        <div class="mb-3">
            <label for="InputLogin" class="form-label">Email</label>
            <input name="login" type="text" class="form-control" id="InputLogin">
        </div>
        <div class="mb-3">
            <label for="InputPassword" class="form-label">Mot de passe</label>
            <input name="password" type="password" class="form-control" id="InputPassword">
        </div>
        <button name="submit_login" type="submit" class="btn btn-primary">Connexion</button>
    </form>
</div>