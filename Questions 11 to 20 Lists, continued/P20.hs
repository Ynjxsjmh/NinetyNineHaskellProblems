-- | Remove the K'th element from a list.

module P20 where

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (xs!!(n-1), [x | (i,x) <- zip [1..] xs, i /= n ])