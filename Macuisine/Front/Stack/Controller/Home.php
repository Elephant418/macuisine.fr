<?php
namespace Macuisine\Front\Stack\Controller;

class Home extends Home\__Parent {
    
    function actionView() {
        $recipe = (new \Stack\Entity\Recipe)->fetchById('carot-cake');
        $view = (new \Stack\View\Home);
        $view['recipe'] = $recipe;
        return $view;
    }

}
?>
