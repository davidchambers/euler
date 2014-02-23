function factorize(n) {
  var factors = [];
  var m = 1, max = Math.ceil(Math.sqrt(n));
  while (++m < max) if (n % m == 0) factors.push(m);
  return factors;
}


function f(n) {
  return factorize(n).filter(function(factor) {
    return factorize(factor).length == 0;
  });
}


if (process.argv[1] == __filename) {
  require('assert').deepEqual(f(13195), [5, 7, 13, 29]);
  console.log(f(600851475143).slice(-1)[0]);
}
