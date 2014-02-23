module.exports = function(n) {
  var sum = 0;
  var a = 0, b = 1;
  while (b <= n) {
    if (b % 2 == 0) {
      sum += b;
    }
    b = a + b;
    a = b - a;
  }
  return sum;
};


if (process.argv[1] == __filename) {
  console.log(module.exports(4000000));
}
