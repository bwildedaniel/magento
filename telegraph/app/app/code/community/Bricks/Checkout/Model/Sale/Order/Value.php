<?php

class Bricks_Checkout_Model_Sale_Order_Value extends Mage_Core_Model_Abstract {
	protected function _construct() {
		$this->_init( 'bricks_checkout/sale_order_value', 'sale_order_value_id' );
	}
}