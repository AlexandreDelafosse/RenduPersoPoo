<?php
include_once('../public/inc/header.php');
?>
<div>
    <h1>Connexion</h1>
    <form method="post">
        <div>
            <label for="email">E-mail :</label>
            <input type="email" id="email" name="email">
        </div>
        <div>
            <label for="pass">Mot de passe :</label>
            <input type="password" id="pass" name="pass">
        </div>
        <input type="submit" name="connexion" value="Se connecter">
    </form>
</div>
<?php
include_once('../public/inc/footer.php');
