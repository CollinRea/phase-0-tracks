// Pseudocode - Javascript 7.1

// Write a loop that takes a string and reverses it
// Input: string
// Use a for loop to  iterate through the string
// it should stop looping when the iterator has ran the length of the string
// start at the end of the string, assigning each letter to a new reversed string
// print the result to the user
// Output: reversed string
// Bonus: Write a new function that prints to separate the work

var str = "Collin"
var newString = ""

for (var i = str.length - 1; i >= 0; i--) {
  newString += str[i];
}

console.log(newString);