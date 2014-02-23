import Test.HUnit


isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral


factorize   :: Int -> [Int]
factorize n = filter ((== 0) . (mod n)) [2 .. isqrt n]


f :: Int -> [Int]
f = (filter (null . factorize)) . factorize


main = do assertEqual "" [5, 7, 13, 29] $ f 13195
          print $ last $ f 600851475143
