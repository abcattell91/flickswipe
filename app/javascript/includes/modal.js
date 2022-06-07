const modalBtn = document.querySelectorAll(".modal-btn");
const modalBg = document.querySelectorAll(".movie-modal");
const modalClose = document.querySelectorAll(".close-button");
const overlay = document.querySelectorAll(".overlay");
const overlayClose = document.querySelectorAll("overlay");

modalBtn.forEach(function(btn, index){
  btn.addEventListener('click', function() {
    console.log(index)
    modalBg.classList.add('active');
    overlay.classList.add('active');
    var content_id = activeModal.data("id");
    console.log(content_id)
  });
});

modalClose.forEach(function(btn, index){
  btn.addEventListener('click', function(click) {
    console.log(click)
    modalBg.classList.remove('active');
    overlay.classList.remove('active');
  });
});

overlay.forEach(function(overlay, index){
  overlay.addEventListener('click', function() {
  overlayClose.classList.remove('active');
  });
});

overlay.forEach(function(overlay, index){
  overlay.addEventListener('click', function() {
  const modals = document.querySelectorAll('.movie-modal.active')
  modals.forEach(modal => {
    modal.classList.remove('active');
    overlay.classList.remove('active');
    })
  })
});
