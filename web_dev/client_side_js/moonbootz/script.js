console.log("Green light!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementsByTagName("img");
photo = photo[0];
photo.addEventListener("click", addPinkBorder);

var bullets = document.getElementsByTagName("li");
console.log(bullets);

for (var i=0; i < bullets.length; i++) {
	bullets[i].ondblclick="this.text='You Double Clicked Me'";
}

