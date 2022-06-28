
// import swal from "sweetalert";
const Swal = require('sweetalert2')

document.addEventListener('touchstart', handleTouchStart, false);
document.addEventListener('touchmove', handleTouchMove, false);

const logBlock = document.querySelector('.close-outside')

const activeSlide = document.querySelector('.slide');
// show first slide
activeSlide.classList.add("active-slide");

let timerInterval
Swal.fire({
  position: 'center',
  icon: 'info',
  title: 'Swipe Right to Like',
  html: '<i class="fa fa-solid fa-thumbs-up fa-2x">',
  timer: 3000,
  timerProgressBar: true,
  didOpen: () => {
    Swal.showLoading()
    const b = Swal.getHtmlContainer().querySelector('b')
    timerInterval = setInterval(() => {
      b.textContent = Swal.getTimerLeft()
    }, 100)
  },
  willClose: () => {
    clearInterval(timerInterval)
  }
}).then((result) => {
  /* Read more about handling dismissals below */
  if (result.dismiss === Swal.DismissReason.timer) {
    console.log('I was closed by the timer')
  }
})

let x1 = null;
let y1 = null;

function handleTouchStart(event) {
  const firstTouch = event.touches[0];
  x1 = firstTouch.clientX;
  y1 = firstTouch.clientY;
}

function handleTouchMove(event) {
  if (!x1 || !y1) {
    return false;
  }
  let x2 = event.touches[0].clientX;
  let y2 = event.touches[0].clientY;
  let xDiff = x2 - x1;
  let yDiff = y2 - y1;

  if (Math.abs(xDiff) > Math.abs(yDiff)) {
    if (xDiff > 0) {
      console.log('right approve');
      const activeSlide = document.querySelector('.active-slide');
      const contentId = activeSlide.dataset["id"];
      const contentTitle = activeSlide.dataset["contentTitle"];
      const contactId = document.getElementById('users-ids').dataset['contactId'];
      createUserContent(contentId, 'approve');
      checkIfMatch(contentId, contactId, contentTitle, activeSlide, 'approve');
    }
    else {
      console.log('left decline')
      const activeSlide = document.querySelector('.active-slide');
      const contentId = activeSlide.dataset["id"];
      const contentTitle = activeSlide.dataset["contentTitle"];
      const contactId = document.getElementById('users-ids').dataset['contactId'];
      createUserContent(contentId, 'decline');
      checkIfMatch(contentId, contactId, contentTitle, activeSlide, 'decline');
    }
  x1 = null;
  y1 = null;
  }
}

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
