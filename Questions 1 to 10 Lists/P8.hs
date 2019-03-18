{-
Eliminate consecutive duplicates of list elements.
-}

compress :: (Eq a) => [a] -> [a]
compress xs = foldl (\a b -> if (last a) == b then a else a ++ [b] ) [head xs] xs
