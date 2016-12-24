// Release 1

console.log("The script is running!");

// Example 1
var new_item = document.createElement("li");
var node = document.createTextNode("This is a new line item!");
new_item.appendChild(node);

var element = document.getElementById("ul");
element.appendChild(new_item);

// Example 2
var h1 = document.getElementById("h1").style.color = "#B011F5";

// Release 2 - Event Listeners

function addColor(event) {
  event.target.style.backgroundColor = "#3592C9";
}

var olist = document.getElementById("ol");
olist.addEventListener("click", addColor);

function zoom(event) {
  event.target.style.zoom = "150%";
}

var webpage = document.getElementById("html")
webpage.addEventListener("dblclick", zoom);


