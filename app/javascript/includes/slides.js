$(function(){
  var $activeSlide = $('#slides .slide:first-child');

  // show first slide
  $activeSlide.addClass("showing");

  $("#decline").on("click", function(){
    goToSlide('decline');
  });

  $("#approve").on("click", function(){
    var content_id = $activeSlide.data("id");
    console.log(content_id)

    // $.ajax({
    //   url: "/user_contents/liked" + content_id,
    //   method: "post",
    //   dataType: "ajax"
    // });
    goToSlide('approve');
  });

  function goToSlide(action) {
    $activeSlide.removeClass("showing");
    $activeSlide = $activeSlide.next(".slide");

    // send data to controller
    if(action == "approve"){
      console.log(action);
    } else {
      console.log(action);
    }

    $activeSlide.addClass("showing");

    // slides[currentSlide].className = 'slide';
    // currentSlide = (n+slides.length)%slides.length;
    // slides[currentSlide].className = 'slide showing';
  }
});
