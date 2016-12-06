// Reverse Function PSEUDOCODE

// INPUT: string
// STEPS: 
//  - create a function that takes a string as a parameter
//  - the function will reverse the order of the characters in the string
//    (i.e. reverse("hello") should return "olleh")
// OUTPUT: string in reverse order

function reverse(string) {
  return string.split('').reverse().join('')
}

// DRIVER CODE:

var reversed_string = (reverse("hello"));

if (2 > 1) {
  console.log(reversed_string);
}