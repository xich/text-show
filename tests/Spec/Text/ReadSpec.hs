{-# LANGUAGE CPP #-}

{-|
Module:      Spec.Text.ReadSpec
Copyright:   (C) 2014-2015 Ryan Scott
License:     BSD-style (see the file LICENSE)
Maintainer:  Ryan Scott
Stability:   Experimental
Portability: GHC

@hspec@ tests for data types in the "Text.Read" module.
-}
module Spec.Text.ReadSpec (main, spec) where

import Instances.Text.Read ()

import Spec.Utils (prop_matchesShow)

import Test.Hspec (Spec, describe, hspec, parallel)
import Test.Hspec.QuickCheck (prop)

import Text.Read (Lexeme)
#if MIN_VERSION_base(4,7,0)
import Text.Read.Lex (Number)
#endif

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel . describe "Text.Show.Text.Text.Read.Lex" $ do
    prop "Lexeme instance" (prop_matchesShow :: Int -> Lexeme -> Bool)
#if MIN_VERSION_base(4,7,0)
    prop "Number instance" (prop_matchesShow :: Int -> Number -> Bool)
#endif
