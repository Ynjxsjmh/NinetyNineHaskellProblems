-- | Split a list into two parts; the length of the first part is given.

module P17 where

split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)
