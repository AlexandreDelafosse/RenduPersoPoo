<?php
include_once('inc/header.php');
include_once('inc/nav.php');
?>
<form method="post">

    <input type="text" placeholder="Qu'est ce que je mange ?" name="question">

    <input type="text" name="reponse[]" placeholder="Chinois"></input>

    <input type="text" name="reponse[]" placeholder="Italien"></input>

    <input type="text" name="reponse[]" placeholder="Africain"></input>

    <input type="text" name="reponse[]" placeholder="Japonais"></input>

    <input type="number" name="time" placeholder="Timer"></input>

    <button type="submit"> Confirmer</button>
</form>

<?php include('inc/footer.php') ?>