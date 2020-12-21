<?php
include('inc/header.php');
include('inc/nav.php');
?>

<h2>Liste d'amis:</h2>
<ul>
    <?php foreach ($data as $pseudo) {
        if ($pseudo['iduser_1'] == $_SESSION['user']['pseudo']) {

            echo '<li>' . $pseudo['iduser_2'] . '</li>';
    ?>
            <form method="post"><button type="submit" name='deletefriend' value=<?= $pseudo['iduser_2'] ?>> Supprimer</button></form>
    <?php

        } elseif ($pseudo['iduser_2'] == $_SESSION['user']['pseudo'])


            echo '<li>' . $pseudo['iduser_1'] . '</li>';
    }

    ?>
</ul>


<h2>Trouver des amis : </h2>
<form method="post">
    <input type="text" name="search">
    <button type="submit">Rechercher</button>
</form>
<?php  if (!empty($_POST)) { if($search_friend == null) {
                    echo ('Erreur : aucun résultat !');
                } else {
                
?>
<table>
    <tr>
        <th>Pseudo</th>
        <th>Email</th>
    </tr>
    <?php
    foreach ($search_friend as $friend) {
    ?>
        <tr>
            <td><?= $friend['pseudo'] ?></td>
            <td><?= $friend['email'] ?></td>
            <td>
                <form method="post"><button type="submit" name='addfriend' value=<?= $friend['pseudo'] ?>> ajouter</button></form>
            </td>
        </tr>
    <?php

    }
                }
            }
    ?>
</table>

<?php
include('inc/footer.php');
?>