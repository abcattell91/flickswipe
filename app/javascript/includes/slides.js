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
// adasd

// import swal from "sweetalert";
const Swal = require('sweetalert2')


const activeSlide = document.querySelector('.slide');
// show first slide
activeSlide.classList.add("active-slide");

// on click event decline
document.getElementById('decline').addEventListener('click', (event) => {
  const activeSlide = document.querySelector('.active-slide');
  const contentId = activeSlide.dataset["id"];
  const contentTitle = activeSlide.dataset["contentTitle"];
  const contactId = document.getElementById('users-ids').dataset['contactId'];
  createUserContent(contentId, 'decline');
  checkIfMatch(contentId, contactId, contentTitle, activeSlide, 'decline');
});

  // on click approve then what?
document.getElementById('approve').addEventListener('click', (event) => {
  const activeSlide = document.querySelector('.active-slide');
  const contentId = activeSlide.dataset["id"];
  const contentTitle = activeSlide.dataset["contentTitle"];
  const contactId = document.getElementById('users-ids').dataset['contactId'];
  createUserContent(contentId, 'approve');
  checkIfMatch(contentId, contactId, contentTitle, activeSlide, 'approve');
});

const createUserContent = ((contentId, action) => {
  const currentUserId = document.getElementById('users-ids').dataset['currentUserId'];
  const friendshipId = document.getElementById('users-ids').dataset['friendshipUserId'];
  const url = `/users/${currentUserId}/friendships/${friendshipId}/contents/${contentId}/user_contents`;
  let data = {liked: action};

  fetch(url, {
    method: "POST",
    headers: {'Content-Type': 'application/json'},
    body: JSON.stringify(data)
  }).then(res => {
    console.log("Request complete! response:", res);
  });
});

// create function to check if there is a match everytime content is shown and liked/disliked
const checkIfMatch = ((contentId, contactId, contentTitle, activeSlide, action) => {
  const url = `/contact_contents/${contactId}`;


  fetch(url)
  .then(response => response.json())
  .then((data) => {
    let result = false;
    data.forEach(content => {
      if (content.content_id === Number.parseInt(contentId) && content.liked === true && action == 'approve') {
        result = true
      }
    });
    if (result === true) {
      console.log("it's a match!")
      Swal.fire({
        title: '<strong>HTML <u>example</u></strong>',
        icon: 'info',
        showCloseButton: true,
        showCancelButton: true,
        focusConfirm: false,
        confirmButtonText:
          '<i class="fa fa-thumbs-up"></i> Great!',
        confirmButtonAriaLabel: 'Thumbs up, great!',
        cancelButtonText:
          '<i class="fa fa-thumbs-down"></i>',
        cancelButtonAriaLabel: 'Thumbs down'
      }).then((result) => {
        if (result.isConfirmed) {
            console.log("Approve Thumb up")
            window.location.href = `/users/1/friendships/2/contents/${contentId}`

        } else {
          goToSlide(activeSlide);
        }
      })
    } else {
      console.log("it's not a match!")
      goToSlide(activeSlide);
    }
  })

})

const goToSlide = ((activeSlide) => {
  activeSlide.classList.remove("active-slide");
  const nextActiveSlide = activeSlide.nextElementSibling;
  nextActiveSlide.classList.add("active-slide");
});
