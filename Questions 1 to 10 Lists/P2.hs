{-
Find the last but one element of a list.
-}

myButLast :: [a] -> a
myButLast [] = error "Empty list"
myButLast [x] = error "Too few elements"
myButLast xs = xs !! (length xs - 2)