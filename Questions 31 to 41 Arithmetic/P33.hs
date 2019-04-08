-- | Determine whether two positive integer numbers are coprime. Two numbers are coprime if their greatest common divisor equals 1.

module P33 where

import P32

coprime :: Integer -> Integer -> Bool
coprime x y = myGCD x y == 1
