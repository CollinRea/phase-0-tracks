$(document).ready(function(){
  
  $("#gift").click(function(){
      $("#present").toggle();
      $("#box").toggle(100);
    });

  $("button").click(function(){
    $("img").animate({opacity: "0"},"slow");
    $("#thank").animate({
      left: "20px",
      top: "100px",
      opacity: "0.8"
    })
    $("img").css("display", "none");
    $("button").css("display", "none");
  }); 
});
