-- | Insert an element at a given position into a list.

module P21 where

insertAt :: a -> [a] -> Int -> [a]
insertAt x (y:xs) n
         | n == 1 = x:xs
         | otherwise  = y : insertAt x xs (n-1)