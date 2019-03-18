{-
Find the K'th element of a list. The first element in the list is number 1.
-}

elementAt :: [a] -> Int -> a

elementAt xs n
    | n > length xs = error "Index out of range."
    | otherwise = last $ take n xs