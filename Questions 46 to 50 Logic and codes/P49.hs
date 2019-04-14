-- | Gray codes

module P49 where

gray :: Int -> [String]
gray 0 = [""]
gray n = ['0' : x | x <- prev] ++ ['1' : x | x <- reverse prev]
    where prev = gray(n-1)