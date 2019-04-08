-- | Determine whether a given integer number is prime.

module P31 where

isPrime :: Int -> Bool
isPrime k = null [x | x <- [2..(k-1)], k `mod` x == 0]


isPrime2 :: Int -> Bool
isPrime2 k = length [x | x <- [2..(k-1)], k `mod` x == 0] == 1