{-
Reverse a list
-}

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = xs ++ x