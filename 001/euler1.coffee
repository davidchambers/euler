module.exports = (limit) ->
  sum = 0
  sum += n for n in [1...limit] when n % 3 is 0 or n % 5 is 0
  sum


if process.argv[1] is __filename
  require('assert').strictEqual(module.exports(10), 23)
  console.log module.exports 1000
