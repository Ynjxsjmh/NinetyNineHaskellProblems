-- | Determine the prime factors of a given positive integer.

module P36 where
import Data.List
import Data.Numbers (primeFactors)

prime_factors_mult :: Integer -> [(Integer, Int)]
prime_factors_mult n = map encode  (group $ primeFactors n)
    where encode xs = (head xs, length xs)
