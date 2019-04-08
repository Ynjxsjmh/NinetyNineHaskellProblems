-- | Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers.

module P40 where

import P39

goldbach :: Int -> (Int, Int)
goldbach k
    | k <= 2 = error "Input lower than two"
    | odd k  = error "Input is odd"
    | otherwise = head [(x, y) | x <- primes, y <- primes, x + y == k]
     where primes = primesR 2 (k-2)