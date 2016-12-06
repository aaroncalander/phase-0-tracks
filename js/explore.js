// Reverse Function PSEUDOCODE

// INPUT: string

// STEPS: 
//  - create a function that takes a string as a parameter
//  - the function will reverse the order of the characters in the string
//    (i.e. reverse("hello") should return "olleh")

// OPTION 1

//  - convert string to array
//  - reverse order of array using built-in method
//  - convert array back to string

// OPTION 2

//  - create new variable that is an empty string
//  - create a loop that starts with index of last character in string 
//    and pushes it to the empty string
//  - return the reversed string

// OUTPUT: string in reverse order

// OPTION 1:

function reverse(string) {
  return string.split('').reverse().join('')
}

// DRIVER CODE:

var reversed_string = (reverse("hello"));

if (2 > 1) {
  console.log(reversed_string);
}

// OPTION 2:

function reverse(string) {
  var reversed_string = "";
  
  for (var i = string.length - 1; i >= 0; i--) {
    reversed_string = reversed_string + string[i];
  }    
  return reversed_string;
}

// DRIVER CODE:

(reverse("hello"));