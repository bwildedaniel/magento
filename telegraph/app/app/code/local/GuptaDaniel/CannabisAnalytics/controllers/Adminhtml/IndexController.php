<?php
class GuptaDaniel_CannabisAnalytics_Adminhtml_IndexController extends Mage_Adminhtml_Controller_Action
{
    public function indexAction() 
    {
        $this->loadLayout();

        //create a text block with the name of "example-block"
        $block = $this->getLayout()
        ->createBlock('core/template')
        ->setTemplate('cannabisanalytics/cannabisanalytics.phtml');

        $this->_addContent($block);

        $this->renderLayout();
    }
}