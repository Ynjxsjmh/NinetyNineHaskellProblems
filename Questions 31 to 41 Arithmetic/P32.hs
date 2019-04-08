-- | Determine the greatest common divisor of two positive integer numbers.

module P32 where

myGCD :: Integer -> Integer -> Integer
myGCD x 0 = abs x
myGCD 0 y = abs y
myGCD x y = myGCD y (x `mod` y)