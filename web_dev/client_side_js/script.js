function makeItRed(event) {
  event.target.style.color = "red";
}

var paragraph_stuff = document.getElementById("paragraph");
paragraph_stuff.addEventListener("click", makeItRed);