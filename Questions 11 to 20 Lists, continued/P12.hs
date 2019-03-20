-- | Decode a run-length encoded list.

module P12 where


data ListItem a = Multiple Int a | Single a
                deriving (Show)

decodeModified :: [ListItem a] -> [a]
decodeModified = concatMap decodeOne
                 where
                   decodeOne (Single x) = [x]
                   decodeOne (Multiple n x) = replicate n x