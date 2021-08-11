document.addEventListener("turbolinks:load", function () {
  $("#add_habit").click(function() {
    this.parentElement.classList.toggle("active");
    $(this).next().slideToggle(300);
  }); 
});