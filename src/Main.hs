module Main where

import Brick (Widget, simpleMain, str)

ui :: Widget ()
ui = str "Hello Haskellers!"

main :: IO ()
main = simpleMain ui
