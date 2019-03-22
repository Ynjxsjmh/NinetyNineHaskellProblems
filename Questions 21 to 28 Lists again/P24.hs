-- | Draw N different random numbers from the set 1..M

module P24 where

import Data.List
import System.Random

diff_select :: Int -> Int -> IO [Int]
diff_select n m = do
  gen <- getStdGen
  return . take n $ randomRs (1,m) gen
