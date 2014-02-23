module.exports = function(limit) {
  var sum = 0;
  for (var n = 1; n < limit; n += 1) {
    if (n % 3 == 0 || n % 5 == 0) {
      sum += n;
    }
  }
  return sum;
};


if (process.argv[1] == __filename) {
  require('assert').strictEqual(module.exports(10), 23);
  console.log(module.exports(1000));
}
