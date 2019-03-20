-- | Extract a slice from a list.

module P18 where

slice :: [a] -> Int -> Int -> [a]
slice xs m n = take (n-1) $ drop (m-1) xs


sliceEdit :: [a] -> Int -> Int -> [a]
sliceEdit [] _ _ = []
sliceEdit (x:xs) i k
          | i > 1 = slice xs (i-1) (k-1)
          | k < 1= []
          | otherwise = x : slice xs (i-1) (k-1)