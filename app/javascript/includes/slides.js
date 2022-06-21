// potential ability to swipe implemented below

// document.getElementById('swipe').addEventListener('touchstart', (touchstart))
// document.getElementById('swipe').addEventListener('touchmove', (touchmove))
// document.getElementById('swipe').addEventListener('touchend', (touchend))
//     function touchstart(ev){
//       startingX = ev.touches[0].clientX;
//     }
//     function touchmove(ev){
//       movingX = ev.touches[0].clientX;
//     }
//     function touchend(ev){
//       if (startingX +200 < movingX){
//         console.log('swiperight');
//         const activeSlide = document.querySelector('.active-slide');
//         const contentId = activeSlide.dataset["id"];
//         const contentTitle = activeSlide.dataset["contentTitle"];
//         const contactId = document.getElementById('users-ids').dataset['contactId'];
//         createUserContent(contentId, 'decline');
//         checkIfMatch(contentId, contactId, contentTitle, activeSlide, 'decline');
//       } else if (startingX -200 > movingX){
//         console.log('swipeleft');
//         const activeSlide = document.querySelector('.active-slide');
//         const contentId = activeSlide.dataset["id"];
//         const contentTitle = activeSlide.dataset["contentTitle"];
//         const contactId = document.getElementById('users-ids').dataset['contactId'];
//         createUserContent(contentId, 'approve');
//         checkIfMatch(contentId, contactId, contentTitle, activeSlide, 'approve');
//       }
//     };

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
        title: `${contentTitle} has Matched!`,
        icon: 'success',
        showCloseButton: true,
        showCancelButton: true,
        focusConfirm: false,
        confirmButtonText:
          '<i class="fa fa-thumbs-up"></i> Start Watching',
        confirmButtonAriaLabel: 'Thumbs up, great!',
        cancelButtonText:
          '<i class="fa fa-thumbs-down"></i> Keep Swiping',
        cancelButtonAriaLabel: 'Thumbs down'
      }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = `/users/1/friendships/2/contents/${contentId}`

        } else {
          goToSlide(activeSlide);
        }
      })
    } else {
      goToSlide(activeSlide);
    }
  })

})

const goToSlide = ((activeSlide) => {
  activeSlide.classList.remove("active-slide");
  const nextActiveSlide = activeSlide.nextElementSibling;
  nextActiveSlide.classList.add("active-slide");
});
