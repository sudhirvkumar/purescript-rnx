module RNX.Props where

import Prelude
import Control.Monad.Eff (Eff)
import Data.Function.Uncurried (mkFn3, mkFn4)
import RNX.Components (ListViewDataSource)
import React (ReactElement, Event, EventHandlerContext, handle)
import React.DOM.Props (Props, unsafeMkProps)
import RNX.PropsTypes

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

-- background :: NativeFeedbackBackground -> Props
-- background = unsafeMkProps "background"

-- SUDHIR's code starts here

type Box =
    { top    :: Int
    , bottom :: Int
    , left   :: Int
    , right  :: Int
    }


-- View Props


-- onAccessibilityTap :: Maybe (Unit -> Unit) -- TODO: Check the function
onAccessibilityTap :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onAccessibilityTap f = unsafeMkProps "onAccessibilityTap" (handle f)


-- onLayout :: Maybe (Unit-> Unit)
onLayout :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onLayout f = unsafeMkProps "onLayout" (handle f)

-- onMagicTap :: Maybe (Unit -> Unit)
onMagicTap :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onMagicTap f = unsafeMkProps "onMagicTap" (handle f)


-- onMoveShouldSetResponder :: Maybe (Unit -> Unit)
onMoveShouldSetResponder :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onMoveShouldSetResponder f = unsafeMkProps "onMoveShouldSetResponder" (handle f)


-- onMoveShouldSetResponderCapture :: Maybe (Unit -> Unit)
onMoveShouldSetResponderCapture :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onMoveShouldSetResponderCapture f = unsafeMkProps "onMoveShouldSetResponderCapture" (handle f)


-- onResponderGrant :: Maybe (Unit -> Unit)
onResponderGrant :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onResponderGrant f = unsafeMkProps "onResponderGrant" (handle f)


-- onResponderMove :: Maybe (Unit -> Unit)
onResponderMove :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onResponderMove f = unsafeMkProps "onResponderMove" (handle f)


-- onResponderReject :: Maybe (Unit -> Unit)
onResponderReject :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onResponderReject f = unsafeMkProps "onResponderReject" (handle f)


-- onResponderRelease :: Maybe (Unit -> Unit)
onResponderRelease :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onResponderRelease f = unsafeMkProps "onResponderRelease" (handle f)


-- onResponderTerminate :: Maybe (Unit -> Unit)
onResponderTerminate :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onResponderTerminate f = unsafeMkProps "onResponderTerminate" (handle f)


-- onResponderTerminationRequest :: Maybe (Unit -> Unit)
onResponderTerminationRequest :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onResponderTerminationRequest f = unsafeMkProps "onResponderTerminationRequest" (handle f)


-- onStartShouldSetResponder :: Maybe (Unit -> Unit)
onStartShouldSetResponder :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onStartShouldSetResponder f = unsafeMkProps "onStartShouldSetResponder" (handle f)


-- onStartShouldSetResponderCapture :: Maybe (Unit -> Unit)
onStartShouldSetResponderCapture :: forall eff props state result.
  (Event -> EventHandlerContext eff props state result) -> Props
onStartShouldSetResponderCapture f = unsafeMkProps "onStartShouldSetResponderCapture" (handle f)


-- pointerEvents :: String
pointerEvents :: PointerEventsProp -> Props
pointerEvents = unsafeMkProps "pointerEvents"


-- style :: String  -- STYLE
-- testID :: String
testID :: String -> Props
testID = unsafeMkProps "testID"


-- accessibilityComponentType :: String
-- accessibilityComponentType :: String -> Props
-- accessibilityComponentType = unsafeMkProps "accessibilityComponentType"

-- accessibilityLiveRegion :: String
accessibilityLiveRegion :: AccessibilityLiveRegionProp -> Props
accessibilityLiveRegion = unsafeMkProps "accessibilityLiveRegion"


-- collapsable :: Boolean
collapsable :: Boolean -> Props
collapsable = unsafeMkProps "collapsable"

-- importantForAccessibility :: String
importantForAccessibility :: ImportantForAccessibilityProp -> Props
importantForAccessibility = unsafeMkProps "importantForAccessibility"


-- needsOffscreenAlphaCompositing :: Boolean
needsOffscreenAlphaCompositing :: Boolean -> Props
needsOffscreenAlphaCompositing = unsafeMkProps "needsOffscreenAlphaCompositing"


-- renderToHardwareTextureAndroid :: Boolean
renderToHardwareTextureAndroid :: Boolean -> Props
renderToHardwareTextureAndroid = unsafeMkProps "renderToHardwareTextureAndroid"


-- accessibilityTraits :: String
-- accessibilityTraits :: String -> Props
-- accessibilityTraits = unsafeMkProps "accessibilityTraits"


-- shouldRasterizeIOS :: Boolean
shouldRasterizeIOS :: Boolean -> Props
shouldRasterizeIOS = unsafeMkProps "shouldRasterizeIOS"

-- ActivityIndicatorProps

  -- animating :: Boolean,
animating :: Boolean -> Props
animating = unsafeMkProps "animating"

  -- color :: String, -- COLOR
-- color :: String -> Props
-- color = unsafeMkProps "color"

  -- size :: String, -- SIZE enum
-- size :: String -> Props
-- size = unsafeMkProps "size"

  -- hidesWhenStopped :: Boolean
hidesWhenStopped :: Boolean -> Props
hidesWhenStopped = unsafeMkProps "hidesWhenStopped"

-- DatePickerIOS Props

-- date PropTypes.instanceOf(Date).isRequired
date :: Boolean -> Props
date = unsafeMkProps "date"

-- maximumDate PropTypes.instanceOf(Date)
maximumDate :: Boolean -> Props
maximumDate = unsafeMkProps "maximumDate"


-- minimumDate PropTypes.instanceOf(Date)
minimumDate :: Boolean -> Props
minimumDate = unsafeMkProps "minimumDate"


-- minuteInterval PropTypes.oneOf([1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30])
minuteInterval :: Boolean -> Props
minuteInterval = unsafeMkProps "minuteInterval"


-- mode PropTypes.oneOf(['date', 'time', 'datetime'])
-- mode :: Boolean -> Props
-- mode = unsafeMkProps "mode"


-- onDateChange PropTypes.func.isRequired

-- timeZoneOffsetInMinutes PropTypes.number
timeZoneOffsetInMinutes :: Int -> Props
timeZoneOffsetInMinutes = unsafeMkProps "timeZoneOffsetInMinutes"

-- DrawerLayoutAndroid Props

-- drawerBackgroundColor color
drawerBackgroundColor :: Boolean -> Props
drawerBackgroundColor = unsafeMkProps "drawerBackgroundColor"


-- drawerLockMode ReactPropTypes.oneOf([ 'unlocked', 'locked-closed', 'locked-open' ])
drawerLockMode :: Boolean -> Props
drawerLockMode = unsafeMkProps "drawerLockMode"


-- drawerPosition ReactPropTypes.oneOf([ DrawerConsts.DrawerPosition.Left, DrawerConsts.DrawerPosition.Right ])
drawerPosition :: Boolean -> Props
drawerPosition = unsafeMkProps "drawerPosition"


-- drawerWidth ReactPropTypes.number
drawerWidth :: Boolean -> Props
drawerWidth = unsafeMkProps "drawerWidth"


-- keyboardDismissMode ReactPropTypes.oneOf([ 'none', // default 'on-drag', ])
-- keyboardDismissMode :: Boolean -> Props
-- keyboardDismissMode = unsafeMkProps "keyboardDismissMode"


-- onDrawerClose ReactPropTypes.func #

-- onDrawerOpen ReactPropTypes.func #

-- onDrawerSlide ReactPropTypes.func #

-- onDrawerStateChanged ReactPropTypes.func #

-- renderNavigationView ReactPropTypes.func.isRequired #

-- statusBarBackgroundColor color #
statusBarBackgroundColor :: Boolean -> Props
statusBarBackgroundColor = unsafeMkProps "statusBarBackgroundColor"

-- Methods

-- openDrawer(0) #
-- closeDrawer(0) #



-- Image Props

-- onLayout PropTypes.func #
-- Invoked on mount and layout changes with {nativeEvent: {layout: {x, y, width, height}}}.

-- onLoad PropTypes.func #

-- onLoadEnd PropTypes.func #

-- onLoadStart PropTypes.func #

-- resizeMode PropTypes.oneOf(['cover', 'contain', 'stretch', 'repeat', 'center']) #
resizeMode :: Boolean -> Props
resizeMode = unsafeMkProps "resizeMode"

-- source ImageSourcePropType #
source :: Boolean -> Props
source = unsafeMkProps "source"

-- testID PropTypes.string #

-- accessibilityLabel PropTypes.string
accessibilityLabel :: Boolean -> Props
accessibilityLabel = unsafeMkProps "accessibilityLabel"

-- blurRadius PropTypes.number #
blurRadius :: Boolean -> Props
blurRadius = unsafeMkProps "blurRadius"

-- capInsets {top: number, left: number, bottom: number, right: number} #
capInsets :: Box -> Props
capInsets = unsafeMkProps "capInsets"

-- defaultSource PropTypes.oneOfType([ // TODO: Tooling to support documenting these directly and having them display in the docs. PropTypes.shape({ uri: PropTypes.string, width: PropTypes.number, height: PropTypes.number, scale: PropTypes.number, }), PropTypes.number, ]) #
defaultSource :: Boolean -> Props
defaultSource = unsafeMkProps "defaultSource"

-- onError PropTypes.func #

-- onProgress PropTypes.func #

-- Methods

-- static getSize(uri, success, failure): #
-- static prefetch(url): #


-- ListView Props

-- dataSource ListViewDataSource #
-- dataSource :: Boolean -> Props
-- dataSource = unsafeMkProps "dataSource"

-- enableEmptySections bool #
enableEmptySections :: Boolean -> Props
enableEmptySections = unsafeMkProps "enableEmptySections"

-- initialListSize number #
initialListSize :: Int -> Props
initialListSize = unsafeMkProps "initialListSize"

-- onChangeVisibleRows function #

-- onEndReached function #

-- onEndReachedThreshold number #

-- pageSize number #
pageSize :: Int -> Props
pageSize = unsafeMkProps "pageSize"

-- removeClippedSubviews bool #
-- removeClippedSubviews :: Boolean -> Props
-- removeClippedSubviews = unsafeMkProps "removeClippedSubviews"

-- renderFooter function #

-- renderHeader function #

-- renderRow function #

-- renderScrollComponent function #

-- renderSectionHeader function #

-- renderSeparator function #

-- scrollRenderAheadDistance number #
scrollRenderAheadDistance :: Int -> Props
scrollRenderAheadDistance = unsafeMkProps "scrollRenderAheadDistance"

-- stickyHeaderIndices [number] #
-- stickyHeaderIndices :: Boolean -> Props
-- stickyHeaderIndices = unsafeMkProps "stickyHeaderIndices"

-- Methods

-- getMetrics(0) #

-- scrollTo(...args) #


-- MapView Props

-- annotations [{latitude: number, longitude: number, animateDrop: bool, draggable: bool, onDragStateChange: function, onFocus: function, onBlur: function, title: string, subtitle: string, leftCalloutView: element, rightCalloutView: element, detailCalloutView: element, tintColor: [object Object], image: Image.propTypes.source, view: element, id: string, hasLeftCallout: deprecatedPropType( React.PropTypes.bool, 'Use `leftCalloutView` instead.' ), hasRightCallout: deprecatedPropType( React.PropTypes.bool, 'Use `rightCalloutView` instead.' ), onLeftCalloutPress: deprecatedPropType( React.PropTypes.func, 'Use `leftCalloutView` instead.' ), onRightCalloutPress: deprecatedPropType( React.PropTypes.func, 'Use `rightCalloutView` instead.' )}] #
annotations :: Boolean -> Props
annotations = unsafeMkProps "annotations"


-- followUserLocation bool #
followUserLocation :: Boolean -> Props
followUserLocation = unsafeMkProps "followUserLocation"

-- legalLabelInsets {top: number, left: number, bottom: number, right: number} #
legalLabelInsets :: Box -> Props
legalLabelInsets = unsafeMkProps "legalLabelInsets"

-- mapType enum('standard', 'satellite', 'hybrid') #
mapType :: Boolean -> Props
mapType = unsafeMkProps "mapType"

-- maxDelta number #
maxDelta :: Int -> Props
maxDelta = unsafeMkProps "maxDelta"

-- minDelta number #
minDelta :: Int -> Props
minDelta = unsafeMkProps "minDelta"

-- onAnnotationPress function #

-- onRegionChange function #

-- onRegionChangeComplete function #

-- overlays [{coordinates: [object Object], lineWidth: number, strokeColor: [object Object], fillColor: [object Object], id: string}] #
overlays :: Boolean -> Props
overlays = unsafeMkProps "overlays"

-- pitchEnabled bool #
pitchEnabled :: Boolean -> Props
pitchEnabled = unsafeMkProps "pitchEnabled"

-- region {latitude: number, longitude: number, latitudeDelta: number, longitudeDelta: number} #
region :: Boolean -> Props
region = unsafeMkProps "region"

-- rotateEnabled bool #
rotateEnabled :: Boolean -> Props
rotateEnabled = unsafeMkProps "rotateEnabled"

-- scrollEnabled bool #
-- scrollEnabled :: Boolean -> Props
-- scrollEnabled = unsafeMkProps "scrollEnabled"

-- showsCompass bool #
showsCompass :: Boolean -> Props
showsCompass = unsafeMkProps "showsCompass"

-- showsPointsOfInterest bool #
showsPointsOfInterest :: Boolean -> Props
showsPointsOfInterest = unsafeMkProps "showsPointsOfInterest"

-- showsUserLocation bool #
showsUserLocation :: Boolean -> Props
showsUserLocation = unsafeMkProps "showsUserLocation"

-- style View#style #

-- zoomEnabled bool #
zoomEnabled :: Boolean -> Props
zoomEnabled = unsafeMkProps "zoomEnabled"

-- active bool #
active :: Boolean -> Props
active = unsafeMkProps "active"


-- Modal Props

-- animationType PropTypes.oneOf(['none', 'slide', 'fade']) #
animationType :: Boolean -> Props
animationType = unsafeMkProps "animationType"

-- onRequestClose Platform.OS === 'android' ? PropTypes.func.isRequired : PropTypes.func #
onRequestClose :: Boolean -> Props
onRequestClose = unsafeMkProps "onRequestClose"

-- onShow PropTypes.func #

-- transparent PropTypes.bool #
transparent :: Boolean -> Props
transparent = unsafeMkProps "transparent"

-- visible PropTypes.bool #
visible :: Boolean -> Props
visible = unsafeMkProps "visible"

-- Navigator Props

-- configureScene function #

-- initialRoute object #
-- initialRoute :: Boolean -> Props
-- initialRoute = unsafeMkProps "initialRoute"

-- initialRouteStack [object] #
initialRouteStack :: Boolean -> Props
initialRouteStack = unsafeMkProps "initialRouteStack"

-- navigationBar node #
navigationBar :: Boolean -> Props
navigationBar = unsafeMkProps "navigationBar"

-- navigator object #
navigator :: Boolean -> Props
navigator = unsafeMkProps "navigator"

-- onDidFocus function #

-- onWillFocus function #

-- renderScene function #

-- Methods

-- immediatelyResetRouteStack(nextRouteStack) #

-- jumpTo(route) #
-- jumpForward(0) #
-- jumpBack(0) #
-- push(route) #
-- pop(0) #
-- replaceAtIndex(route, index, cb) #
-- replace(route) #
-- replacePrevious(route) #
-- popToTop(0) #
-- popToRoute(route) #
-- replacePreviousAndPop(route) #
-- resetTo(route) #
-- getCurrentRoutes(0) #


-- NavigatorIOS Props

-- barTintColor string #
-- barTintColor :: Boolean -> Props
-- barTintColor = unsafeMkProps "barTintColor"

-- initialRoute {component: function, title: string, titleImage: Image.propTypes.source, passProps: object, backButtonIcon: Image.propTypes.source, backButtonTitle: string, leftButtonIcon: Image.propTypes.source, leftButtonTitle: string, onLeftButtonPress: function, rightButtonIcon: Image.propTypes.source, rightButtonTitle: string, onRightButtonPress: function, wrapperStyle: [object Object], navigationBarHidden: bool, shadowHidden: bool, tintColor: string, barTintColor: string, titleTextColor: string, translucent: bool} #
initialRoute :: Boolean -> Props
initialRoute = unsafeMkProps "initialRoute"

-- interactivePopGestureEnabled bool #
interactivePopGestureEnabled :: Boolean -> Props
interactivePopGestureEnabled = unsafeMkProps "interactivePopGestureEnabled"

-- itemWrapperStyle View#style #
itemWrapperStyle :: Boolean -> Props
itemWrapperStyle = unsafeMkProps "itemWrapperStyle"

-- navigationBarHidden bool #
navigationBarHidden :: Boolean -> Props
navigationBarHidden = unsafeMkProps "navigationBarHidden"

-- shadowHidden bool #
shadowHidden :: Boolean -> Props
shadowHidden = unsafeMkProps "shadowHidden"

-- tintColor string #
-- tintColor :: Boolean -> Props
-- tintColor = unsafeMkProps "tintColor"

-- titleTextColor string #
titleTextColor :: Boolean -> Props
titleTextColor = unsafeMkProps "titleTextColor"

-- translucent bool #
-- translucent :: Boolean -> Props
-- translucent = unsafeMkProps "translucent"

-- Methods

-- push(route) #
-- popN(n) #
-- pop(0) #
-- replaceAtIndex(route, index) #
-- replace(route) #
-- replacePrevious(route) #
-- popToTop(0) #
-- popToRoute(route) #
-- replacePreviousAndPop(route) #
-- resetTo(route) #


-- Picker Props

-- onValueChange function #

-- selectedValue any #
-- selectedValue :: Boolean -> Props
-- selectedValue = unsafeMkProps "selectedValue"

-- style pickerStyleType #
style :: Boolean -> Props
style = unsafeMkProps "style"

-- testID string #

-- enabled bool #
-- enabled :: Boolean -> Props
-- enabled = unsafeMkProps "enabled"

-- mode enum('dialog', 'dropdown') #
mode :: Boolean -> Props
mode = unsafeMkProps "mode"

-- prompt string #
prompt :: String -> Props
prompt = unsafeMkProps "prompt"

-- itemStyle itemStylePropType #
-- itemStyle :: Boolean -> Props
-- itemStyle = unsafeMkProps "itemStyle"

-- PickerIOS Props
-- itemStyle itemStylePropType #
itemStyle :: Boolean -> Props
itemStyle = unsafeMkProps "itemStyle"

-- onValueChange function #

-- selectedValue any #
selectedValue :: Boolean -> Props
selectedValue = unsafeMkProps "selectedValue"

-- ProgressBarAndroid Props

-- color color #
color :: Boolean -> Props
color = unsafeMkProps "color"

-- indeterminate indeterminateType #
indeterminate :: Boolean -> Props
indeterminate = unsafeMkProps "indeterminate"

-- progress ReactPropTypes.number #
-- progress :: Boolean -> Props
-- progress = unsafeMkProps "progress"

-- styleAttr ReactPropTypes.oneOf(STYLE_ATTRIBUTES) #
styleAttr :: Boolean -> Props
styleAttr = unsafeMkProps "styleAttr"

-- testID ReactPropTypes.string #

-- ProgressViewIOS Props

-- progress PropTypes.number #
progress :: Int -> Props
progress = unsafeMkProps "progress"

-- progressImage Image.propTypes.source #
progressImage :: Boolean -> Props
progressImage = unsafeMkProps "progressImage"

-- progressTintColor PropTypes.string #
progressTintColor :: String -> Props
progressTintColor = unsafeMkProps "progressTintColor"

-- progressViewStyle PropTypes.oneOf(['default', 'bar']) #
progressViewStyle :: Boolean -> Props
progressViewStyle = unsafeMkProps "progressViewStyle"

-- trackImage Image.propTypes.source #
-- trackImage :: Boolean -> Props
-- trackImage = unsafeMkProps "trackImage"

-- trackTintColor PropTypes.string #
trackTintColor :: String -> Props
trackTintColor = unsafeMkProps "trackTintColor"

-- RefreshControl Props

-- onRefresh function #

-- refreshing bool #
refreshing :: Boolean -> Props
refreshing = unsafeMkProps "refreshing"

-- colors [color] #
colors :: Boolean -> Props
colors = unsafeMkProps "colors"

-- enabled bool #
-- enabled :: Boolean -> Props
-- enabled = unsafeMkProps "enabled"

-- progressBackgroundColor color #
progressBackgroundColor :: Boolean -> Props
progressBackgroundColor = unsafeMkProps "progressBackgroundColor"

-- progressViewOffset number #
progressViewOffset :: Int -> Props
progressViewOffset = unsafeMkProps "progressViewOffset"

-- size enum(RefreshLayoutConsts.SIZE.DEFAULT, RefreshLayoutConsts.SIZE.LARGE) #
size :: Boolean -> Props
size = unsafeMkProps "size"

-- tintColor color #
-- tintColor :: Boolean -> Props
-- tintColor = unsafeMkProps "tintColor"

-- title string #
-- title :: Boolean -> Props
-- title = unsafeMkProps "title"

-- titleColor color #
-- titleColor :: Boolean -> Props
-- titleColor = unsafeMkProps "titleColor"

-- ScrollView Props

-- contentContainerStyle StyleSheetPropType(ViewStylePropTypes) #
contentContainerStyle :: Boolean -> Props
contentContainerStyle = unsafeMkProps "contentContainerStyle"

-- horizontal bool #
horizontal :: Boolean -> Props
horizontal = unsafeMkProps "horizontal"

-- keyboardDismissMode enum('none', 'interactive', 'on-drag') #
-- keyboardDismissMode :: Boolean -> Props
-- keyboardDismissMode = unsafeMkProps "keyboardDismissMode"

-- keyboardShouldPersistTaps bool #
keyboardShouldPersistTaps :: Boolean -> Props
keyboardShouldPersistTaps = unsafeMkProps "keyboardShouldPersistTaps"

-- onContentSizeChange function #

-- onScroll function #

-- pagingEnabled bool #
pagingEnabled :: Boolean -> Props
pagingEnabled = unsafeMkProps "pagingEnabled"

-- refreshControl element #
refreshControl :: Boolean -> Props
refreshControl = unsafeMkProps "refreshControl"

-- removeClippedSubviews bool #
removeClippedSubviews :: Boolean -> Props
removeClippedSubviews = unsafeMkProps "removeClippedSubviews"

-- scrollEnabled bool #
-- scrollEnabled :: Boolean -> Props
-- scrollEnabled = unsafeMkProps "scrollEnabled"

-- showsHorizontalScrollIndicator bool #
showsHorizontalScrollIndicator :: Boolean -> Props
showsHorizontalScrollIndicator = unsafeMkProps "showsHorizontalScrollIndicator"

-- showsVerticalScrollIndicator bool #
showsVerticalScrollIndicator :: Boolean -> Props
showsVerticalScrollIndicator = unsafeMkProps "showsVerticalScrollIndicator"

-- endFillColor color #
endFillColor :: Boolean -> Props
endFillColor = unsafeMkProps "endFillColor"

-- scrollPerfTag string #
scrollPerfTag :: String -> Props
scrollPerfTag = unsafeMkProps "scrollPerfTag"

-- alwaysBounceHorizontal bool #
alwaysBounceHorizontal :: Boolean -> Props
alwaysBounceHorizontal = unsafeMkProps "alwaysBounceHorizontal"

-- alwaysBounceVertical bool #
alwaysBounceVertical :: Boolean -> Props
alwaysBounceVertical = unsafeMkProps "alwaysBounceVertical"

-- automaticallyAdjustContentInsets bool #
automaticallyAdjustContentInsets :: Boolean -> Props
automaticallyAdjustContentInsets = unsafeMkProps "automaticallyAdjustContentInsets"

-- bounces bool #
bounces :: Boolean -> Props
bounces = unsafeMkProps "bounces"

-- bouncesZoom bool #
bouncesZoom :: Boolean -> Props
bouncesZoom = unsafeMkProps "bouncesZoom"

-- canCancelContentTouches bool #
canCancelContentTouches :: Boolean -> Props
canCancelContentTouches = unsafeMkProps "canCancelContentTouches"

-- centerContent bool #
centerContent :: Boolean -> Props
centerContent = unsafeMkProps "centerContent"

-- contentInset {top: number, left: number, bottom: number, right: number} #
contentInset :: Box -> Props
contentInset = unsafeMkProps "contentInset"

-- contentOffset PointPropType #
contentOffset :: Boolean -> Props
contentOffset = unsafeMkProps "contentOffset"

-- decelerationRate enum('fast', 'normal'), number #
decelerationRate :: Boolean -> Props
decelerationRate = unsafeMkProps "decelerationRate"

-- directionalLockEnabled bool #
directionalLockEnabled :: Boolean -> Props
directionalLockEnabled = unsafeMkProps "directionalLockEnabled"

-- indicatorStyle enum('default', 'black', 'white') #
indicatorStyle :: Boolean -> Props
indicatorStyle = unsafeMkProps "indicatorStyle"

-- maximumZoomScale number #
maximumZoomScale :: Int -> Props
maximumZoomScale = unsafeMkProps "maximumZoomScale"

-- minimumZoomScale number #
minimumZoomScale :: Int -> Props
minimumZoomScale = unsafeMkProps "minimumZoomScale"

-- onScrollAnimationEnd function #

-- scrollEventThrottle number #
scrollEventThrottle :: Int -> Props
scrollEventThrottle = unsafeMkProps "scrollEventThrottle"

-- scrollIndicatorInsets {top: number, left: number, bottom: number, right: number} #
scrollIndicatorInsets :: Box -> Props
scrollIndicatorInsets = unsafeMkProps "scrollIndicatorInsets"

-- scrollsToTop bool #
scrollsToTop :: Boolean -> Props
scrollsToTop = unsafeMkProps "scrollsToTop"

-- snapToAlignment enum('start', 'center', 'end') #
snapToAlignment :: Boolean -> Props
snapToAlignment = unsafeMkProps "snapToAlignment"

-- snapToInterval number #
snapToInterval :: Int -> Props
snapToInterval = unsafeMkProps "snapToInterval"

-- stickyHeaderIndices [number] #
stickyHeaderIndices :: Array Int -> Props
stickyHeaderIndices = unsafeMkProps "stickyHeaderIndices"

-- zoomScale number #
zoomScale :: Int -> Props
zoomScale = unsafeMkProps "zoomScale"

-- Methods

-- scrollTo(y?, x?, animated?) #
-- scrollWithoutAnimationTo(y, x) #

-- SegmentedControlIOS Props

-- enabled PropTypes.bool #
enabled :: Boolean -> Props
enabled = unsafeMkProps "enabled"

-- momentary PropTypes.bool #
momentary :: Boolean -> Props
momentary = unsafeMkProps "momentary"

-- onChange PropTypes.func #

-- onValueChange PropTypes.func #

-- selectedIndex PropTypes.number #
selectedIndex :: Int -> Props
selectedIndex = unsafeMkProps "selectedIndex"

-- tintColor PropTypes.string #
-- tintColor :: Boolean -> Props
-- tintColor = unsafeMkProps "tintColor"

-- values PropTypes.arrayOf(PropTypes.string) #
values :: Array String -> Props
values = unsafeMkProps "values"

-- Slider Props

-- disabled PropTypes.bool #
-- disabled :: Boolean -> Props
-- disabled = unsafeMkProps "disabled"

-- maximumValue PropTypes.number #
-- maximumValue :: Boolean -> Props
-- maximumValue = unsafeMkProps "maximumValue"

-- minimumValue PropTypes.number #
-- minimumValue :: Boolean -> Props
-- minimumValue = unsafeMkProps "minimumValue"

-- onSlidingComplete PropTypes.func #

-- onValueChange PropTypes.func #

-- step PropTypes.number #
-- step :: Boolean -> Props
-- step = unsafeMkProps "step"

-- value PropTypes.number #
-- value :: Boolean -> Props
-- value = unsafeMkProps "value"

-- maximumTrackImage Image.propTypes.source #
-- maximumTrackImage :: Boolean -> Props
-- maximumTrackImage = unsafeMkProps "maximumTrackImage"

-- maximumTrackTintColor PropTypes.string #
-- maximumTrackTintColor :: Boolean -> Props
-- maximumTrackTintColor = unsafeMkProps "maximumTrackTintColor"

-- minimumTrackImage Image.propTypes.source #
-- minimumTrackImage :: Boolean -> Props
-- minimumTrackImage = unsafeMkProps "minimumTrackImage"

-- minimumTrackTintColor PropTypes.string #
-- minimumTrackTintColor :: Boolean -> Props
-- minimumTrackTintColor = unsafeMkProps "minimumTrackTintColor"

-- thumbImage Image.propTypes.source #
-- thumbImage :: Boolean -> Props
-- thumbImage = unsafeMkProps "thumbImage"

-- trackImage Image.propTypes.source #
-- trackImage :: Boolean -> Props
-- trackImage = unsafeMkProps "trackImage"

-- SliderIOS #
--   disabled PropTypes.bool #
-- disabled :: Boolean -> Props
-- disabled = unsafeMkProps "disabled"

-- maximumTrackImage Image.propTypes.source #
maximumTrackImage :: Boolean -> Props
maximumTrackImage = unsafeMkProps "maximumTrackImage"

-- maximumTrackTintColor PropTypes.string #
maximumTrackTintColor :: Boolean -> Props
maximumTrackTintColor = unsafeMkProps "maximumTrackTintColor"

-- maximumValue PropTypes.number #
maximumValue :: Int -> Props
maximumValue = unsafeMkProps "maximumValue"

-- minimumTrackImage Image.propTypes.source #
minimumTrackImage :: Boolean -> Props
minimumTrackImage = unsafeMkProps "minimumTrackImage"

-- minimumTrackTintColor PropTypes.string #
minimumTrackTintColor :: Boolean -> Props
minimumTrackTintColor = unsafeMkProps "minimumTrackTintColor"

-- minimumValue PropTypes.number #
minimumValue :: Int -> Props
minimumValue = unsafeMkProps "minimumValue"

-- onSlidingComplete PropTypes.func #

-- onValueChange PropTypes.func #

-- step PropTypes.number #
step :: Int -> Props
step = unsafeMkProps "step"

-- style View#style #

-- thumbImage Image.propTypes.source #
thumbImage :: Boolean -> Props
thumbImage = unsafeMkProps "thumbImage"

-- trackImage Image.propTypes.source #
trackImage :: Boolean -> Props
trackImage = unsafeMkProps "trackImage"

-- value PropTypes.number #
-- value :: Boolean -> Props
-- value = unsafeMkProps "value"

-- StatusBar

-- animated bool #
animated :: Boolean -> Props
animated = unsafeMkProps "animated"

-- hidden bool #
hidden :: Boolean -> Props
hidden = unsafeMkProps "hidden"

-- backgroundColor color #
backgroundColor :: Boolean -> Props
backgroundColor = unsafeMkProps "backgroundColor"

-- translucent bool #
-- translucent :: Boolean -> Props
-- translucent = unsafeMkProps "translucent"

-- barStyle enum('default', 'light-content') #
barStyle :: Boolean -> Props
barStyle = unsafeMkProps "barStyle"

-- networkActivityIndicatorVisible bool #
networkActivityIndicatorVisible :: Boolean -> Props
networkActivityIndicatorVisible = unsafeMkProps "networkActivityIndicatorVisible"

-- showHideTransition enum('fade', 'slide') #
showHideTransition :: Boolean -> Props
showHideTransition = unsafeMkProps "showHideTransition"

-- Methods

-- static setHidden(hidden, animation?) #
-- static setBarStyle(style, animated?) #
-- static setNetworkActivityIndicatorVisible(visible) #
-- static setBackgroundColor(color, animated?) #
-- static setTranslucent(translucent) #


-- SnapshotViewIOS

-- onSnapshotReady function #

-- testIdentifier string #
testIdentifier :: String -> Props
testIdentifier = unsafeMkProps "testIdentifier"

-- Methods

-- onDefaultAction(event) #

-- Switch

-- disabled bool #
-- disabled :: Boolean -> Props
-- disabled = unsafeMkProps "disabled"

-- onValueChange function #

-- testID string #

-- value bool #
-- value :: Boolean -> Props
-- value = unsafeMkProps "value"

-- onTintColor color #
onTintColor :: Boolean -> Props
onTintColor = unsafeMkProps "onTintColor"

-- thumbTintColor color #
thumbTintColor :: Boolean -> Props
thumbTintColor = unsafeMkProps "thumbTintColor"

-- tintColor color #
-- tintColor :: Boolean -> Props
-- tintColor = unsafeMkProps "tintColor"


-- TabBarIOS

-- barTintColor color #
barTintColor :: Boolean -> Props
barTintColor = unsafeMkProps "barTintColor"

-- itemPositioning enum('fill', 'center', 'auto') #
itemPositioning :: Boolean -> Props
itemPositioning = unsafeMkProps "itemPositioning"

-- style View#style #

-- tintColor color #
tintColor :: Boolean -> Props
tintColor = unsafeMkProps "tintColor"

-- translucent bool #
translucent :: Boolean -> Props
translucent = unsafeMkProps "translucent"

-- unselectedTintColor color #
unselectedTintColor :: Boolean -> Props
unselectedTintColor = unsafeMkProps "unselectedTintColor"

-- TabBarIOS.Item #
-- badge string, number #
badge :: Boolean -> Props
badge = unsafeMkProps "badge"

-- icon Image.propTypes.source #
icon :: Boolean -> Props
icon = unsafeMkProps "icon"

-- onPress function #

-- renderAsOriginal bool #
renderAsOriginal :: Boolean -> Props
renderAsOriginal = unsafeMkProps "renderAsOriginal"

-- selected bool #
selected :: Boolean -> Props
selected = unsafeMkProps "selected"

-- selectedIcon Image.propTypes.source #
selectedIcon :: Boolean -> Props
selectedIcon = unsafeMkProps "selectedIcon"

-- style View#style #

-- systemIcon enum('bookmarks', 'contacts', 'downloads', 'favorites', 'featured', 'history', 'more', 'most-recent', 'most-viewed', 'recents', 'search', 'top-rated') #
systemIcon :: Boolean -> Props
systemIcon = unsafeMkProps "systemIcon"

-- title string #
-- title :: Boolean -> Props
-- title = unsafeMkProps "title"

-- Text #

-- ellipsizeMode enum('head', 'middle', 'tail', 'clip') #
ellipsizeMode :: Boolean -> Props
ellipsizeMode = unsafeMkProps "ellipsizeMode"

-- numberOfLines number #
-- numberOfLines :: Boolean -> Props
-- numberOfLines = unsafeMkProps "numberOfLines"

-- onLayout function #

-- onLongPress function #

-- onPress function #

-- testID string #

-- selectable bool #
selectable :: Boolean -> Props
selectable = unsafeMkProps "selectable"

-- allowFontScaling bool #
allowFontScaling :: Boolean -> Props
allowFontScaling = unsafeMkProps "allowFontScaling"

-- suppressHighlighting bool #
suppressHighlighting :: Boolean -> Props
suppressHighlighting = unsafeMkProps "suppressHighlighting"

-- TextInput

-- autoCapitalize PropTypes.oneOf([ 'none', 'sentences', 'words', 'characters', ]) #
autoCapitalize :: Boolean -> Props
autoCapitalize = unsafeMkProps "autoCapitalize"

-- autoCorrect PropTypes.bool #
autoCorrect :: Boolean -> Props
autoCorrect = unsafeMkProps "autoCorrect"

-- autoFocus PropTypes.bool #
autoFocus :: Boolean -> Props
autoFocus = unsafeMkProps "autoFocus"

-- blurOnSubmit PropTypes.bool #
blurOnSubmit :: Boolean -> Props
blurOnSubmit = unsafeMkProps "blurOnSubmit"

-- defaultValue PropTypes.string #
defaultValue :: String -> Props
defaultValue = unsafeMkProps "defaultValue"

-- editable PropTypes.bool #
editable :: Boolean -> Props
editable = unsafeMkProps "editable"

-- keyboardType PropTypes.oneOf([ // Cross-platform 'default', 'email-address', 'numeric', 'phone-pad', // iOS-only 'ascii-capable', 'numbers-and-punctuation', 'url', 'number-pad', 'name-phone-pad', 'decimal-pad', 'twitter', 'web-search', ]) #
keyboardType :: Boolean -> Props
keyboardType = unsafeMkProps "keyboardType"

-- maxLength PropTypes.number #
maxLength :: Int -> Props
maxLength = unsafeMkProps "maxLength"

-- multiline PropTypes.bool #
multiline :: Boolean -> Props
multiline = unsafeMkProps "multiline"

-- onBlur PropTypes.func #

-- onChange PropTypes.func #

-- onChangeText PropTypes.func #

-- onContentSizeChange PropTypes.func #

-- onEndEditing PropTypes.func #

-- onFocus PropTypes.func #

-- onLayout PropTypes.func #

-- onSelectionChange PropTypes.func #

-- onSubmitEditing PropTypes.func #

-- placeholder PropTypes.string #
placeholder :: String -> Props
placeholder = unsafeMkProps "placeholder"

-- placeholderTextColor color #
placeholderTextColor :: Boolean -> Props
placeholderTextColor = unsafeMkProps "placeholderTextColor"

-- returnKeyType PropTypes.oneOf([ // Cross-platform 'done', 'go', 'next', 'search', 'send', // Android-only 'none', 'previous', // iOS-only 'default', 'emergency-call', 'google', 'join', 'route', 'yahoo', ]) #
returnKeyType :: Boolean -> Props
returnKeyType = unsafeMkProps "returnKeyType"

-- secureTextEntry PropTypes.bool #
secureTextEntry :: Boolean -> Props
secureTextEntry = unsafeMkProps "secureTextEntry"

-- selectTextOnFocus PropTypes.bool #
selectTextOnFocus :: Boolean -> Props
selectTextOnFocus = unsafeMkProps "selectTextOnFocus"

-- selectionColor color #
selectionColor :: Boolean -> Props
selectionColor = unsafeMkProps "selectionColor"


-- value PropTypes.string #
value :: String -> Props
value = unsafeMkProps "value"

-- inlineImageLeft PropTypes.string #
inlineImageLeft :: String -> Props
inlineImageLeft = unsafeMkProps "inlineImageLeft"

-- inlineImagePadding PropTypes.number #
inlineImagePadding :: Int -> Props
inlineImagePadding = unsafeMkProps "inlineImagePadding"

-- numberOfLines PropTypes.number #
numberOfLines :: Int -> Props
numberOfLines = unsafeMkProps "numberOfLines"

-- returnKeyLabel PropTypes.string #
returnKeyLabel :: String -> Props
returnKeyLabel = unsafeMkProps "returnKeyLabel"

-- underlineColorAndroid color #
underlineColorAndroid :: Boolean -> Props
underlineColorAndroid = unsafeMkProps "underlineColorAndroid"

-- clearButtonMode PropTypes.oneOf([ 'never', 'while-editing', 'unless-editing', 'always', ]) #
clearButtonMode :: Boolean -> Props
clearButtonMode = unsafeMkProps "clearButtonMode"

-- clearTextOnFocus PropTypes.bool #
clearTextOnFocus :: Boolean -> Props
clearTextOnFocus = unsafeMkProps "clearTextOnFocus"

-- enablesReturnKeyAutomatically PropTypes.bool #
enablesReturnKeyAutomatically :: Boolean -> Props
enablesReturnKeyAutomatically = unsafeMkProps "enablesReturnKeyAutomatically"

-- keyboardAppearance PropTypes.oneOf([ 'default', 'light', 'dark', ]) #
keyboardAppearance :: Boolean -> Props
keyboardAppearance = unsafeMkProps "keyboardAppearance"

-- onKeyPress PropTypes.func #

-- selectionState PropTypes.instanceOf(DocumentSelectionState) #
selectionState :: Boolean -> Props
selectionState = unsafeMkProps "selectionState"

-- Methods

-- isFocused(0): #
-- clear(0) #


-- ToolbarAndroid

-- actions ReactPropTypes.arrayOf(ReactPropTypes.shape({ title: ReactPropTypes.string.isRequired, icon: optionalImageSource, show: ReactPropTypes.oneOf(['always', 'ifRoom', 'never']), showWithText: ReactPropTypes.bool })) #
actions :: Boolean -> Props
actions = unsafeMkProps "actions"

-- contentInsetEnd ReactPropTypes.number #
contentInsetEnd :: Int -> Props
contentInsetEnd = unsafeMkProps "contentInsetEnd"

-- contentInsetStart ReactPropTypes.number #
contentInsetStart :: Int -> Props
contentInsetStart = unsafeMkProps "contentInsetStart"

-- logo optionalImageSource #
logo :: Boolean -> Props
logo = unsafeMkProps "logo"

-- navIcon optionalImageSource #
navIcon :: Boolean -> Props
navIcon = unsafeMkProps "navIcon"

-- onActionSelected ReactPropTypes.func #

-- onIconClicked ReactPropTypes.func #

-- overflowIcon optionalImageSource #

-- rtl ReactPropTypes.bool #
rtl :: Boolean -> Props
rtl = unsafeMkProps "rtl"

-- subtitle ReactPropTypes.string #
subtitle :: String -> Props
subtitle = unsafeMkProps "subtitle"

-- subtitleColor color #
subtitleColor :: Boolean -> Props
subtitleColor = unsafeMkProps "subtitleColor"

-- title ReactPropTypes.string #
title :: String -> Props
title = unsafeMkProps "title"

-- titleColor color #
titleColor :: Boolean -> Props
titleColor = unsafeMkProps "titleColor"

-- TouchableHighlight

-- activeOpacity number #
-- activeOpacity :: Boolean -> Props
-- activeOpacity = unsafeMkProps "activeOpacity"

-- onHideUnderlay function #

-- onShowUnderlay function #

-- style View#style #

-- underlayColor color #
underlayColor :: Boolean -> Props
underlayColor = unsafeMkProps "underlayColor"

-- TouchableNativeFeedback

-- background backgroundPropType #
background :: Boolean -> Props
background = unsafeMkProps "background"

-- Methods

-- static SelectableBackground(0) #

-- static SelectableBackgroundBorderless(0) #
-- static Ripple(color, borderless) #


-- TouchableOpacity

-- activeOpacity number #
activeOpacity :: Int -> Props
activeOpacity = unsafeMkProps "activeOpacity"


-- Methods

-- setOpacityTo(value) #

-- TouchableWithoutFeedback

-- accessibilityComponentType View.AccessibilityComponentType #
accessibilityComponentType :: AccessibilityComponentTypeProp -> Props
accessibilityComponentType = unsafeMkProps "accessibilityComponentType"

-- accessibilityTraits View.AccessibilityTraits, [object Object] #
accessibilityTraits :: Array  AccessibilityTraitsProp -> Props
accessibilityTraits = unsafeMkProps "accessibilityTraits"

-- accessible bool #
accessible :: Boolean -> Props
accessible = unsafeMkProps "accessible"

-- delayLongPress number #
delayLongPress :: Int -> Props
delayLongPress = unsafeMkProps "delayLongPress"

-- delayPressIn number #
delayPressIn :: Int -> Props
delayPressIn = unsafeMkProps "delayPressIn"

-- delayPressOut number #
delayPressOut :: Int -> Props
delayPressOut = unsafeMkProps "delayPressOut"

-- disabled bool #
disabled :: Boolean -> Props
disabled = unsafeMkProps "disabled"

-- hitSlop {top: number, left: number, bottom: number, right: number} #
hitSlop :: Box -> Props
hitSlop = unsafeMkProps "hitSlop"

-- onLayout function #

-- onLongPress function #

-- onPress function #

-- onPressIn function #

-- onPressOut function #

-- pressRetentionOffset {top: number, left: number, bottom: number, right: number} #
pressRetentionOffset :: Box -> Props
pressRetentionOffset = unsafeMkProps "pressRetentionOffset"

-- ViewPagerAndroid

-- initialPage ReactPropTypes.number #
initialPage :: Int -> Props
initialPage = unsafeMkProps "initialPage"

-- keyboardDismissMode ReactPropTypes.oneOf([ 'none', // default 'on-drag', ]) #
keyboardDismissMode :: Boolean -> Props
keyboardDismissMode = unsafeMkProps "keyboardDismissMode"

-- onPageScroll ReactPropTypes.func #

-- onPageScrollStateChanged ReactPropTypes.func #

-- onPageSelected ReactPropTypes.func #

-- pageMargin ReactPropTypes.number #
pageMargin :: Int -> Props
pageMargin = unsafeMkProps "pageMargin"

-- scrollEnabled ReactPropTypes.bool #
scrollEnabled :: Boolean -> Props
scrollEnabled = unsafeMkProps "scrollEnabled"

-- Methods

-- setPage(selectedPage) #
-- setPageWithoutAnimation(selectedPage) #
