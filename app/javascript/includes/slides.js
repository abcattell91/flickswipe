// Below was all my testing trying to rewrite the above code. It failed.

// const carouselSlide = document.querySelector(".carousel-slide");
// const carouselImages = document.querySelectorAll('.carousel-slide img')

// // Buttons
// const like = document.getElementById('approve');
// const dislike = document.getElementById('decline');

// // Counter
// let counter = 1;
// const size = carouselImages[0].clientWidth;

// carouselSlide.style.transform = 'translateX(' + (counter) + 'px)';

// // Button Listeners

// like.addEventListener('click', ()=>{
//   if(counter <= 0) return;
//   carouselSlide.style.transition = 'transform 0.4s ease-in-out';
//   counter++;
//   console.log(counter)
//   carouselSlide.style.transform = 'translateX(' + (-size + counter) + 'px)';
// });

// dislike.addEventListener('click', ()=>{
//   if(counter <= 0) return;
//   carouselSlide.style.transition = 'transform 0.4s ease-in-out';
//   counter++;
//   console.log(counter)
//   carouselSlide.style.transform = 'translateX(' + (-size + counter) + 'px)';
// });

// carouselSlide.addEventListener('transitioned', ()=>{
//   console.log('fired')
// })



// var activeSlide = document.querySelectorAll("#slides .slide:first-child");
// var like = document.getElementById('approve')
// var dislike = document.getElementById('decline')

// like.addEventListener('click', function() {
//   activeSlide.classList.add('active');
//   var content_id = activeSlide.data("id");
//   console.log(content_id)
// });

// dislike.addEventListener('click', function() {
//   activeSlide.classList.add('active');
// });

// function goToSlide() {
//   activeSlide.classList.remove("active");
//   nextSlide = activeSlide.next(".slide");
// }
//   activeSlide.classList.add("active");
//   // send data to controller
//     if(action == "approve"){
//       console.log('like');
//     } else {
//       console.log('dislike');
//     }


$(function(){
  var $activeSlide = $('#slides .slide:first-child');

  // show first slide
  $activeSlide.addClass("active");
  // on click event decline
  $("#decline").on("click", function(){
    var content_id = $activeSlide.data("id");
    goToSlide('decline', content_id);
  });
  // on click approve then what?
  $("#approve").on("click", function(){
    var content_id = $activeSlide.data("id");
    // console.log("content_id")
    // console.log(content_id)
    goToSlide('approve', content_id);
    // $.ajax({
    //   url: "/user_contents/liked" + content_id,
    //   method: "post",
    //   dataType: "ajax"
    // });
  });
    // adding the 'showing' or 'active' slide class to each element
  function goToSlide(action, content_id) {
    $activeSlide.removeClass("active");
    $activeSlide = $activeSlide.next(".slide");
    url = `/contents/${content_id}/user_contents`;
    // send data to controller
    // if(action == "approve"){
    //   console.log(action);
    // } else {
    //   console.log('dislike');
    // }
    let data = {liked: action};
    fetch(url, {
      method: "POST",
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify(data)
    }).then(res => {
      console.log("Request complete! response:", res);
    });
    $activeSlide.addClass("active");
  }
});
