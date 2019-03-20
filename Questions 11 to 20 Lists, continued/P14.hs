-- | Duplicate the elements of a list.

module P14 where

dupli :: [a] -> [a]
dupli xs = foldl (\acc x -> acc ++ [x,x]) [] xs