module Main where

import Audio.Core
import Audio.Types
import Prelude

import Control.Monad.Aff (Milliseconds(..), delay, forkAff, launchAff_)
import Control.Monad.Aff.Console (logShow)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Class (liftEff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.Array (cons, range, replicate, (..))
import Data.Maybe (Maybe(..))
import Data.Traversable (for, sequence)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
   launchAff_ $  do
    -- _ <- sequence $ play (createSound [G, F, G, F, G, G, C, G, F, G, F, G, G] [X, P, X, P, X, R] 3.33)
    sequence $ playNotes [G, F, G, F, G, D, G, C, C, B, C, C, D, C, G, F] 0.3
