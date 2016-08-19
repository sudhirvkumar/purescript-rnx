module RNX where

import Prelude
import Control.Monad.Eff (Eff())
import React (ReactClass())

type AppKey = String

foreign import registerComponent :: forall e props. AppKey -> ReactClass props -> Eff e Unit


-- TODO: Need to check the types of the fields
type NativeEvent =
  { changedTouches   :: Array String --TouchEvent
  , identifier  :: String -- ID
  , locationX :: Int
  , locationY      :: Int
  , pageX  :: Int
  , pageY   :: Int
  , target :: String -- Node ID
  , timestamp  :: String
  , touches   :: Array String --TouchEvent
  }
