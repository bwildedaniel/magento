<?php

class Bricks_Checkout_Model_Sale_Quote_Value extends Mage_Core_Model_Abstract {
	protected function _construct() {
		$this->_init( 'bricks_checkout/sale_quote_value', 'sale_quote_value_id' );
	}
}