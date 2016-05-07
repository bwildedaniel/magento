<?php
class Sibers_RESTExtender_Model_Api2_Product_Attribute_Set_Rest_Admin_V1 extends Sibers_RESTExtender_Model_Api2_Product_Attribute_Set
{
    /**
     * Retrieve list
     *
     * @return array
     */
    protected function _retrieveCollection()
    {   
        $attributeSetApi = new Mage_Catalog_Model_Product_Attribute_Set_Api();
        
        $items = [];
        
        foreach($attributeSetApi->items() as $item){
            $item['id'] = $item['set_id'];
            
            $items[] = $item;
        }
        
        return $items;     
    }
}