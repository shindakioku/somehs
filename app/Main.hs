module Main where

import System.Environment 
import Lib
import Utils

type Name = String
type Args = [String]
data Result = Anything String | Number Int
data Command = Command { name :: Name, args :: Args }

instance Show (Result) where
  show (Anything a) = a
  show (Number a) = show a

main :: IO ()
main = do
  args <- getArgs
  print . command $ toCommand args

toCommand :: [String] -> Command
toCommand (x:xs) = Command { name = x, args = xs }

command :: Command -> Result
command (Command name args) = execute name args

takeTwoNumbers :: Args -> (Int, Int)
takeTwoNumbers (x:y:_) = (stringToInteger x, stringToInteger y)

execute :: Name -> Args -> Result
execute "nod" xs = Number $ nod x y
  where (x, y) = takeTwoNumbers xs
execute "nok" xs = Number $ nok x y
  where (x, y) = takeTwoNumbers xs
execute _ _ = Anything "Incorrect command name"