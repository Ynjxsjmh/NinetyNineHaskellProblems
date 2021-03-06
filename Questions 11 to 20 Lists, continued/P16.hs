-- | Drop every N'th element from a list.

module P16 where

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = [x | (i,x) <- zip [1..] xs, i `mod` n /= 0]