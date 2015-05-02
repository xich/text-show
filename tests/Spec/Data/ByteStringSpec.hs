{-|
Module:      Spec.Data.ByteStringSpec
Copyright:   (C) 2014-2015 Ryan Scott
License:     BSD-style (see the file LICENSE)
Maintainer:  Ryan Scott
Stability:   Experimental
Portability: GHC

@hspec@ tests for data types in the @bytestring@ library.
-}
module Spec.Data.ByteStringSpec (main, spec) where

import qualified Data.ByteString      as BS (ByteString)
import qualified Data.ByteString.Lazy as BL (ByteString)
import           Data.ByteString.Short (ShortByteString)

import           Instances.Data.ByteString ()

import           Spec.Utils (prop_matchesShow)

import           Test.Hspec (Spec, describe, hspec, parallel)
import           Test.Hspec.QuickCheck (prop)
import           Test.QuickCheck.Instances ()

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel . describe "Text.Show.Text.Data.ByteString" $ do
    prop "strict ByteString instance" (prop_matchesShow :: Int -> BS.ByteString -> Bool)
    prop "lazy ByteString instance"   (prop_matchesShow :: Int -> BL.ByteString -> Bool)
    prop "ShortByteString instance"   (prop_matchesShow :: Int -> ShortByteString -> Bool)
