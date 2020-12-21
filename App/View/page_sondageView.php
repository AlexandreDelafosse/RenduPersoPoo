<?php
include_once('inc/header.php');
include_once('../public/inc/nav.php'); ?>

<?php foreach ($listesondages as $result) {
?>
    <li><a href="?page=affichersondage&url_='<?= $result['_url'] ?>'"><?= $result['questions'] ?></a></li>
<?php
    echo $result['_url'];
}
include('inc/footer.php') ?>