module.exports = (n) ->
  sum = 0
  [a, b] = [0, 1]
  while b <= n
    sum += b if b % 2 is 0
    [a, b] = [b, a + b]
  sum


if process.argv[1] is __filename
  console.log module.exports 4000000
