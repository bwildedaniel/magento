Popup_Newsletter

installation process.

1) Install module using magento key
2) Now rename the head.phtm file or copy the below code and put on your head.phtml file

<!---------------------  popup newslleter script   ------------------------->
<?php session_start();if(!isset($_SESSION['popup']['status'])){$_SESSION['popup']['status']=true;?> 
<?php echo $this->getLayout()->createBlock('newsletter/subscribe')->setTemplate('newsletter/subscribepopup.phtml')->toHtml(); ?></div><div id="mask"></div></div><?php } ?>
<!---------------------end  popup newslleter script   -------------------------> 

------------------------------------------------------------------
 Contact Detail for more support   
------------------------------------------------------------------ 

Email : support@i-quall.com or iquallinfo@gmail.com
Web : www.i-quall.com

