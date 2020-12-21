<?php

namespace App\Controller;

use App\Model\Page_sondageModel;

class Page_sondageController
{
    public function __construct()
    {
        $this->model = new Page_sondageModel();
    }
    public function voirsondage()
    {
        // $results = $this->model->affichersondage();
        $listesondages = $this->model->listesondages();
        require ROOT . "/App/View/Page_sondageView.php";
    }
}


// include "App/Controller/page_sondageController.php";
// require "App/View/page_sondageView.php";
// include_once('inc/footer.php');
