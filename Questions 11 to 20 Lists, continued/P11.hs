-- | Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

module P11 where

import Data.List

data ListItem a = Multiple Int a | Single a
              deriving (Show)


encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified xs = [ if length x == 1 then Single (head x) else Multiple (length x) (head x) | x <- group xs ]