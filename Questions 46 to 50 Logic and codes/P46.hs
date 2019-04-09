-- |

module P46 where

not' :: Bool -> Bool
not' True = False
not False = True

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
table :: (Bool -> Bool -> Bool) -> IO ()
table f = putStrLn $ concatMap (++ "\n" )
          [show a ++ " " ++ show b ++ " " ++ show (f a b)
          | a <- [True, False], b <- [True, False] ]