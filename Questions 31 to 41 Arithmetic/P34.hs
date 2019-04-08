-- | Calculate Euler's totient function phi(m)

module P34 where

import P32

totient :: Integer -> Int
totient k = (length [x | x <- [2..(k-1)], myGCD x k == 1]) + 1