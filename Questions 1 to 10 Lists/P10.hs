-- | Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

module P10 where

import Data.List

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\l@(x:xs) -> (length l, x)) $ group xs