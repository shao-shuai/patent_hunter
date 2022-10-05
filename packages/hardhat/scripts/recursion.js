// let counter = 0;

// function recurse() {
//     if (counter === 1000) return 'done';
//     counter++;
//     console.log(counter);
//     return recurse();
// }

// console.log(recurse());

//-----------------------------------------

// let i = 0;

// function getLength(array) {
//   if (array[i] === undefined) {
//     return i
//   }
//   i++;
//   return getLength(array);
// }

// console.log(getLength([1])); // -> 1
// console.log(getLength([1, 2])); // -> 2
// console.log(getLength([1, 2, 3, 4, 5])); // -> 5
// console.log(getLength([])); // -> 0

//-----------------------------------------

function pow(base, exponent, i = 1) {
    if (i === exponent) {
      return base;
    }
    
    i++;
    
    return base * pow(base, exponent, i);
  }
console.log(pow(2, 4)); // -> 16
console.log(pow(3, 5)); // -> 243