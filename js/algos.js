// PSEUDOCODE 
// - Write a function that takes an array of words or phrases and returns the longest...
// -So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], 
//  it would return "longest phrase".
// -This is a logical reasoning challenge, so try to reason through this based on what you already know, 
//  rather than Googling the fanciest solution or looking up built-in sorting functions. 
// -Note that "some string".length will do what you expect in JS.

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

console.log(Longest(["long phrase","longest phrase","longer phrase"]));
