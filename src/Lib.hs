module Lib
    ( nod,
      nok,
      fractionalPlus
    ) where

import Utils

nod :: Int -> Int -> Int
nod a 0 = a
nod a b = nod b $ a `rem` b

nok :: Int -> Int -> Int
nok a b = abs a * b `div` nod a b

fractionalPlus :: (Fractional a) => a -> a -> a
fractionalPlus x y = x