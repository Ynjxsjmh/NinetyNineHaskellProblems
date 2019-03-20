-- | Run-length encoding of a list (direct solution).

module P13 where

data ListItem a = Mutiple Int a | Single Int a
                deriving (Show)

encodeDirect :: (Eq a) => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (x:xs)
             | count == 1 = (Single x) : (encodeDirect xs)
             | otherwise = (Multiple count x) : (encodeDirect reset)
             where
               (matched, reset) = span (==x) xs
               count = 1 + (length matched)