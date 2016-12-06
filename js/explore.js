// Reverse Function PSEUDOCODE

// INPUT: string

// STEPS: 
//  - create a function that takes a string as a parameter
//  - the function will reverse the order of the characters in the string
//    (i.e. reverse("hello") should return "olleh")
//  - convert string to array
//  - reverse order of array using built-in method
//  - convert array back to string

// OUTPUT: string in reverse order

function reverse(string) {
  return string.split('').reverse().join('')
}

// DRIVER CODE:

var reversed_string = (reverse("hello"));

if (2 > 1) {
  console.log(reversed_string);
}