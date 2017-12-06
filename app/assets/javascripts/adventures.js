var hiddens = document.querySelectorAll(".hidden");

hiddens.forEach(function(hidden) {
  hidden.parentElement.addEventListener("mouseenter", function(){
    hidden.classList.remove("hidden");
  });
  hidden.parentElement.addEventListener("mouseleave", function(){
    hidden.classList.add("hidden");
  });
});
