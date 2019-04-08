-- | A list of prime numbers.

module P39 where

import P31

primesR :: Int -> Int -> [Int]
primesR m n = filter isPrime  [m..n]