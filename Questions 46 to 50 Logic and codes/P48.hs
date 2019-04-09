-- | Truth tables for logical expressions (3).

module P48 where

import Control.Monad (replicateM)

not' :: Bool -> Bool
not' True = False
not' False = True

infixl 4 `or'`
infixl 4 `nor'`
infixl 5 `xor'`
infixl 6 `and'`
infixl 6 `nand'`
infixl 3 `equ'`
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

-- table n
tablen :: Int -> ([Bool] -> Bool) -> IO()
tablen n f = putStrLn $ concatMap (++ "\n") [toStr a ++ " " ++ show(f a) | a <- args n]
    where args n = replicateM n [True, False]
          toStr = unwords . map (\x -> show x ++ space x)
          space True  = "  "
          space False = " "