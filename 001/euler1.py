def f(limit):
    return sum([n for n in range(limit) if n % 3 == 0 or n % 5 == 0])


if __name__ == '__main__':
    assert f(10) == 23
    print(f(1000))
