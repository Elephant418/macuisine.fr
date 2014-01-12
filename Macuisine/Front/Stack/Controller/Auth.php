<?php

/* This file is part of the Staq project, which is under MIT license */

namespace Macuisine\Front\Stack\Controller;

use \Stack\Util\Form;
use \Stack\Util\UINotification as Notif;

class Auth extends Auth\__Parent
{


    /* FORMS METHODS
     *************************************************************************/
    public function getInscriptionForm()
    {
        return (new Form)
            ->addInput('first_name', 'string|required', 'inscription.first_name')
            ->addInput('last_name', 'string|required', 'inscription.last_name')
            ->addInput('email', 'required', 'inscription.email')
            ->addInputFilter('email', 'validate_email', 'Ceci doit être un email')
            ->addInput('login', 'string|required|min_length:4|max_length:19', 'inscription.login')
            ->addInputFilter('login', 'validate_regexp:/^[a-zA-Z0-9-]*$/', 'This field must contains only letters, numbers and dash')
            ->addInput('password', 'required', 'inscription.password');
    }


    /* ACTION METHODS
     *************************************************************************/
    public function actionInscription()
    {
        $form = $this->getInscriptionForm();
        if ($form->isValid()) {
            $user = (new \Stack\Model\User)
                ->set('first_name', $form->first_name)
                ->set('last_name', $form->last_name)
                ->set('email', $form->email)
                ->set('login', $form->login)
                ->set('password', $form->password);
            try {
                $saved = FALSE;
                $saved = $user->save();
            } catch (\PDOException $e) {
                echo $e->getMessage();
            }
            if ($saved) {
                $this->login($user);
                Notif::success(sprintf(static::MSG_INSCRIPTION_VALID, $form->login));
                \Staq\Util::httpRedirectUri($this->getRedirectUri());
            } else {
                Notif::error(static::MSG_INSCRIPTION_KO);
            }
        }
        $view = $this->createView('inscription');
        $view['form'] = $form;
        $view['redirect'] = $this->getRedirectUri();
        return $view;
    }
}

?>