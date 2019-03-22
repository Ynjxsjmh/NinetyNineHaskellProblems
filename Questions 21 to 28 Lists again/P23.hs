-- | Extract a given number of randomly selected elements from a list.

module P23 where

import Data.List
import System.Random

rnd_select :: [a] -> Int -> [a]
rnd_select x n = map (x!!) is
 where is = take n . nub $ randomRs (0, length x - 1) (mkStdGen 100)


rnd_select2 xs n = do
    gen <- getStdGen
    return $ take n [ xs !! x | x <- randomRs (0, (length xs) - 1) gen]