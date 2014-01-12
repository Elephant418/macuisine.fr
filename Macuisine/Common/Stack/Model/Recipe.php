<?php
namespace Macuisine\Common\Stack\Model;

class Recipe extends Recipe\__Parent {
    
    public $type = 'desserte';
    
    function name() {
        return $this->name
        .'!!';
    }
}
?>
