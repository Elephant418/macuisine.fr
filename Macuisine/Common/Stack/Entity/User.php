<?php
namespace Macuisine\Common\Stack\Entity;

class User extends User\__Parent {

    public function fetchByLogin($login)
    {
        $userList = $this->fetchByField('login', $login, 1);
        if (count($userList)) {
            return $userList[0];
        }
        return null;
    }
}
?>
