const modalBtn = document.querySelectorAll(".modal-btn");
const modalBg = document.querySelectorAll(".movie-modal");
const modalClose = document.querySelectorAll(".close-button");
const overlayActive = document.querySelectorAll(".overlay");
const overlayClose = document.querySelectorAll(".overlay");



modalBtn.forEach(function(btn, index){
  btn.addEventListener('click', function() {
    modalBg.forEach(function(item){
      item.classList.add('active');
    });
    overlayActive.forEach(function(item){
      item.classList.add('active');
    });
  });
});

modalClose.forEach(function(btn, index){
  btn.addEventListener('click', function() {
    modalBg.forEach(function(item){
      item.classList.remove('active');
    });
    overlayClose.forEach(function(item){
      item.classList.remove('active');
    });
  });
});

overlayActive.forEach(function(item, index){
  item.addEventListener('click', function() {
    overlayActive.forEach(function(overlay){
      overlay.classList.remove('active');
      })
    modalBg.forEach(function(item){
      item.classList.remove('active');
      });
    })
});
