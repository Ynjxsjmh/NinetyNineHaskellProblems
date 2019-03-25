-- | Generate the combinations of K distinct objects chosen from the N elements of a list

module P26 where

import Data.List

combinations :: Int -> [a] -> [[a]]
combinations n xs = filter ((==n) . length) (subsequences xs)
