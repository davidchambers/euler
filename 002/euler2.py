def f(n):
    sum_ = 0
    a, b = 0, 1
    while b <= n:
        if b % 2 == 0:
            sum_ += b
        a, b = b, a + b
    return sum_


if __name__ == '__main__':
    print(f(4000000))
