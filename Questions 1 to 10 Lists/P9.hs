-- | Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

module P9 where

pack :: (Eq a) => [a] -> [[a]]
pack xs = foldl (\a b -> if (last $ last a) == b then (init a) ++ [(last a) ++ [b]] else a ++ [[b]]) [[head xs]] xs
