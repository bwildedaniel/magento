<?php
    $installer = $this;
    
    $installer->startSetup();
    
    // category attrs
    
    $categoryAttrs = [
        'ref_id' => [
            'group'             => 'General Information',
            'label'             => 'Reference Id',
            'type'              => 'text',
            'input'             => 'text',
            'default'           => '',
            'class'             => '',
            'backend'           => '',
            'frontend'          => '',
            'source'            => '',
            'global'            => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
            'visible'           => true,
            'required'          => false,
            'user_defined'      => true,
            'searchable'        => true,
            'filterable'        => true,
            'comparable'        => false,
            'visible_on_front'  => false,
            'visible_in_advanced_search' => false,
            'unique'            => false
        ],
    ];
    
    foreach($categoryAttrs as $attrName => $attrParams){
        $installer->addAttribute('catalog_category', $attrName, $attrParams);
    }
    
    // products attrs
    
    $installer->createNewAttributeSet('AirgrubProduct');
    
    $productAttrs = [
        'menu_sequence' => [
            'group'             => 'Airgrub',
            'label'             => 'Menu sequence',
            'type'              => 'int',
            'input'             => 'text',
            'default'           => '0',
            'class'             => '',
            'backend'           => '',
            'frontend'          => '',
            'source'            => '',
            'global'            => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
            'visible'           => true,
            'required'          => false,
            'user_defined'      => true,
            'searchable'        => true,
            'filterable'        => true,
            'comparable'        => false,
            'visible_on_front'  => false,
            'visible_in_advanced_search' => false,
            'unique'            => false,
            'attribute_set'     => 'AirgrubProduct',
        ],
        'firetime' => [
            'group'             => 'Airgrub',
            'label'             => 'Firetime',
            'type'              => 'int',
            'input'             => 'text',
            'default'           => '0',
            'class'             => '',
            'backend'           => '',
            'frontend'          => '',
            'source'            => '',
            'global'            => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
            'visible'           => true,
            'required'          => false,
            'user_defined'      => true,
            'searchable'        => true,
            'filterable'        => true,
            'comparable'        => false,
            'visible_on_front'  => false,
            'visible_in_advanced_search' => false,
            'unique'            => false,
            'attribute_set'     => 'AirgrubProduct',
        ],
        'travels_well' => [
            'group'             => 'Airgrub',
            'label'             => 'Travels well',
            'type'              => 'int',
            'input'             => 'boolean',
            'default'           => '0',
            'class'             => '',
            'backend'           => '',
            'frontend'          => '',
            'source'            => '',
            'global'            => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
            'visible'           => true,
            'required'          => false,
            'user_defined'      => true,
            'searchable'        => true,
            'filterable'        => true,
            'comparable'        => false,
            'visible_on_front'  => false,
            'visible_in_advanced_search' => false,
            'unique'            => false,
            'attribute_set'     => 'AirgrubProduct',
        ],
        'item_end_time' => [
            'group'             => 'Airgrub',
            'label'             => 'End time',
            'type'              => 'text',
            'input'             => 'text',
            'default'           => '23:59',
            'class'             => '',
            'backend'           => '',
            'frontend'          => '',
            'source'            => '',
            'global'            => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
            'visible'           => true,
            'required'          => false,
            'user_defined'      => true,
            'searchable'        => true,
            'filterable'        => true,
            'comparable'        => false,
            'visible_on_front'  => false,
            'visible_in_advanced_search' => false,
            'unique'            => false,
            'attribute_set'     => 'AirgrubProduct',
        ],
        'item_start_time' => [
            'group'             => 'Airgrub',
            'label'             => 'Start time',
            'type'              => 'text',
            'input'             => 'text',
            'default'           => '00:00',
            'class'             => '',
            'backend'           => '',
            'frontend'          => '',
            'source'            => '',
            'global'            => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
            'visible'           => true,
            'required'          => false,
            'user_defined'      => true,
            'searchable'        => true,
            'filterable'        => true,
            'comparable'        => false,
            'visible_on_front'  => false,
            'visible_in_advanced_search' => false,
            'unique'            => false,
            'attribute_set'     => 'AirgrubProduct',
        ],
    ];
    
    foreach($productAttrs as $attrName => $attrParams){
        $installer->addAttribute('catalog_product', $attrName, $attrParams);
    }
    
    // custom options attrs
    
    $installer->getConnection()->addColumn($installer->getTable('catalog_product_option'), 'min_options', "INT DEFAULT 0");
    $installer->getConnection()->addColumn($installer->getTable('catalog_product_option'), 'max_options', "INT DEFAULT 0");
    $installer->getConnection()->addColumn($installer->getTable('catalog/product_option_type_value'), 'firetime', "INT DEFAULT 0");
    $installer->getConnection()->addColumn($installer->getTable('catalog/product_option_type_value'), 'is_default', "INT DEFAULT 0");
    
    $installer->endSetup();
?>