{-# LANGUAGE CPP                        #-}
#if MIN_VERSION_base(4,5,0)
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE StandaloneDeriving         #-}
#endif
{-# OPTIONS_GHC -fno-warn-orphans #-}
{-|
Module:      Text.Show.Text.Foreign.C.Types
Copyright:   (C) 2014-2015 Ryan Scott
License:     BSD-style (see the file LICENSE)
Maintainer:  Ryan Scott
Stability:   Experimental
Portability: GHC

Monomorphic 'Show' functions for Haskell newtypes corresponding to C
types in the Foreign Function Interface (FFI).

/Since: 0.3/
-}
module Text.Show.Text.Foreign.C.Types (
      showbCCharPrec
    , showbCSCharPrec
    , showbCUChar
    , showbCShortPrec
    , showbCUShort
    , showbCIntPrec
    , showbCUInt
    , showbCLongPrec
    , showbCULong
    , showbCPtrdiffPrec
    , showbCSize
    , showbCWcharPrec
    , showbCSigAtomicPrec
    , showbCLLongPrec
    , showbCULLong
    , showbCIntPtrPrec
    , showbCUIntPtr
    , showbCIntMaxPrec
    , showbCUIntMax
    , showbCClockPrec
    , showbCTimePrec
#if MIN_VERSION_base(4,4,0)
    , showbCUSeconds
    , showbCSUSecondsPrec
#endif
    , showbCFloatPrec
    , showbCDoublePrec
    ) where

import Data.Text.Lazy.Builder (Builder)

import Foreign.C.Types

import Prelude hiding (Show)

import Text.Show.Text.Classes (Show(showb, showbPrec))
import Text.Show.Text.Data.Floating ()
import Text.Show.Text.Data.Integral ()

#if !(MIN_VERSION_base(4,5,0))
import Data.Int
import Data.Word

import Unsafe.Coerce (unsafeCoerce)

# include "HsBaseConfig.h"
# include "inline.h"
#endif

-- | Convert a 'CChar' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCCharPrec :: Int -> CChar -> Builder
#if MIN_VERSION_base(4,5,0)
showbCCharPrec = showbPrec
{-# INLINE showbCCharPrec #-}
#else
showbCCharPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_CHAR -> Builder)
#endif

-- | Convert a 'CSChar' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCSCharPrec :: Int -> CSChar -> Builder
#if MIN_VERSION_base(4,5,0)
showbCSCharPrec = showbPrec
{-# INLINE showbCSCharPrec #-}
#else
showbCSCharPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_SIGNED_CHAR -> Builder)
#endif

-- | Convert a 'CUChar' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCUChar :: CUChar -> Builder
#if MIN_VERSION_base(4,5,0)
showbCUChar = showb
{-# INLINE showbCUChar #-}
#else
showbCUChar = unsafeCoerce (showb :: HTYPE_UNSIGNED_CHAR -> Builder)
#endif

-- | Convert a 'CShort' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCShortPrec :: Int -> CShort -> Builder
#if MIN_VERSION_base(4,5,0)
showbCShortPrec = showbPrec
{-# INLINE showbCShortPrec #-}
#else
showbCShortPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_SHORT -> Builder)
#endif

-- | Convert a 'CUShort' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCUShort :: CUShort -> Builder
#if MIN_VERSION_base(4,5,0)
showbCUShort = showb
{-# INLINE showbCUShort #-}
#else
showbCUShort = unsafeCoerce (showb :: HTYPE_UNSIGNED_SHORT -> Builder)
#endif

-- | Convert a 'CInt' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCIntPrec :: Int -> CInt -> Builder
#if MIN_VERSION_base(4,5,0)
showbCIntPrec = showbPrec
{-# INLINE showbCIntPrec #-}
#else
showbCIntPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_INT -> Builder)
#endif

-- | Convert a 'CUInt' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCUInt :: CUInt -> Builder
#if MIN_VERSION_base(4,5,0)
showbCUInt = showb
{-# INLINE showbCUInt #-}
#else
showbCUInt = unsafeCoerce (showb :: HTYPE_UNSIGNED_INT -> Builder)
#endif

-- | Convert a 'CLong' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCLongPrec :: Int -> CLong -> Builder
#if MIN_VERSION_base(4,5,0)
showbCLongPrec = showbPrec
{-# INLINE showbCLongPrec #-}
#else
showbCLongPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_LONG -> Builder)
#endif

-- | Convert a 'CULong' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCULong :: CULong -> Builder
#if MIN_VERSION_base(4,5,0)
showbCULong = showb
{-# INLINE showbCULong #-}
#else
showbCULong = unsafeCoerce (showb :: HTYPE_UNSIGNED_LONG -> Builder)
#endif

-- | Convert a 'CPtrdiff' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCPtrdiffPrec :: Int -> CPtrdiff -> Builder
#if MIN_VERSION_base(4,5,0)
showbCPtrdiffPrec = showbPrec
{-# INLINE showbCPtrdiffPrec #-}
#else
showbCPtrdiffPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_PTRDIFF_T -> Builder)
#endif

-- | Convert a 'CSize' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCSize :: CSize -> Builder
#if MIN_VERSION_base(4,5,0)
showbCSize = showb
{-# INLINE showbCSize #-}
#else
showbCSize = unsafeCoerce (showb :: HTYPE_SIZE_T -> Builder)
#endif

-- | Convert a 'CWchar' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCWcharPrec :: Int -> CWchar -> Builder
#if MIN_VERSION_base(4,5,0)
showbCWcharPrec = showbPrec
{-# INLINE showbCWcharPrec #-}
#else
showbCWcharPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_WCHAR_T -> Builder)
#endif

-- | Convert a 'CSigAtomic' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCSigAtomicPrec :: Int -> CSigAtomic -> Builder
#if MIN_VERSION_base(4,5,0)
showbCSigAtomicPrec = showbPrec
{-# INLINE showbCSigAtomicPrec #-}
#else
showbCSigAtomicPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_SIG_ATOMIC_T -> Builder)
#endif

-- | Convert a 'CLLong' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCLLongPrec :: Int -> CLLong -> Builder
#if MIN_VERSION_base(4,5,0)
showbCLLongPrec = showbPrec
{-# INLINE showbCLLongPrec #-}
#else
showbCLLongPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_LONG_LONG -> Builder)
#endif

-- | Convert a 'CULLong' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCULLong :: CULLong -> Builder
#if MIN_VERSION_base(4,5,0)
showbCULLong = showb
{-# INLINE showbCULLong #-}
#else
showbCULLong = unsafeCoerce (showb :: HTYPE_UNSIGNED_LONG_LONG -> Builder)
#endif

-- | Convert a 'CIntPtr' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCIntPtrPrec :: Int -> CIntPtr -> Builder
#if MIN_VERSION_base(4,5,0)
showbCIntPtrPrec = showbPrec
{-# INLINE showbCIntPtrPrec #-}
#else
showbCIntPtrPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_INTPTR_T -> Builder)
#endif

-- | Convert a 'CUIntPtr' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCUIntPtr :: CUIntPtr -> Builder
#if MIN_VERSION_base(4,5,0)
showbCUIntPtr = showb
{-# INLINE showbCUIntPtr #-}
#else
showbCUIntPtr = unsafeCoerce (showb :: HTYPE_UINTPTR_T -> Builder)
#endif

-- | Convert a 'CIntMax' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCIntMaxPrec :: Int -> CIntMax -> Builder
#if MIN_VERSION_base(4,5,0)
showbCIntMaxPrec = showbPrec
{-# INLINE showbCIntMaxPrec #-}
#else
showbCIntMaxPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_INTMAX_T -> Builder)
#endif

-- | Convert a 'CUIntMax' to a 'Builder'.
-- 
-- /Since: 0.3/
showbCUIntMax :: CUIntMax -> Builder
#if MIN_VERSION_base(4,5,0)
showbCUIntMax = showb
{-# INLINE showbCUIntMax #-}
#else
showbCUIntMax = unsafeCoerce (showb :: HTYPE_UINTMAX_T -> Builder)
#endif

-- | Convert a 'CClock' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCClockPrec :: Int -> CClock -> Builder
#if MIN_VERSION_base(4,5,0)
showbCClockPrec = showbPrec
{-# INLINE showbCClockPrec #-}
#else
showbCClockPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_CLOCK_T -> Builder)
#endif

-- | Convert a 'CTime' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCTimePrec :: Int -> CTime -> Builder
#if MIN_VERSION_base(4,5,0)
showbCTimePrec = showbPrec
{-# INLINE showbCTimePrec #-}
#else
showbCTimePrec = unsafeCoerce (showbPrec :: Int -> HTYPE_TIME_T -> Builder)
#endif

#if MIN_VERSION_base(4,4,0)
-- | Convert a 'CUSeconds' value to a 'Builder'.
-- This function is only available with @base-4.4.0.0@ or later.
-- 
-- /Since: 0.3/
showbCUSeconds :: CUSeconds -> Builder
# if MIN_VERSION_base(4,5,0)
showbCUSeconds = showb
{-# INLINE showbCUSeconds #-}
# else
showbCUSeconds = unsafeCoerce (showb :: HTYPE_USECONDS_T -> Builder)
# endif

-- | Convert a 'CSUSeconds' value to a 'Builder' with the given precedence.
-- This function is only available with @base-4.4.0.0@ or later.
-- 
-- /Since: 0.3/
showbCSUSecondsPrec :: Int -> CSUSeconds -> Builder
# if MIN_VERSION_base(4,5,0)
showbCSUSecondsPrec = showbPrec
{-# INLINE showbCSUSecondsPrec #-}
# else
showbCSUSecondsPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_SUSECONDS_T -> Builder)
# endif
#endif

-- | Convert a 'CFloat' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCFloatPrec :: Int -> CFloat -> Builder
#if MIN_VERSION_base(4,5,0)
showbCFloatPrec = showbPrec
{-# INLINE showbCFloatPrec #-}
#else
showbCFloatPrec = unsafeCoerce (showbPrec :: Int -> HTYPE_FLOAT -> Builder)
#endif

-- | Convert a 'CDouble' to a 'Builder' with the given precedence.
-- 
-- /Since: 0.3/
showbCDoublePrec :: Int -> CDouble -> Builder
#if MIN_VERSION_base(4,5,0)
showbCDoublePrec = showbPrec
{-# INLINE showbCDoublePrec #-}
#else
showbCDoublePrec = unsafeCoerce (showbPrec :: Int -> HTYPE_DOUBLE -> Builder)
#endif

#if MIN_VERSION_base(4,5,0)
deriving instance Show CChar
deriving instance Show CSChar
deriving instance Show CUChar
deriving instance Show CShort
deriving instance Show CUShort
deriving instance Show CInt
deriving instance Show CUInt
deriving instance Show CLong
deriving instance Show CULong
deriving instance Show CPtrdiff
deriving instance Show CSize
deriving instance Show CWchar
deriving instance Show CSigAtomic
deriving instance Show CLLong
deriving instance Show CULLong
deriving instance Show CIntPtr
deriving instance Show CUIntPtr
deriving instance Show CIntMax
deriving instance Show CUIntMax
deriving instance Show CClock
deriving instance Show CTime
# if MIN_VERSION_base(4,4,0)
deriving instance Show CUSeconds
deriving instance Show CSUSeconds
# endif
deriving instance Show CFloat
deriving instance Show CDouble
#else
instance Show CChar where
    showbPrec = showbCCharPrec
    INLINE_INST_FUN(showbPrec)

instance Show CSChar where
    showbPrec = showbCSCharPrec
    INLINE_INST_FUN(showbPrec)

instance Show CUChar where
    showb = showbCUChar
    INLINE_INST_FUN(showb)

instance Show CShort where
    showbPrec = showbCShortPrec
    INLINE_INST_FUN(showbPrec)

instance Show CUShort where
    showb = showbCUShort
    INLINE_INST_FUN(showb)

instance Show CInt where
    showbPrec = showbCIntPrec
    INLINE_INST_FUN(showbPrec)

instance Show CUInt where
    showb = showbCUInt
    INLINE_INST_FUN(showb)

instance Show CLong where
    showbPrec = showbCLongPrec
    INLINE_INST_FUN(showbPrec)

instance Show CULong where
    showb = showbCULong
    INLINE_INST_FUN(showb)

instance Show CPtrdiff where
    showbPrec = showbCPtrdiffPrec
    INLINE_INST_FUN(showbPrec)

instance Show CSize where
    showb = showbCSize
    INLINE_INST_FUN(showb)

instance Show CWchar where
    showbPrec = showbCWcharPrec
    INLINE_INST_FUN(showbPrec)

instance Show CSigAtomic where
    showbPrec = showbCSigAtomicPrec
    INLINE_INST_FUN(showbPrec)

instance Show CLLong where
    showbPrec = showbCLLongPrec
    INLINE_INST_FUN(showbPrec)

instance Show CULLong where
    showb = showbCULLong
    INLINE_INST_FUN(showb)

instance Show CIntPtr where
    showbPrec = showbCIntPtrPrec
    INLINE_INST_FUN(showbPrec)

instance Show CUIntPtr where
    showb = showbCUIntPtr
    INLINE_INST_FUN(showb)

instance Show CIntMax where
    showbPrec = showbCIntMaxPrec
    INLINE_INST_FUN(showbPrec)

instance Show CUIntMax where
    showb = showbCUIntMax
    INLINE_INST_FUN(showb)

instance Show CClock where
    showbPrec = showbCClockPrec
    INLINE_INST_FUN(showbPrec)

instance Show CTime where
    showbPrec = showbCTimePrec
    INLINE_INST_FUN(showbPrec)

# if MIN_VERSION_base(4,4,0)
instance Show CUSeconds where
    showb = showbCUSeconds
    INLINE_INST_FUN(showb)

instance Show CSUSeconds where
    showbPrec = showbCSUSecondsPrec
    INLINE_INST_FUN(showbPrec)
# endif

instance Show CFloat where
    showbPrec = showbCFloatPrec
    INLINE_INST_FUN(showbPrec)

instance Show CDouble where
    showbPrec = showbCDoublePrec
    INLINE_INST_FUN(showbPrec)
#endif
