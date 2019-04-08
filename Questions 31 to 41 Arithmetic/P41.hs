-- | Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition.

module P41 where

import P40

goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList m n = [(x, y) | k <- [m..n], k `mod` 2 == 0,
                    let x = fst $ goldbach k,
                    let y = snd $ goldbach k]


goldbachList' :: Int -> Int -> Int -> [(Int, Int)]
goldbachList' m n limit = [(x, y) | k <- [m..n], k `mod` 2 == 0,
                           let x = fst $ goldbach k,
                           let y = snd $ goldbach k,
                           x > limit, y > limit]