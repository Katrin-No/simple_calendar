document.addEventListener("turbolinks:load", function () {
  $(".open").click(function() {
    this.parentElement.classList.toggle("active");
    $(this).next().slideToggle(300);
  }); 
});