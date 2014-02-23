factorize = (n) ->
  m = 1; max = Math.ceil Math.sqrt n
  m while ++m < max when n % m is 0


f = (n) ->
  factorize n
  .filter (factor) -> factorize(factor).length is 0


if process.argv[1] is __filename
  require('assert').deepEqual(f(13195), [5, 7, 13, 29])
  console.log f(600851475143)[-1..][0]
