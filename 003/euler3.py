import math


isqrt = lambda n: int(math.ceil(math.sqrt(n)))

factorize = lambda n: [m for m in range(2, isqrt(n)) if n % m == 0]

f = lambda n: [m for m in factorize(n) if not factorize(m)]


if __name__ == '__main__':
    assert f(13195) == [5, 7, 13, 29]
    print(f(600851475143)[-1])
