console.log("The script is running!");

var new_item = document.createElement("li");
var node = document.createTextNode("This is a new line item!");
new_item.appendChild(node);

var element = document.getElementById("ul");
element.appendChild(new_item);

var olist = document.getElementById("ol");
olist.style.backgroundColor = "#3592C9";