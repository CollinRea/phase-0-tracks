// PSEUDOCODE 

// Release 0
// First declare the function that takes one argument
// INPUT: Array
// Declare a variable to hold a value for longest element
// Assign first element to longest element variable
// Setup a for/of loop to iterate through the array 
// Compare each element to longest element variable, if longer reassign to longest variable.
// end loop
// Output: Longest element variable

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

function Compare(obj1, obj2) {
  for (var key1 in obj1) {
    for (var key2 in obj2) {
      if (obj1[key1] == obj2[key2] && key1 == key2)
        return true;
    }
  }
  return false;
}




// DRIVER CODE

// Test for first algo (release 0)
console.log(Longest(["long phrase","longest phrase","longer phrase"]));

// Test for second algo (release 1)
var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};

console.log(Compare(object1,object2));

