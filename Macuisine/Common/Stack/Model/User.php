<?php
namespace Macuisine\Common\Stack\Model;

class User extends User\__Parent {

    public function name()
    {
        return $this->login;
    }
}
?>
