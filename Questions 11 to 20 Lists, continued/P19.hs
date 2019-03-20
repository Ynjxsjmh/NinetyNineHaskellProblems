-- | Rotate a list N places to the left.

module P19 where

rotate :: [a] -> Int -> [a]

rotate xs n
       | n == 0 = xs
       | n > 0 = drop n xs ++ take n xs
       | otherwise = reverse $ rotate (reverse xs) (-n)