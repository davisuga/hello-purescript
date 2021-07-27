module Main where

import Prelude


import Effect.Console (log)
import Data.List
import Data.Either
import Data.Functor
import Data.Boolean

has:: forall a. List a -> Boolean
has Nil _ = false
has list el
  | el == last list = true
  | otherwise = has (init list) el

contains [] _ = false
contains _ [] = false
contains list (el : elms)
  | list `has` el = true
  | otherwise = list `contains` elms


main = do
  log "oi"