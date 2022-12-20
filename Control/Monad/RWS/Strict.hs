-----------------------------------------------------------------------------
-- |
-- Module      :  Control.Monad.RWS.Strict
-- Copyright   :  (c) Andy Gill 2001,
--                (c) Oregon Graduate Institute of Science and Technology, 2001
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  ross@soi.city.ac.uk
-- Stability   :  experimental
-- Portability :  non-portable (type families)
--
-- Strict RWS monad.
--
--      Inspired by the paper
--      /Functional Programming with Overloading and
--          Higher-Order Polymorphism/,
--        Mark P Jones (<http://web.cecs.pdx.edu/~mpj/>)
--          Advanced School of Functional Programming, 1995.
-----------------------------------------------------------------------------

module Control.Monad.RWS.Strict (
    -- * The RWS monad
    RWS,
    runRWS,
    evalRWS,
    execRWS,
    mapRWS,
    withRWS,
    -- * The RWST monad transformer
    RWST(..),
    evalRWST,
    execRWST,
    mapRWST,
    withRWST,
    -- * Strict Reader-writer-state monads
    module Control.Monad.RWS.Class,
    module Control.Monad,
    module Control.Monad.Fix,
    module Control.Monad.Trans,
    module Data.Monoid,
  ) where

import Control.Monad.RWS.Class

import Control.Monad.Trans
import Control.Monad.Trans.RWS.Strict (
    RWS, runRWS, evalRWS, execRWS, mapRWS, withRWS,
    RWST(..), evalRWST, execRWST, mapRWST, withRWST)

import Control.Monad
import Control.Monad.Fix
import Data.Monoid
