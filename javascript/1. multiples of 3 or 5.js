// Multiples of 3 or 5
// https://projecteuler.net/problem=1

function multiplesOf3and5(number) {
  const multiples = [];
  for (let i = 3; i < number; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      multiples.push(i);
    }
  }
  let sum = multiples.reduce((acc, value) => acc + value);
  return sum;
}

console.log(multiplesOf3and5(1000));
