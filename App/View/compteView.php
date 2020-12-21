<?php
include('inc/nav.php');
?>

<h2>Voici le profil de <?= $_SESSION['user']['pseudo']; ?></h2>
    <ul>
        <li>Votre pseudo est : <?= $profil['pseudo'] ?></li>
        <li>Votre mail est : <?= $profil['email'] ?></li>
        </ul>
<a href="index.php?page=modifier">modifier</a>
<hr>
<h2>mes sondages : </h2>
<?php

foreach ($sondages as $sondage) {

?>
    <li><?= $sondage['questions'] ?></li>
    <p>Résultats des votes:</p>
    <table>
        <tr>
            <th>Reponses</th>
            <th>Nombres de votes</th>
        </tr>
        <?php
        foreach ($reponses as $reponse) {
        ?>
            <tr>
                <td><?= $reponse['name_questions'] ?></td>
                <td><?= $reponse['nb_vote'] ?></td>
            </tr>
        <?php
        }
        ?>
    </table>
    <hr>

<?php
}
?>

<?php
include('inc/footer.php');
?>