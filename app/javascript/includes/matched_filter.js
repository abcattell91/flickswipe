// make variables of checkboxes and containers of what will be displayed query selector getelement etc
const movieCheckBox = document.querySelector("#moviecheckbox");
const tvCheckBox = document.querySelector("#tvcheckbox");
// const topCheckBox = document.querySelector("#topratedcheckbox");
const matchContainer = document.querySelectorAll(".matched-container");
const movieMatchContainer = document.querySelectorAll(".movie-matched-container");
const tvMatchContainer = document.querySelectorAll(".tv-matched-container");
// const topMatchContainer = document.querySelectorAll(".toprated-matched-container");
// if checkbox is checked then remove or add hidden attribute(liked classlist just google) of specific container
if(movieCheckBox) {
  movieCheckBox.addEventListener('change', function(event) {
      if(event.target.checked){
        console.log("MOVIE")
        matchContainer.forEach(function(item1){
          item1.setAttribute("hidden", true);
        });
        movieMatchContainer.forEach(function(item2){
          item2.removeAttribute("hidden", false);
        });
      } else {
        matchContainer.forEach(function(item3){
          item3.removeAttribute("hidden", false);
        });
        movieMatchContainer.forEach(function(item2){
          item2.setAttribute("hidden", true);
        });
      }
  });

  tvCheckBox.addEventListener('change', function(event) {
    if(event.target.checked){
      console.log("TV")
      matchContainer.forEach(function(item1){
        item1.setAttribute("hidden", true);
      });
      tvMatchContainer.forEach(function(item2){
        item2.removeAttribute("hidden", false);
      });
    } else {
      matchContainer.forEach(function(item3){
        item3.removeAttribute("hidden", false);
      });
      tvMatchContainer.forEach(function(item2){
        item2.setAttribute("hidden", true);
      });
    }
  });

  // topCheckBox.addEventListener('change', function(event) {
  //   if(event.target.checked){
  //     console.log("TOP")
  //     matchContainer.forEach(function(item1){
  //       item1.setAttribute("hidden", true);
  //     });
  //     topMatchContainer.forEach(function(item2){
  //       item2.removeAttribute("hidden", false);
  //     });
  //     movieMatchContainer.forEach(function(item2){
  //       item2.setAttribute("hidden", true);
  //     });
  //     tvMatchContainer.forEach(function(item2){
  //       item2.setAttribute("hidden", true);
  //     });
  //   } else {
  //     matchContainer.forEach(function(item3){
  //       item3.removeAttribute("hidden", false);
  //     });
  //     topMatchContainer.forEach(function(item2){
  //       item2.setAttribute("hidden", true);
  //     });
  //     movieMatchContainer.forEach(function(item2){
  //       item2.setAttribute("hidden", true);
  //     });
  //     tvMatchContainer.forEach(function(item2){
  //       item2.setAttribute("hidden", true);
  //     });
  //   }
  // });
}
