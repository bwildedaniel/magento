<?php
 

class Inchoo_RestConnect_TestController extends Mage_Core_Controller_Front_Action {
 
exit("here is the 6");

    public function indexAction() {
 
        //Basic parameters that need to be provided for oAuth authentication
        //on Magento
        $params = array(
            'siteUrl' => 'http://dummydispensary.com/oauth',
            'requestTokenUrl' => 'http://dummydispensary.com/oauth/initiate',
            'accessTokenUrl' => 'http://dummydispensary.com/oauth/token',
            'authorizeUrl' => 'http://dummydispensary.com/admin/oAuth_authorize',//This URL is used only if we authenticate as Admin user type
            'consumerKey' => 'h7n8qjybu78cc3n8cdd5dr7ujtl33uqh',//Consumer key registered in server administration
            'consumerSecret' => '2smfjx37a6e4w23jlcrya6iyv5v32fxr',//Consumer secret registered in server administration
            'callbackUrl' => 'http://dummydispensary.com/restconnect/test/callback',//Url of callback action below
        );
 
        // Initiate oAuth consumer with above parameters
        $consumer = new Zend_Oauth_Consumer($params);
        // Get request token
        $requestToken = $consumer->getRequestToken();
        // Get session
        $session = Mage::getSingleton('core/session');
        // Save serialized request token object in session for later use
        $session->setRequestToken(serialize($requestToken));
        // Redirect to authorize URL
        $consumer->redirect();
 
        return;
    }
 
    public function callbackAction() {
 
        //oAuth parameters
        $params = array(
            'siteUrl' => 'http://dummydispensary.com/oauth',
            'requestTokenUrl' => 'http://dummydispensary.com/oauth/initiate',
            'accessTokenUrl' => 'http://dummydispensary.com/oauth/token',
            'consumerKey' => 'h7n8qjybu78cc3n8cdd5dr7ujtl33uqh',
            'consumerSecret' => '2smfjx37a6e4w23jlcrya6iyv5v32fxr'
        );
 
        // Get session
        $session = Mage::getSingleton('core/session');
        // Read and unserialize request token from session
        $requestToken = unserialize($session->getRequestToken());
        // Initiate oAuth consumer
        $consumer = new Zend_Oauth_Consumer($params);
        // Using oAuth parameters and request Token we got, get access token
        $acessToken = $consumer->getAccessToken($_GET, $requestToken);
        // Get HTTP client from access token object
        $restClient = $acessToken->getHttpClient($params);
        // Set REST resource URL
        $restClient->setUri('http://dummydispensary.com/api/rest/products');
        // In Magento it is neccesary to set json or xml headers in order to work
        $restClient->setHeaders('Accept', 'application/json');
        // Get method
        $restClient->setMethod(Zend_Http_Client::GET);
        //Make REST request
        $response = $restClient->request();
        // Here we can see that response body contains json list of products
        Zend_Debug::dump($response);
 
        return;
    }
 
}