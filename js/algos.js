// Release 0

// write a function that takes an array of words or phrases and 
// returns the longest word or phrase in the array.

// Pseudocode
//  - INPUT: an array of strings

//  -STEPS
//    - declare a variable that is an array
//    - iterate over the array with a for loop
//    - compare the length of each string in the array using .length
//    - choose the string that has the most characters

//  - OUTPUT: the string in the array with the most characters

function longestString(array) {
  var longestWord = "";

  for (var i = 0; i < array.length; i++) {
    if ( array[i].length > longestWord.length) {
      longestWord = array[i];
    }
  }
    return longestWord;
}

// DRIVER CODE:

var array = ["hello", "good morning", "how are you", "supercalifragilisticexpialidocious", "the pleasure is mine"];
console.log(longestString(array));

// Release 1

// write a function that takes two objects and checks to see if the 
// objects share at least one key-value pair.

// Pseudocode
//  - INPUT: two separate objects(strings or identifiers)

//  - STEPS:
//     - set a 'matching variable' to false
//     - create a for loop to iterate through the objects
//     - create an if statement to compare both objects keys
//     - set 'matching variable' to true if keys match
//     - return boolean

//  - OUTPUT: true or false

function objectMatch(objectOne, objectTwo) {
  var positiveMatch = false;
  for (var pair in objectOne) {
  	if (objectOne[pair] == objectTwo[pair]) {
  	  positiveMatch = true;
  	}
  }
  return positiveMatch;
}

// DRIVER CODE:
var objectOne = {color: "blue", food: "pizza", number: 13};
var objectTwo = {color: "red", food: "pizza", number: 7};
console.log(objectMatch(objectOne, objectTwo));

var objectOne = {color: "blue", food: "pizza", number: 13};
var objectTwo = {color: "red", food: "pasta", number: 7};
console.log(objectMatch(objectOne, objectTwo));

// Release 2

// write a function that takes an integer for length, and builds and 
// returns an array of strings of the given length.

// Pseudocode
//  - INPUT: an integer designating the length of the array to build

//  - STEPS:
//     - declare an empty array variable
//     - set length of array variable to equal the integer from parameter
//     - create an 'alphabet' variable that contains all possible letters
//     - use a for loop to fill the empty array with as many empty
//       strings as integer parameter sets
//     - declare variable that sets random length (up to 10) of each string
//     - use a for loop to iterate over 'alphabet' variable and build random
//       character strings to fill the array
//     - return the completed array
//  - OUTPUT: an array of strings of the integer length from parameter

function arrayBuilder(integer) {
  var array = [];
  array.length = integer;
  var myAlphabet = "aeiouhklmnpw";
  for (var i = 0; i < integer; i++) {
  	array[i] = "";
  	var randomWord = Math.floor(Math.random() * 10) + 1;
    for (var n = 0; n < randomWord; n++) {
  	  array[i] += myAlphabet.charAt(Math.floor(Math.random() * myAlphabet.length));
    }
  }
  return array;
}
// DRIVER CODE:

for (i = 0; i <= 10; i++) {
  var builtArray = arrayBuilder(5);
  console.log("Here is my random array: " + builtArray);
  console.log("The longest word is: " + longestString(builtArray));
}
