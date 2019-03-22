-- | Generate a random permutation of the elements of a list.

module P25 where

import P23

rnd_permu :: [a] -> [a]
rnd_permu xs = rnd_select xs (length xs)