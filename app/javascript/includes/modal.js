const modalBtn = document.querySelector(".modal-btn");
const modalBg = document.getElementById("movie-modal");
const modalClose = document.querySelector(".close-button");
const overlay = document.getElementById("overlay");
const overlayClose = document.getElementById("overlay");

modalBtn.addEventListener('click', function(click) {
  console.log(click)
  modalBg.classList.add('active');
  overlay.classList.add('active');
});

modalClose.addEventListener('click', function() {
  modalBg.classList.remove('active');
  overlay.classList.remove('active');
});

overlay.addEventListener('click', function() {
  overlayClose.classList.remove('active');
});

overlay.addEventListener('click', function() {
  const modals = document.querySelectorAll('.movie-modal.active')
  modals.forEach(modal => {
    modal.classList.remove('active');
    overlay.classList.remove('active');
  })
})
