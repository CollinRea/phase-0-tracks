// var color_arry = ['blue', 'red', 'green', 'yellow'];
// var names_arry = ['Ed', 'seabiscut', 'old faithful', 'john'];

// color_arry.push('purple');
// names_arry.push('karen');

// console.log(color_arry);
// console.log(names_arry);

// var horse = {};

// for (i = 0; i < names_arry.length; i++) {
//  horse[names_arry[i]] = color_arry[i];
// }

// console.log(horse);

function Car(color, type, max_speed) {
  this.color = color;
  this.type = type;
  this.max_speed = max_speed;
  this.name = 'car';

  this.drive = function() {
    console.log('And ' + this.name + ' is off!' );
  };

}; 

var beemer = new Car('black','coupe', 150);

beemer.drive();

var lambo = new Car('matte black', 'convertable', 200);

lambo.drive();

var hummer = new Car('camo', 'truck', 100);

hummer.drive();


