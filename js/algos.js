// PSEUDOCODE 

// Release 0
// First declare the function that takes one argument
// INPUT: Array
// Declare a variable to hold a value for longest element
// Assign first element to longest element variable
// Setup a for/of loop to iterate through the array 
// Compare each element to longest element variable, if longer reassign to longest variable.
// end loop
// OUTPUT: Longest element variable

function Longest(arr) {
  var longestVariable = "";
  for (let element of arr) {
    if (element.length > longestVariable.length)
      longestVariable = element;
  }
  return longestVariable;
}


// Release 1 
// Declare a function that takes 2 arguments
// INPUT: 2 Objects
// Setup for/in loop that loops through first object keys
// for each first object key, loop through the second object comparing to each key
// if match is found, return true
// if no match, return false
// OUTPUT: Boolean

function Compare(obj1, obj2) {
  for (var key1 in obj1) {
    for (var key2 in obj2) {
      if (obj1[key1] == obj2[key2] && key1 == key2)
        return true;
    }
  }
  return false;
}


// Release 2
// Declare a function that takes 1 argument
// INPUT: 1 integer
// Declare alphabet variable
// Generate a random number to determine string length
// Generate a string of random letters (random length)
// OUTPUT: Array of strings (length of given integer)

function RandomArray(num) {
  var alph = "abcdefghijklmnopqrstuvwxyz"
  var newArray = []
  for (var i = 0; i < num; i++) {
    var randomWord = "";
    var strLength = Math.floor(Math.random()*10 + 1);
    for (var j = 0; j < strLength; j++) {
      var randomLetter = "";
      randomLetter = alph[Math.floor(Math.random() * alph.length)];
      newArray[i] = (randomWord += randomLetter);
    }
  }
  return newArray;
}

// DRIVER CODE

// Test for first algo (release 0)
console.log(Longest(["long phrase","longest phrase","longer phrase"]));

// Test for second algo (release 1)
var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
var object3 = {name: "Steven", age: 54};
var object4 = {name: "Tamir", age: 14};
console.log(Compare(object1,object2));  // => returns true as expected
console.log(Compare(object3,object4)); // => returns false as expected

// Test for third algo (release 2)
var array1 = RandomArray(4);
var array2 = RandomArray(5);
var array3 = RandomArray(7);
var array4 = RandomArray(8);
var array5 = RandomArray(10);

console.log(array1);
console.log("Longest is " + Longest(array1) + " at a length of: " + Longest(array1).length);
console.log(array2);
console.log("Longest is " + Longest(array2) + " at a length of: " + Longest(array2).length);
console.log(array3);
console.log("Longest is " + Longest(array3) + " at a length of: " + Longest(array3).length);
console.log(array4);
console.log("Longest is " + Longest(array4) + " at a length of: " + Longest(array4).length);
console.log(array5);
console.log("Longest is " + Longest(array5) + " at a length of: " + Longest(array5).length);





