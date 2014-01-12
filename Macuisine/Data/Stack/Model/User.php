<?php
namespace Macuisine\Data\Stack\Model;

class User extends User\__Parent {

    public function name()
    {
        return $this->login;
    }
}
?>
