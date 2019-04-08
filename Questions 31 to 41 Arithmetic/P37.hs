-- | Calculate Euler's totient function phi(m) (improved).

module P37 where

import P36

totient m = product [(p - 1) * p ^ (c - 1) | (p, c) <- prime_factors_mult m]
