<?php
class Sibers_RESTExtender_Model_Api2_Category_Rest_Admin_V1 extends Sibers_RESTExtender_Model_Api2_Category
{
    /**
     * Retrieve list of category list.
     *
     * @return array
     */
    protected function _retrieveCollection()
    {   
       $categories = Mage::getSingleton('catalog/category')
        ->getCollection()
        ->addAttributeToSelect('name')
        ->addAttributeToSelect('is_active')
        ->addAttributeToSelect('url_key')
        ->addAttributeToSelect('path')
        ->addAttributeToSelect('children_count')
        ->addAttributeToSelect('entity_type_id')
        ->addAttributeToSelect('attribute_set_id')
        ->addAttributeToSelect('ref_id')
        ->addAttributeToSelect('level')
        ->addAttributeToSelect('image')
        //->addAttributeToFilter('level',2)
        //->addIsActiveFilter()
        ->addAttributeToSort('position');
        
        $items = [];
        
        foreach($categories as $category){
            $item = $category->toArray();
            
            $item['id'] = $category->getId();
            
            $item['children'] = $category->getChildren();
            
            $items[] = $item;
        }
        
        return $items;     
    }
    
    /**
     * Retrieve list of category list.
     *
     * @return array
     */
    protected function _retrieve()
    {   
        $categoryApi = new Mage_Catalog_Model_Category_Api();
        
        $categoryId = $this->getRequest()->getParam('id');
        
        $cat = $categoryApi->info($categoryId);
        
        $cat['id'] = $cat['category_id'];
        
        return $cat;
    }
    
    /**
     * @param array $data
     * @return string|void
     */
    protected function _create($data)
    {
        $categoryApi = new Mage_Catalog_Model_Category_Api();
        
        $parent_id = $data['parent_id'] ? intval($data['parent_id']) : 2;
        
        if(isset($data['image_url']) && isset($data['ref_id']) && $data['image_url'] != ''){
            if($image = $this->saveImageFromURL($data['image_url'], $data['ref_id'])){
                $data['image'] = $image;
            }
        }
        
        $categoryData = array_merge([
            'name' => null,
            'is_active' => 1,
            'available_sort_by' => ['position'],
            'custom_design' => null,
            'custom_apply_to_products' => null,
            'custom_design_from' => null,
            'custom_design_to' => null,
            'custom_layout_update' => null,
            'default_sort_by' => 'position',
            'description' => null,
            'display_mode' => "PRODUCTS_AND_PAGE",
            'is_anchor' => 0,
            'landing_page' => null,
            'meta_description' => null,
            'meta_keywords' => null,
            'meta_title' => null,
            'page_layout' => null,
            'url_key' => null,
            'include_in_menu' => 1,
            'image' => null
        ], $data);
        
        $new_category_id = $categoryApi->create(
            $parent_id,
            $categoryData
        );
        
        $categoryData['id'] = $new_category_id;
        
        echo json_encode($categoryData);
    }
    
    protected function _delete(){
        $setup = Mage::getResourceModel('catalog/setup','catalog_setup');
        
        // custom options attrs
        
        /*$setup->getConnection()->addColumn($setup->getTable('catalog_product_option'), 'min_options', "INT DEFAULT 0");
        $setup->getConnection()->addColumn($setup->getTable('catalog_product_option'), 'max_options', "INT DEFAULT 0");
        $setup->getConnection()->addColumn($setup->getTable('catalog/product_option_type_value'), 'firetime', "INT DEFAULT 0");
        $setup->getConnection()->addColumn($setup->getTable('catalog/product_option_type_value'), 'is_default', "INT DEFAULT 0");
        
        $setup->endSetup();*/
        
        /*$setup->removeAttribute('catalog_category','ref_id');
        $setup->addAttribute('catalog_category','ref_id', array(
            'type' => 'text',
            'label'=> 'Reference Id',
            'input' => 'text',
            'global' => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
            'visible' => true,
            'required' => false,
            'user_defined' => true,
            'default' => '',
            'group' => "General Information"
        ));*/
        
        $categoryApi = new Mage_Catalog_Model_Category_Api();
        
        $categoryId = $this->getRequest()->getParam('id');
        
        $categoryApi->delete($categoryId);
    }
    
     /**
     * @param array $data
     * @return string|void
     */
    protected function _update($data){
        $categoryApi = new Mage_Catalog_Model_Category_Api();
        
        $categoryId = $this->getRequest()->getParam('id');
        
        if(isset($data['image_url']) && isset($data['ref_id']) && $data['image_url'] != ''){
            if($image = $this->saveImageFromURL($data['image_url'], $data['ref_id'])){
                $data['image'] = $image;
            }
        }
        
        if($categoryApi->update(
            $categoryId,
            $data
        )){
            $cat = $categoryApi->info($categoryId);
        
            $cat['id'] = $cat['category_id'];
            
            echo json_encode($cat);
        };
    }

    private function saveImageFromURL($imgUrl, $catId){
        $result = false;
        
        try{
            $ext = pathinfo($imgUrl, PATHINFO_EXTENSION);
            
            if($ext){
                $fout = fopen(Mage::getBaseDir('media').'/catalog/category/' . $catId . '.' . $ext, 'w');
                $fin = fopen($imgUrl, "rb");
                while (!feof($fin)) {
                    $buffer= fread($fin, 32*1024);
                    fwrite($fout,$buffer);
                }
                fclose($fin);
                fclose($fout);
            
                $result = $catId . '.' . $ext;
            }
        }
        catch(Exception $e){};
        
        return $result;
    }
}