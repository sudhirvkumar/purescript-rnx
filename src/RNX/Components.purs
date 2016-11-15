module RNX.Components where

import Prelude

foreign import data ReactClass :: * -> *
foreign import data Element :: * -> *
foreign import data Prop :: * -> *


foreign import forwardTo    :: forall a b. (a -> b) -> Element a -> Element b
foreign import mapAttribute :: forall a b. (a -> b) -> Prop a -> Prop b


instance functorElement :: Functor Element where
  map = forwardTo

instance functorAttribute :: Functor Prop where
  map = mapAttribute


-- createElement
foreign import createElement         :: forall props action. ReactClass props -> props -> Array (Element action)-> Element action
foreign import createElementOneChild :: forall props action. ReactClass props -> props -> Element action -> Element action
foreign import createElementNoChild :: forall props action. ReactClass props -> props -> Element action

-- classes
foreign import activityIndicatorClass        :: forall props. ReactClass props
foreign import buttonClass                   :: forall props. ReactClass props
foreign import datePickerIOSClass            :: forall props. ReactClass props
foreign import drawerLayoutAndroidClass      :: forall props. ReactClass props
foreign import imageClass                    :: forall props. ReactClass props
foreign import keyboardAvoidingViewClass     :: forall props. ReactClass props
foreign import listViewClass                 :: forall props. ReactClass props
foreign import mapViewClass                  :: forall props. ReactClass props
foreign import modalClass                    :: forall props. ReactClass props
foreign import pickerClass                   :: forall props. ReactClass props
foreign import pickerItemClass               :: forall props. ReactClass props
foreign import progressBarAndroidClass       :: forall props. ReactClass props
foreign import progressViewIOSClass          :: forall props. ReactClass props
foreign import refreshControlClass           :: forall props. ReactClass props
foreign import scrollViewClass               :: forall props. ReactClass props
foreign import segmentedControlIOSClass      :: forall props. ReactClass props
foreign import sliderClass                   :: forall props. ReactClass props
foreign import statusBarClass                :: forall props. ReactClass props
foreign import snapshotViewIOSClass          :: forall props. ReactClass props
foreign import switchClass                   :: forall props. ReactClass props
foreign import tabBarIOSClass                :: forall props. ReactClass props
foreign import tabBarIOSItemClass            :: forall props. ReactClass props
foreign import textClass                     :: forall props. ReactClass props
foreign import textInputClass                :: forall props. ReactClass props
foreign import toolbarAndroidClass           :: forall props. ReactClass props
foreign import touchableHighlightClass       :: forall props. ReactClass props
foreign import touchableNativeFeedbackClass  :: forall props. ReactClass props
foreign import touchableOpacityClass         :: forall props. ReactClass props
foreign import touchableWithoutFeedbackClass :: forall props. ReactClass props
foreign import viewClass                     :: forall props. ReactClass props
foreign import viewPagerAndroidClass         :: forall props. ReactClass props
foreign import webViewClass                  :: forall props. ReactClass props

-- Elements
foreign import textElem :: forall action. String -> Element action


foreign import handler     :: forall event action. String -> (event -> action) -> (Prop action)
foreign import handlerBool :: forall event action. String -> (event -> Boolean) -> (Prop action)
foreign import handlerUnit :: forall event action. String -> (event -> Unit) -> (Prop action)


-- ActivityIndicator doesn't have any children
activityIndicator :: forall action. Array (Prop action) -> Element action
activityIndicator = createElementNoChild activityIndicatorClass

button :: forall action. Array (Prop action) -> Element action
button = createElementNoChild buttonClass

datePickerIOS :: forall action. Array (Prop action) -> Element action
datePickerIOS = createElementNoChild datePickerIOSClass

drawerLayoutAndroid :: forall action. Array (Prop action) -> Array (Element action) -> Element action
drawerLayoutAndroid = createElement drawerLayoutAndroidClass

image :: forall action. Array (Prop action) -> Array (Element action) -> Element action
image = createElement imageClass

keyboardAvoidingView :: forall action. Array (Prop action) -> Array (Element action) -> Element action
keyboardAvoidingView = createElement keyboardAvoidingViewClass

listView :: forall action. Array (Prop action) -> Element action
listView = createElementNoChild listViewClass

mapView :: forall action. Array (Prop action) ->  Element action
mapView = createElementNoChild mapViewClass

modal :: forall action. Array (Prop action) -> Array (Element action) -> Element action
modal = createElement modalClass

picker :: forall action. Array (Prop action) -> Array (Element action) -> Element action
picker = createElement pickerClass

pickerItem :: forall action. Array (Prop action) -> Element action
pickerItem = createElementNoChild pickerItemClass

progressBarAndroid :: forall action. Array (Prop action) -> Element action
progressBarAndroid = createElementNoChild progressBarAndroidClass

progressViewIOS :: forall action. Array (Prop action) -> Element action
progressViewIOS = createElementNoChild progressViewIOSClass

refreshControl' :: forall action. Array (Prop action) -> Element action
refreshControl' = createElementNoChild refreshControlClass

scrollView :: forall action. Array (Prop action) -> Array (Element action) -> Element action
scrollView = createElement scrollViewClass

segmentedControlIOS :: forall action. Array (Prop action) -> Element action
segmentedControlIOS = createElementNoChild segmentedControlIOSClass

slider :: forall action. Array (Prop action) -> Element action
slider = createElementNoChild sliderClass

statusBar :: forall action. Array (Prop action) -> Element action
statusBar = createElementNoChild statusBarClass

snapshotViewIOS :: forall action. Array (Prop action) -> Element action
snapshotViewIOS = createElementNoChild snapshotViewIOSClass

switch :: forall action. Array (Prop action) ->  Element action
switch = createElementNoChild switchClass

tabBarIOS :: forall action. Array (Prop action) -> Array (Element action) -> Element action
tabBarIOS = createElement tabBarIOSClass

tabBarIOSItem :: forall action. Array (Prop action) -> Element action
tabBarIOSItem = createElementNoChild tabBarIOSItemClass

text :: forall action. Array (Prop action) -> Array (Element action) -> Element action
text = createElement textClass

textInput :: forall action. Array (Prop action) -> Element action
textInput = createElementNoChild textInputClass

toolbarAndroid :: forall action. Array (Prop action) -> Array (Element action) -> Element action
toolbarAndroid = createElement toolbarAndroidClass

touchableHighlight :: forall action. Array (Prop action) -> Element action -> Element action
touchableHighlight = createElementOneChild touchableHighlightClass

touchableNativeFeedback :: forall action. Array (Prop action) -> Element action -> Element action
touchableNativeFeedback = createElementOneChild touchableNativeFeedbackClass

touchableOpacity :: forall action. Array (Prop action) -> Element action -> Element action
touchableOpacity = createElementOneChild touchableOpacityClass

touchableWithoutFeedback :: forall action. Array (Prop action) -> Element action -> Element action
touchableWithoutFeedback = createElementOneChild touchableWithoutFeedbackClass

view' :: forall action. Array (Prop action) -> Array (Element action) -> Element action
view' = createElement viewClass

viewPagerAndroid :: forall action. Array (Prop action) -> Array (Element action) -> Element action
viewPagerAndroid = createElement viewPagerAndroidClass

webView :: forall action. Array (Prop action) -> Element action
webView = createElementNoChild webViewClass
