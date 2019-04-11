module Utils 
    ( stringsToInteger,
      stringToInteger
    ) where

stringsToInteger :: [String] -> [Int]
stringsToInteger = map stringToInteger

stringToInteger :: String -> Int
stringToInteger = read