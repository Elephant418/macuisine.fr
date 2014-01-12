<?php
namespace Macuisine\Front\Stack\Controller\Model;

use \Stack\Util\Form;

class Recipe extends Recipe\__Parent {
    
    public function actionList($kitchen) {
        return parent::actionList();
    }

    public function actionCreate() {
        $form = $this->getEditForm();
        if ($form->isValid()) {
            $recipe = (new \Stack\Model\Recipe);
            $recipe->name = $form->get('name');
            $recipe->nb = '4';
            $recipe->content = 'Todo';
            $recipe->save();
            \Staq\Util::httpRedirectUri( \Staq\Util::getModelControllerUrl($recipe, 'view'));
        }
        $view = new \Stack\View\Model\Recipe\Create();
        $view['form'] = $form;
        return $view;
    }

    public function actionView($kitchen, $id) {
        return parent::actionView($id);
    }

    public function actionEdit($kitchen, $id) {
        $form = $this->getEditForm();
        return parent::actionEdit($id);
    }

    public function actionDelete($kitchen, $id) {
        return parent::actionDelete($id);
    }
    
    protected function getEditForm() {
        return (new Form)
            ->addInput('name', 'string|required')
            ->setInputDefaultValue('name', 'Carot cake');
    }
    
    public function getRouteAttributes($model)
    {
        $attributes = [];
        $attributes['id'] = $model->id;
        $attributes['kitchen'] = 'gloubi';
        return $attributes;
    }
}
?>
