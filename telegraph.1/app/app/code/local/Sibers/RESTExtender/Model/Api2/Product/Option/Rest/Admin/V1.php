<?php
class Sibers_RESTExtender_Model_Api2_Product_Option_Rest_Admin_V1 extends Sibers_RESTExtender_Model_Api2_Product_Option
{
    /**
     * Retrieve list of options.
     *
     * @return array
     */
    protected function _retrieveCollection()
    {   
        $optionApi = new Mage_Catalog_Model_Product_Option_Api();
        
        $productId = $this->getRequest()->getParam('product_id');
        
        $items = [];
        
        foreach($optionApi->items($productId) as $option){
            $option['id'] = $option['option_id'];
            
            $items[] = $option;
        }
        
        return $items;     
    }
    
    /**
     * Retrieve option
     *
     * @return array
     */
    protected function _retrieve()
    {   
        $optionApi = new Mage_Catalog_Model_Product_Option_Api();
        
        $optionId = $this->getRequest()->getParam('id');
        
        $option = $optionApi->info($optionId);
        
        $option['id'] = $optionId;
        
        return $option;
    }
    
    /**
     * @param array $data
     * @return void
     */
    protected function _create($data)
    {
        $optionApi = new Mage_Catalog_Model_Product_Option_Api();
        
        $productId = $this->getRequest()->getParam('product_id');
        
        $optionData = array_merge(
            [
                'title' => null,
                'type' => null,
                'is_require' => '0',
                'sort_order' => null,
                'additional_fields' => [
                    /*[
                        "value_id": null,
                        "title" => null,
                        'price' => "0.0000",
                        'price_type' => "fixed",
                        'sku' => null,
                        "sort_order": "0"  
                    ]*/
                ]
            ],
            $data
        );
        
        $optionApi->add(
            $productId,
            $optionData
        );
    }
    
    protected function _delete(){
        $optionApi = new Mage_Catalog_Model_Product_Option_Api();
        
        $optionId = $this->getRequest()->getParam('id');
        
        $optionApi->remove($optionId);
    }
    
     /**
     * @param array $data
     * @return void
     */
    protected function _update($data){
        $optionApi = new Mage_Catalog_Model_Product_Option_Api();
         
        $productId = $this->getRequest()->getParam('product_id');
        
        $optionApi->update(
            $productId,
            $data
        );
    }
}