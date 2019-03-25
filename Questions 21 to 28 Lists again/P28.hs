-- |

module P28 where

import List
import Data.Ord (comparing)

-- 1)We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.

lsort :: [[a]] -> [[a]]
lsort = sortBy (comparing length)



-- 2) Again, we suppose that a list contains elements that are lists themselves. But this time the objective is to sort the elements of this list according to their length frequency; i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.
lfsort :: [[a]] -> [[a]]
lfsort