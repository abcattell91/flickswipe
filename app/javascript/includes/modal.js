const modalBtn = document.querySelectorAll(".modal-btn");
const modalBg = document.querySelectorAll(".movie-modal");
const modalClose = document.querySelectorAll(".close-button");
const overlay = document.querySelectorAll(".overlay");
const overlayClose = document.querySelectorAll(".overlay");
const activeSlide = document.querySelectorAll(".slide .active")



modalBtn.forEach(function(btn, index){
  btn.addEventListener('click', function() {
    modalBg.forEach(function(item){
      item.classList.add('active');
    });
    overlay.forEach(function(item){
      item.classList.add('active');
    });
  });
});

modalClose.forEach(function(btn, index){
  btn.addEventListener('click', function() {
    modalBg.forEach(function(item){
      item.classList.remove('active');
    });
    overlay.forEach(function(item){
      item.classList.remove('active');
    });
  });
});

// overlay.forEach(function(background, index){
//   background.addEventListener('click', function() {
//     overlay.forEach(function(item){
//       item.classList.add('active');
//     });
//   });
// });

// overlay.forEach(function(overlay, index){
//   overlay.addEventListener('click', function() {
//   const modals = document.querySelectorAll('.movie-modal.active')
//   modals.forEach(modal => {
//     modal.classList.remove('active');
//     overlay.classList.remove('active');
//     })
//   })
// });
