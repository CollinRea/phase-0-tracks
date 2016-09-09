console.log("The script is running!");

var body = document.getElementById("main");

function addBorder(event) {
  event.target.style.border = "1px solid gray";
  event.target.style.boxShadow = "3px 3px 3px gray";
}
function removeBorder(event) {
  event.target.style.border = "";
  event.target.style.boxShadow = "";
}

function fontColor(event) {
  event.target.style.color = "black";
  event.target.style.color = "white";
}
function remColor(event) {
  event.target.style.color = "";
}

var photo = document.getElementById("js-img");
photo.addEventListener("mouseover", addBorder);
photo.addEventListener("mouseout", removeBorder);

var sidemenu = document.getElementById("sidemenu");
sidemenu.addEventListener("mouseover", fontColor);
sidemenu.addEventListener("mouseout", remColor);
sidemenu.addEventListener("click", remColor);
