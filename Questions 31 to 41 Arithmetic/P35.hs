-- | Determine the prime factors of a given positive integer. Construct a flat list containing the prime factors in ascending order.

module P35 where


-- not ensure that potential divisors are primes
primeFactors :: Integer -> [Integer]
primeFactors n = primeFactors' n 2
                 where
                   primeFactors' 1 _ = []
                   primeFactors' n f
                                 | n `mod` f == 0 = f:primeFactors' (n `div` f) f
                                 | otherwise = primeFactors' n (f+1)




primeFactors2 :: Integer -> [Integer]


primeFactors2 k = [x | x <- [2..sqrt k], ]



