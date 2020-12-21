<?php include('inc/header.php') ?>

Nom du sondage : <?= $select_sondage[1]['questions'] ?>

<form method='post' action="vote.php?url_=<?= $_url ?>">
    <?php
    foreach ($select_sondage as $reponse) {
    ?>

        <button type="radio" name="vote" value="'<?= $reponse['name_questions'] ?>'"> <?= $reponse['name_questions'] ?></button>
    <?php
    }
    echo ('<h2>
                Partager ce sondage avec un ami :
            </h2>');
    echo $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'] . "?page=affichersondage&url_= " . $_GET['url_'];


    ?>
</form>

<div class="col-12 my-1">
    <h2>Tchat : </h2>
    <div class="p-2" id="discussion">
    </div>
</div>
<div>
    <div>
        <input type="text" id="texte" placeholder="Entrez votre texte">
        <div>
            <span id="valid"><i class="la la-check"></i></span>
        </div>
    </div>
</div>

<?php include('inc/footer.php') ?>