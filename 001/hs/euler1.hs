import Test.HUnit


f :: Int -> Int
f x
  | n == 0          = 0
  | n `mod` 3 == 0  = f n + n
  | n `mod` 5 == 0  = f n + n
  | otherwise       = f n
  where n = x - 1


main = do assertEqual "" 23 $ f 10
          print $ f 1000
