{-# LANGUAGE CPP           #-}
{-# LANGUAGE TypeOperators #-}

{-|
Module:      Spec.Data.Type.EqualitySpec
Copyright:   (C) 2014-2016 Ryan Scott
License:     BSD-style (see the file LICENSE)
Maintainer:  Ryan Scott
Stability:   Provisional
Portability: GHC

@hspec@ test for '(:~:)'.
-}
module Spec.Data.Type.EqualitySpec (main, spec) where

import Instances.Data.Type.Equality ()

import Prelude ()
import Prelude.Compat

import Test.Hspec (Spec, hspec, parallel)

#if MIN_VERSION_base(4,7,0)
import Data.Type.Equality ((:~:))

import Spec.Utils (prop_matchesTextShow)

import Test.Hspec (describe)
import Test.Hspec.QuickCheck (prop)
#endif

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
#if MIN_VERSION_base(4,7,0)
    describe "Int :~: Int" $
        prop "TextShow instance" (prop_matchesTextShow :: Int -> Int :~: Int -> Bool)
#else
    pure ()
#endif
