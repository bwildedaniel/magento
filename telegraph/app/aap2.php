<?php

require 'app/Mage.php';
Mage::app();
Mage::app()->setCurrentStore(1);

$products = Mage::getResourceModel('catalog/product_collection')->addAttributeToSelect('*');

foreach ($products as $product) {
    if (!$product->getWebsite()) {
        if (Mage::app()->isSingleStoreMode()) {
            $product->setWebsiteIds(array(Mage::app()->getStore(true)->getWebsite()->getId()));
        }

        $product->save(); 
    }
}
echo "tadam";
?>