$(document).ready(function() {
    
  $(".search-link").click(function() {
      $(".search").slideToggle();
      return false;
  });

  $(".menu-link").click(function() {
    $(".leftcol,.rightcol").toggleClass("active");
      return false;
  });
  
  $(".navigation li a").click(function() {
  		$(".navigation a").removeClass("active");
  		$(".navigation ul ul").slideUp();
      $(this).parent().find("ul").slideToggle();
      $(this).toggleClass("active");
      $(this).unbind('click');

  });

  
  $("#daterangepicker").daterangepicker();
  $("#calendar-link").click(function () { $("#daterangepicker").daterangepicker("open"); });

  $('.marquee').marquee({
      //speed in milliseconds of the marquee
      duration: 19000,
      //gap in pixels between the tickers
      gap: 50,
      //time in milliseconds before the marquee will start animating
      delayBeforeStart: 0,
      //'left' or 'right'
      direction: 'left',
      //true or false - should the marquee be duplicated to show an effect of continues flow
      duplicated: true
  });

});