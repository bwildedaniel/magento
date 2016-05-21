<?php

require 'app/Mage.php';
Mage::app();
Mage::app()->setCurrentStore(1);

$products = Mage::getResourceModel('catalog/product_collection')->addAttributeToSelect('*');

$count = 0;

foreach ($products as $i => $product) {
        $product_sing = Mage::getModel('catalog/product')->load($product->getId());
        
        $gallery = $product_sing->getMediaGalleryImages();

        $paths = array();
        foreach ($gallery as $image) {
            $paths[] = $image->getFile();
        }
        sort($paths);
        
        echo count($paths) . "Fixing #" . $count . " :: " . $product->getId() . " :: " . $product->getName() . "\n";
        
        $path = array_shift($paths);
        try {
            $product_sing->setSmallImage($path)
                ->setThumbnail($path)
                ->setImage($path)
                ->save();
        } catch (Exception $e) {
            echo $e->getMessage();
        }
                
        $count++;
        //dd
}
echo "tadam";
?>