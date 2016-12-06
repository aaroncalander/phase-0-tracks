// Release 0

var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Chuck", "Harry", "Lucky"];

colors.push("purple");
names.push("Charlie");

console.log(colors);
console.log(names);

var horse_colors = {};

for (var i = 0; i < names.length; i++) {
  horse_colors[names[i]] = colors[i];
}

console.log(horse_colors);