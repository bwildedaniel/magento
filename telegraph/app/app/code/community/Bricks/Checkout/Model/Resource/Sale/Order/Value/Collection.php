<?php

class Bricks_Checkout_Model_Resource_Sale_Order_Value_Collection extends Mage_Core_Model_Resource_Db_Collection_Abstract {
	public function _construct() {
		$this->_init( 'bricks_checkout/sale_order_value' );
	}
}