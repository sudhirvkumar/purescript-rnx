module RNX.Props where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Function.Uncurried (mkFn3, mkFn4)
import RNX.Components (ListViewDataSource)
import React (ReactElement, Event, EventHandlerContext, handle)
import React.DOM.Props (Props, unsafeMkProps)
import Data.Maybe (Maybe(..))

type ViewProps = {
  accessibilityLabel :: String,
  accessible :: Boolean,
  hitSlop :: {top :: Int, left :: Int, bottom :: Int, right :: Int},
  onAccessibilityTap :: Maybe (Unit -> Unit), -- TODO: Check the function
  onLayout :: Maybe (Unit-> Unit),
  onMagicTap :: Maybe (Unit -> Unit),
  onMoveShouldSetResponder :: Maybe (Unit -> Unit),
  onMoveShouldSetResponderCapture :: Maybe (Unit -> Unit),
  onResponderGrant :: Maybe (Unit -> Unit),
  onResponderMove :: Maybe (Unit -> Unit),
  onResponderReject :: Maybe (Unit -> Unit),
  onResponderRelease :: Maybe (Unit -> Unit),
  onResponderTerminate :: Maybe (Unit -> Unit),
  onResponderTerminationRequest :: Maybe (Unit -> Unit),
  onStartShouldSetResponder :: Maybe (Unit -> Unit),
  onStartShouldSetResponderCapture :: Maybe (Unit -> Unit),
  pointerEvents :: String,
  removeClippedSubviews :: Boolean,
  style :: String,  -- STYLE
  testID :: String,
  accessibilityComponentType :: String,
  accessibilityLiveRegion :: String,
  collapsable :: Boolean,
  importantForAccisibility :: String,
  needsOffscreenAlphaComposition :: Boolean,
  renderToHardwareTextureAndroid :: Boolean,
  accessibilityTraits :: String,
  shouldRasterizeIOS :: Boolean
}


type ActivityIndicatorProps = {
  -- Begin ViewProps
  accessibilityLabel :: String,
  accessible :: Boolean,
  hitSlop :: {top :: Int, left :: Int, bottom :: Int, right :: Int},
  onAccessibilityTap :: Maybe (Unit -> Unit), -- TODO: Check the function
  onLayout :: Maybe (Unit-> Unit),
  onMagicTap :: Maybe (Unit -> Unit),
  onMoveShouldSetResponder :: Maybe (Unit -> Unit),
  onMoveShouldSetResponderCapture :: Maybe (Unit -> Unit),
  onResponderGrant :: Maybe (Unit -> Unit),
  onResponderMove :: Maybe (Unit -> Unit),
  onResponderReject :: Maybe (Unit -> Unit),
  onResponderRelease :: Maybe (Unit -> Unit),
  onResponderTerminate :: Maybe (Unit -> Unit),
  onResponderTerminationRequest :: Maybe (Unit -> Unit),
  onStartShouldSetResponder :: Maybe (Unit -> Unit),
  onStartShouldSetResponderCapture :: Maybe (Unit -> Unit),
  pointerEvents :: String,
  removeClippedSubviews :: Boolean,
  style :: String,  -- STYLE
  testID :: String,
  accessibilityComponentType :: String,
  accessibilityLiveRegion :: String,
  collapsable :: Boolean,
  importantForAccisibility :: String,
  needsOffscreenAlphaComposition :: Boolean,
  renderToHardwareTextureAndroid :: Boolean,
  accessibilityTraits :: String,
  shouldRasterizeIOS :: Boolean,
  -- End ViewProps

  animating :: Boolean,
  color :: String, -- COLOR
  size :: String, -- SIZE enum
  hidesWhenStopped :: Boolean
}


viewProps :: ViewProps
viewProps = {
  accessibilityLabel : "",
  accessible : true,
  hitSlop : {top : 1, left : 1, bottom : 1, right : 1},
  onAccessibilityTap : Nothing,
  onLayout : Nothing,
  onMagicTap : Nothing,
  onMoveShouldSetResponder : Nothing,
  onMoveShouldSetResponderCapture : Nothing,
  onResponderGrant : Nothing,
  onResponderMove : Nothing,
  onResponderReject : Nothing,
  onResponderRelease : Nothing,
  onResponderTerminate : Nothing,
  onResponderTerminationRequest : Nothing,
  onStartShouldSetResponder : Nothing,
  onStartShouldSetResponderCapture : Nothing,
  pointerEvents : "",
  removeClippedSubviews : true,
  style : "",  -- STYLE
  testID : "",
  accessibilityComponentType : "",
  accessibilityLiveRegion : "",
  collapsable : true,
  importantForAccisibility : "",
  needsOffscreenAlphaComposition : true,
  renderToHardwareTextureAndroid : true,
  accessibilityTraits : "",
  shouldRasterizeIOS : false
}


activityIndicatorProps :: ActivityIndicatorProps
activityIndicatorProps = {
  -- Begin ViewProps
  accessibilityLabel : "",
  accessible : true,
  hitSlop : {top : 1, left : 1, bottom : 1, right : 1},
  onAccessibilityTap : Nothing,
  onLayout : Nothing,
  onMagicTap : Nothing,
  onMoveShouldSetResponder : Nothing,
  onMoveShouldSetResponderCapture : Nothing,
  onResponderGrant : Nothing,
  onResponderMove : Nothing,
  onResponderReject : Nothing,
  onResponderRelease : Nothing,
  onResponderTerminate : Nothing,
  onResponderTerminationRequest : Nothing,
  onStartShouldSetResponder : Nothing,
  onStartShouldSetResponderCapture : Nothing,
  pointerEvents : "",
  removeClippedSubviews : true,
  style : "",  -- STYLE
  testID : "",
  accessibilityComponentType : "",
  accessibilityLiveRegion : "",
  collapsable : true,
  importantForAccisibility : "",
  needsOffscreenAlphaComposition : true,
  renderToHardwareTextureAndroid : true,
  accessibilityTraits : "",
  shouldRasterizeIOS : true,
  -- End ViewProps

  animating : true,
  color : "gray",
  size : "small",
  hidesWhenStopped : true
}

-- props :: ActivityIndicatorProps
-- props = activityIndicatorProps {animating = false, color = "white", hidesWhenStopped = false}


type RenderRowFn = forall rowData highlightFn. rowData -> String -> String -> highlightFn -> ReactElement
type RenderSeparatorFn = String -> String -> Boolean -> ReactElement
type RenderHeaderFn = forall eff. Eff eff ReactElement
type OnPressFn = forall eff. Eff eff Unit

foreign import unitFn :: forall a. a -> (Unit -> a)

renderRow :: forall rowData highlightFn. (rowData -> String -> String -> highlightFn -> ReactElement) -> Props
renderRow = unsafeMkProps "renderRow" <<< mkFn4

renderSeparator :: RenderSeparatorFn -> Props
renderSeparator fun = unsafeMkProps "renderSeparator" (mkFn3 fun)

renderHeader :: ReactElement -> Props
renderHeader elem = unsafeMkProps "renderHeader" (unitFn elem)

renderFooter :: ReactElement -> Props
renderFooter elem = unsafeMkProps "renderFooter" (unitFn elem)

dataSource :: ListViewDataSource -> Props
dataSource = unsafeMkProps "dataSource"

onPress :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onPress f = unsafeMkProps "onPress" (handle f)

onPressIn :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onPressIn f = unsafeMkProps "onPressIn" (handle f)

onPressOut :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onPressOut f = unsafeMkProps "onPressOut" (handle f)

onSubmitEditing :: forall eff props state result. (Event -> EventHandlerContext eff props state result) -> Props
onSubmitEditing f = unsafeMkProps "onSubmitEditing" (handle f)

onChangeText :: forall eff props state result. (String -> EventHandlerContext eff props state result) -> Props
onChangeText f = unsafeMkProps "onChangeText" (handle f)

foreign import data NativeFeedbackBackground :: *
foreign import selectableBackground :: NativeFeedbackBackground
foreign import selectableBackgroundBorderless :: NativeFeedbackBackground

background :: NativeFeedbackBackground -> Props
background = unsafeMkProps "background"
