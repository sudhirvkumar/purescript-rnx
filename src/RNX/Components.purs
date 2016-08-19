module RNX.Components where

import Prelude
import React (ReactClass(), ReactElement())
import React.DOM.Props (Props())

foreign import data ListViewDataSource :: *

foreign import createElement :: forall props. ReactClass props -> props -> Array ReactElement -> ReactElement
foreign import createElementOneChild :: forall props. ReactClass props -> props -> ReactElement -> ReactElement

-- Components

foreign import textElem :: String -> ReactElement
foreign import listViewDataSource :: forall a. (Eq a) => Array a -> ListViewDataSource
foreign import cloneWithRows :: forall a. ListViewDataSource -> Array a -> ListViewDataSource

foreign import activityIndicatorClass :: forall props. ReactClass props
-- foreign import activityIndicatorIOSClass :: forall props. ReactClass props
-- foreign import artClass :: forall props. ReactClass props
foreign import datePickerIOSClass :: forall props. ReactClass props
foreign import drawerLayoutAndroidClass :: forall props. ReactClass props
foreign import imageClass :: forall props. ReactClass props
-- foreign import imageEditorClass :: forall props. ReactClass props
-- foreign import imageStoreClass :: forall props. ReactClass props
-- foreign import keyboardAvoidingViewClass :: forall props. ReactClass props
foreign import listViewClass :: forall props. ReactClass props
foreign import mapViewClass :: forall props. ReactClass props
foreign import modalClass :: forall props. ReactClass props
foreign import navigatorClass :: forall props. ReactClass props
foreign import navigatorIOSClass :: forall props. ReactClass props
foreign import pickerClass :: forall props. ReactClass props
foreign import pickerIOSClass :: forall props. ReactClass props
foreign import progressBarAndroidClass :: forall props. ReactClass props
foreign import progressViewIOSClass :: forall props. ReactClass props
foreign import scrollViewClass :: forall props. ReactClass props
foreign import segmentedControlIOSClass :: forall props. ReactClass props
foreign import sliderClass :: forall props. ReactClass props
foreign import sliderIOSClass :: forall props. ReactClass props
foreign import snapshotViewIOSClass :: forall props. ReactClass props
foreign import switchClass :: forall props. ReactClass props
-- foreign import recyclerViewBackedScrollViewClass :: forall props. ReactClass props
foreign import refreshControlClass :: forall props. ReactClass props
foreign import statusBarClass :: forall props. ReactClass props
-- foreign import swipeableListViewClass :: forall props. ReactClass props
-- foreign import switchAndroidClass :: forall props. ReactClass props
-- foreign import switchIOSClass :: forall props. ReactClass props
foreign import tabBarIOSClass :: forall props. ReactClass props
foreign import tabBarIOSItemClass :: forall props. ReactClass props
foreign import textClass :: forall props. ReactClass props
foreign import textInputClass :: forall props. ReactClass props
-- foreign import toastAndroidClass :: forall props. ReactClass props
foreign import toolbarAndroidClass :: forall props. ReactClass props
-- foreign import touchableClass :: forall props. ReactClass props
foreign import touchableHighlightClass :: forall props. ReactClass props
foreign import touchableNativeFeedbackClass :: forall props. ReactClass props
foreign import touchableOpacityClass :: forall props. ReactClass props
foreign import touchableWithoutFeedbackClass :: forall props. ReactClass props
foreign import viewClass :: forall props. ReactClass props
foreign import viewPagerAndroidClass :: forall props. ReactClass props
foreign import webViewClass :: forall props. ReactClass props

activityIndicator :: Array Props -> Array ReactElement -> ReactElement
activityIndicator = createElement activityIndicatorClass

-- activityIndicatorIOS :: Array Props -> Array ReactElement -> ReactElement
-- activityIndicatorIOS = createElement activityIndicatorIOSClass

datePickerIOS :: Array Props -> Array ReactElement -> ReactElement
datePickerIOS = createElement datePickerIOSClass

drawerLayoutAndroid :: Array Props -> Array ReactElement -> ReactElement
drawerLayoutAndroid = createElement drawerLayoutAndroidClass

image :: Array Props -> Array ReactElement -> ReactElement
image = createElement imageClass

view :: Array Props -> Array ReactElement -> ReactElement
view = createElement viewClass

text :: Array Props -> String -> ReactElement
text props str = createElement textClass props [textElem str]

textView :: Array Props -> Array ReactElement -> ReactElement
textView = createElement textClass

listView :: Array Props -> ReactElement
listView props = createElement listViewClass props []

mapView :: Array Props -> Array ReactElement -> ReactElement
mapView = createElement mapViewClass

modal :: Array Props -> Array ReactElement -> ReactElement
modal = createElement modalClass

navigator :: Array Props -> Array ReactElement -> ReactElement
navigator = createElement navigatorClass

navigatorIOS :: Array Props -> Array ReactElement -> ReactElement
navigatorIOS = createElement navigatorIOSClass

picker :: Array Props -> Array ReactElement -> ReactElement
picker = createElement pickerClass

pickerIOS :: Array Props -> Array ReactElement -> ReactElement
pickerIOS = createElement pickerIOSClass

progressBarAndroid :: Array Props -> Array ReactElement -> ReactElement
progressBarAndroid = createElement progressBarAndroidClass

progressViewIOS :: Array Props -> Array ReactElement -> ReactElement
progressViewIOS = createElement progressViewIOSClass

refreshControl :: Array Props -> Array ReactElement -> ReactElement
refreshControl = createElement refreshControlClass

scrollView :: Array Props -> Array ReactElement -> ReactElement
scrollView = createElement scrollViewClass

segmentedControlIOS :: Array Props -> Array ReactElement -> ReactElement
segmentedControlIOS = createElement segmentedControlIOSClass

slider :: Array Props -> Array ReactElement -> ReactElement
slider = createElement sliderClass

sliderIOS :: Array Props -> Array ReactElement -> ReactElement
sliderIOS = createElement sliderIOSClass

statusBar :: Array Props -> Array ReactElement -> ReactElement
statusBar = createElement statusBarClass

snapshotViewIOS :: Array Props -> Array ReactElement -> ReactElement
snapshotViewIOS = createElement snapshotViewIOSClass

switch :: Array Props -> Array ReactElement -> ReactElement
switch = createElement switchClass

-- switchAndroid :: Array Props -> Array ReactElement -> ReactElement
-- switchAndroid = createElement switchAndroidClass

-- switchIOS :: Array Props -> Array ReactElement -> ReactElement
-- switchIOS = createElement switchIOSClass

tabBarIOS :: Array Props -> Array ReactElement -> ReactElement
tabBarIOS = createElement tabBarIOSClass

tabBarIOSItem :: Array Props -> Array ReactElement -> ReactElement
tabBarIOSItem = createElement tabBarIOSItemClass

touchableHighlight :: Array Props -> ReactElement -> ReactElement
touchableHighlight = createElementOneChild touchableHighlightClass

touchableNativeFeedback :: Array Props -> ReactElement -> ReactElement
touchableNativeFeedback = createElementOneChild touchableNativeFeedbackClass

textInput :: Array Props -> ReactElement
textInput props = createElement textInputClass props []

toolbarAndroid :: Array Props -> Array ReactElement -> ReactElement
toolbarAndroid = createElement toolbarAndroidClass

touchableOpacity :: Array Props -> Array ReactElement -> ReactElement
touchableOpacity = createElement touchableOpacityClass

touchableWithoutFeedback :: Array Props -> Array ReactElement -> ReactElement
touchableWithoutFeedback = createElement touchableWithoutFeedbackClass

viewPagerAndroid :: Array Props -> Array ReactElement -> ReactElement
viewPagerAndroid = createElement viewPagerAndroidClass

webView :: Array Props -> Array ReactElement -> ReactElement
webView = createElement webViewClass
