module RNX.Events where

import Prelude
import RNX.Components (Prop, handler)
import Data.Date (Date)

type LayoutEvent = {nativeEvent :: {layout :: {x :: Int, y :: Int, width :: Int, height :: Int}} }


newtype TouchEvent = TouchEvent {nativeEvent :: {changedTouches :: Array TouchEvent, identifier :: String, locationX :: Int, locationY :: Int, pageX :: Int, pageY :: Int, target :: String, timestamp :: String, touches :: Array TouchEvent} }


type SizeEvent = { nativeEvent :: { contentSize :: { width :: Int, height :: Int } } }


type ProgressEvent = { nativeEvent :: { loaded :: Boolean, total :: Number } }


-- onDrawerStateChanged, onPageScrollStateChanged  [idle, dragging, settling]

-- onError
-- {nativeEvent: {error}}

-- onEndReached
-- scrollEvent

-- onRequestClose
-- Platform.OS === 'android' ? PropTypes.func.isRequired

-- onOrientationChange PropTypes.func #

-- onValueChange
-- itemValue , itemPosition

-- onContentSizeChange
-- (contentWidth, contentHeight)

-- onSnapshotReady
-- function

-- onTintColor
-- color

-- onContentSizeChange
--  { nativeEvent: { contentSize: { width, height } } }.

-- onHideUnderlay, onShowUnderlay
-- function

-- onPageScroll
-- event.nativeEvent

-- onPageSelected
-- event.nativeEvent, position - index of page

-- onNavigationStateChange
-- navState

-- onShouldStartLoadWithRequest
-- Boolean

onPress :: forall action. (Unit -> action) -> Prop action
onPress = handler "onPress"

onChangeText :: forall action. (String -> action) -> Prop action
onChangeText = handler "onChangeText"

onLayout :: forall action. (LayoutEvent -> action) -> Prop action
onLayout  = handler "onLayout"

onMoveShouldSetResponder :: forall event action. (event -> action) -> Prop action
onMoveShouldSetResponder = handler "onMoveShouldSetResponder"

onMoveShouldSetResponderCapture :: forall event action. (event -> action) -> Prop action
onMoveShouldSetResponderCapture = handler "onMoveShouldSetResponderCapture"

onResponderGrant :: forall event action. (event -> action) -> Prop action
onResponderGrant = handler "onResponderGrant"


onResponderMove :: forall event action. (event -> action) -> Prop action
onResponderMove = handler "onResponderMove"


onResponderReject :: forall event action. (event -> action) -> Prop action
onResponderReject = handler "onResponderReject"


onResponderRelease :: forall event action. (event -> action) -> Prop action
onResponderRelease = handler "onResponderRelease"


onResponderTerminate :: forall event action. (event -> action) -> Prop action
onResponderTerminate = handler "onResponderTerminate"


onResponderTerminationRequest :: forall event action. (event -> action) -> Prop action
onResponderTerminationRequest = handler "onResponderTerminationRequest"


onStartShouldSetResponder :: forall event action. (event -> action) -> Prop action
onStartShouldSetResponder = handler "onStartShouldSetResponder"


onStartShouldSetResponderCapture :: forall event action. (event -> action) -> Prop action
onStartShouldSetResponderCapture = handler "onStartShouldSetResponderCapture"


onDateChange :: forall action. (Date -> action) -> Prop action
onDateChange = handler "onDateChange"


onDrawerClose :: forall action. (Unit -> action) -> Prop action
onDrawerClose = handler "onDrawerClose"


onDrawerOpen :: forall action. (Unit -> action) -> Prop action
onDrawerOpen = handler "onDrawerOpen"


onDrawerSlide :: forall action. (Unit -> action) -> Prop action
onDrawerSlide = handler "onDrawerSlide"


onDrawerStateChanged :: forall event action. (event -> action) -> Prop action
onDrawerStateChanged = handler "onDrawerStateChanged"


onLoad :: forall action. (Unit -> action) -> Prop action
onLoad = handler "onLoad"


onLoadEnd :: forall action. (Unit -> action) -> Prop action
onLoadEnd = handler "onLoadEnd"


onLoadStart :: forall action. (Unit -> action) -> Prop action
onLoadStart = handler "onLoadStart"


onError :: forall event action. (event -> action) -> Prop action
onError = handler "onError"


onPartialLoad  :: forall event action. (event -> action) -> Prop action
onPartialLoad = handler "onPartialLoad"


onProgress :: forall action. (ProgressEvent -> action) -> Prop action
onProgress  = handler "onProgress"



onChangeVisibleRows  :: forall event action. (event -> action) -> Prop action
onChangeVisibleRows = handler "onChangeVisibleRows"


onEndReached :: forall event action. (event -> action) -> Prop action
onEndReached = handler "onEndReached"


onRegionChange  :: forall event action. (event -> action) -> Prop action
onRegionChange  = handler "onRegionChange"


onRegionChangeComplete :: forall event action. (event -> action) -> Prop action
onRegionChangeComplete = handler "onRegionChangeComplete"


onRequestClose :: forall action. (Unit -> action) -> Prop action
onRequestClose = handler "onRequestClose"


onShow :: forall action. (Unit -> action) -> Prop action
onShow = handler "onShow"


onValueChange :: forall event action. (event -> action) -> Prop action
onValueChange = handler "onValueChange"


onRefresh :: forall action. (Unit -> action) -> Prop action
onRefresh = handler "onRefresh"


onContentSizeChange :: forall action. (SizeEvent -> action) -> Prop action
onContentSizeChange = handler "onContentSizeChange"


onScroll :: forall action. (Unit -> action) -> Prop action
onScroll = handler "onScroll"


onChange :: forall event action. (event -> action) -> Prop action
onChange = handler "onChange"


onSlidingComplete :: forall action. (Unit -> action) -> Prop action
onSlidingComplete = handler "onSlidingComplete"


onSnapshotReady :: forall event action. (event -> action) -> Prop action
onSnapshotReady = handler "onSnapshotReady"


onLongPress :: forall action. (Unit -> action) -> Prop action
onLongPress = handler "onLongPress"

onScrollAnimationEnd :: forall action. (Unit -> action) -> Prop action
onScrollAnimationEnd = handler "onScrollAnimationEnd"


--onPress :: forall event action. (event -> action) -> Prop action
--onPress = handler "onPress"


onBlur :: forall action. (Unit -> action) -> Prop action
onBlur = handler "onBlur"


--onChangeText :: forall event action. (event -> action) -> Prop action
--onChangeText = handler "onChangeText"


--onContentSizeChange :: forall event action. (event -> action) -> Prop action
--onContentSizeChange = handler "onContentSizeChange"


onEndEditing :: forall action. (Unit -> action) -> Prop action
onEndEditing = handler "onEndEditing"


onFocus :: forall action. (Unit -> action) -> Prop action
onFocus = handler "onFocus"


type SelectionEvent = {nativeEvent::{selection::{start::Int, end:: Int}}}

-- TODO: handle selectionevent
onSelectionChange :: forall action. (SelectionEvent -> action) -> Prop action
onSelectionChange = handler "onSelectionChange"


onSubmitEditing :: forall action. (Unit -> action) -> Prop action
onSubmitEditing = handler "onSubmitEditing"


onKeyPress :: forall event action. (event -> action) -> Prop action
onKeyPress = handler "onKeyPress"


onActionSelected :: forall action. (Int -> action) -> Prop action
onActionSelected = handler "onActionSelected"


onIconClicked :: forall event action. (event -> action) -> Prop action
onIconClicked = handler "onIconClicked"


onHideUnderlay :: forall event action. (event -> action) -> Prop action
onHideUnderlay = handler "onHideUnderlay"


onShowUnderlay :: forall event action. (event -> action) -> Prop action
onShowUnderlay = handler "onShowUnderlay"


onPressIn :: forall event action. (event -> action) -> Prop action
onPressIn = handler "onPressIn"


onPressOut :: forall event action. (event -> action) -> Prop action
onPressOut = handler "onPressOut"


onPageScroll :: forall event action. (event -> action) -> Prop action
onPageScroll = handler "onPageScroll"


onPageScrollStateChanged :: forall event action. (event -> action) -> Prop action
onPageScrollStateChanged = handler "onPageScrollStateChanged"


onPageSelected :: forall event action. (event -> action) -> Prop action
onPageSelected = handler "onPageSelected"


onNavigationStateChange :: forall event action. (event -> action) -> Prop action
onNavigationStateChange = handler "onNavigationStateChange"


onShouldStartLoadWithRequest :: forall event action. (event -> action) -> Prop action
onShouldStartLoadWithRequest = handler "onShouldStartLoadWithRequest"
