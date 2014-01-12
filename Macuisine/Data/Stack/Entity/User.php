<?php
namespace Macuisine\Data\Stack\Entity;

class User extends \Staq\Core\Data\Stack\Storage\File\Entity {

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
