module Try where

import React
import Unsafe.Coerce
import Prelude

data Platform = CrossPlatform | Android | IOS

newtype RNXClass platform props = RNXClass (ReactClass props)
type RNXElement platform = ReactElement

type RenderType platform dispatch props state children = RNXElement platform

foreign import data Android :: *
foreign import data IOS :: *
foreign import data CrossPlatform :: *

foreign import viewClass :: forall platform props. RNXClass platform props
foreign import datePickerIosClass :: forall props. RNXClass IOS props
foreign import drawerLayoutAndroidClass :: forall props. RNXClass Android props

rnxCreateElement :: forall platform props. RNXClass platform props -> props -> Array (RNXElement platform) -> RNXElement platform
rnxCreateElement = unsafeCoerce <<< createElement

view :: forall platform props. props -> Array (RNXElement platform) -> RNXElement platform
view = rnxCreateElement viewClass

datePickerIos :: forall props. props -> Array (RNXElement IOS) -> RNXElement IOS
datePickerIos = rnxCreateElement datePickerIosClass

main :: forall dispatch props state children. RenderType Android dispatch props state children
main = datePickerIos {} []
