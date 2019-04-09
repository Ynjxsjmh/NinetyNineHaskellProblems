-- | Truth tables for logical expressions (2).

module P47 where

infixl 9 `not'`
not' :: Bool -> Bool
not' True = False
not False = True

infixl 4 `or'`
infixl 6 `and'`
and',or',nor',nand',xor',impl',equ' :: Bool -> Bool -> Bool

and' True True = True
and' _    _    = False

or' False False = False
or' _     _     = True

nand' a = not' . and' a

nor' a = not' . or' a

xor' True  False = True
xor' False True  = True
xor' _     _     = False

equ' True  True  = True
equ' False False = True
equ' _     _     = False

-- 如果第一输入为低时，输出高，否则输出与第二输入相同的高低状态。
impl' False _ = True
impl' _     b = b

-- I don't understand the requirement
table2 :: (Bool -> Bool -> Bool) -> IO ()
table2 f = putStrLn $ concatMap (++ "\n" )
          [show a ++ " " ++ show b ++ " " ++ show (f a b)
          | a <- [True, False], b <- [True, False] ]