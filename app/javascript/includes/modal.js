const modalBtn = document.querySelectorAll(".modal-btn");
const modalBg = document.querySelectorAll(".movie-modal");
const modalClose = document.querySelectorAll(".close-button");
const modalCloseOutside = document.querySelectorAll(".overlay")
const overlayActive = document.querySelectorAll(".overlay");
const overlayClose = document.querySelectorAll(".overlay");


// This iterates over the classes above for each function
// Each class is in a long array so we need to forEach again to look at each individual item
// then you can add the active or remove class to each one.
modalBtn.forEach(function(btn, index){
  btn.addEventListener('click', function() {
    // document.addEventListener("touch", handler, true);
    // function handler(e) {
    //   e.stopPropagation();
    //   e.preventDefault();
    // }
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

modalCloseOutside.forEach(function(btn, index){
  btn.addEventListener('click', function() {
    overlayClose.forEach(function(item){
      item.classList.remove('active');
    });
  });
});

overlayActive.forEach(function(item, index){
  item.addEventListener('click', function() {
    overlayActive.forEach(function(overlay){
      overlay.classList.remove('active-slide');
      })
    modalBg.forEach(function(item){
      item.classList.remove('active');
      });
    })
});
