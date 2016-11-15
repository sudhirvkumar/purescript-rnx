module RNX.Props where

import RNX.PropsTypes (AccessibilityComponentTypeProp(..), AccessibilityLiveRegionProp(..), ImportantForAccessibilityProp(..))
import RNX.Components (Prop, Element)
import Data.Date (Date)
import Prelude
import RNX.Color (Color)

foreign import mkProps :: forall val action. String -> val -> Prop action
foreign import mkFnProps :: forall val action. String -> val -> Prop action

foreign import dPLeft :: forall a. a
foreign import dPRight :: forall a. a

foreign import refreshControlSizeDefault :: forall a. a
foreign import refreshControlSizeLarge :: forall a. a

-- TODO: add accessibility stuff

type Box =
  { top    :: Int
  , bottom :: Int
  , left   :: Int
  , right  :: Int
  }


-- TODO: verify types of the fields
type TouchEvent =
  { changedTouches :: Array String
  , identifier :: Int
  , locationX :: Int
  , locationY :: Int
  , pageX :: Int
  , pageY :: Int
  , target :: Int
  , timestamp :: String
  , touches :: Array String
  }

type LayoutEvent =
  { layout :: Layout
  }

type Layout =
  { x :: Int
  , y :: Int
  , width :: Int
  , height :: Int
  }

data Size
  = SizeSmall
  | SizeLarge
  | SizeNum Int


pointerEvents :: forall action. PtrEvents -> Prop action
pointerEvents PtrEventsBoxNone = mkProps "pointerEvents" "box-none"
pointerEvents PtrEventsNone    = mkProps "pointerEvents" "none"
pointerEvents PtrEventsBoxOnly = mkProps "pointerEvents" "box-only"
pointerEvents PtrEventsAuto    = mkProps "pointerEvents" "auto"

data PtrEvents
  = PtrEventsBoxNone
  | PtrEventsNone
  | PtrEventsBoxOnly
  | PtrEventsAuto


testID :: forall action. String -> Prop action
testID = mkProps "testID"

key :: forall action. String -> Prop action
key = mkProps "key"


-- Animating

animating :: forall action. Boolean -> Prop action
animating = mkProps "animating"


pColor :: forall action. Color -> Prop action
pColor c = mkProps "color" (show c)

accessibilityLiveRegion :: forall action. AccessibilityLiveRegionProp -> Prop action
accessibilityLiveRegion  ALRPNone  = mkProps "accessibilityLiveRegion" "none"
accessibilityLiveRegion  Polite    = mkProps "accessibilityLiveRegion" "none"
accessibilityLiveRegion  Assertive = mkProps "accessibilityLiveRegion" "none"


collapsable :: forall action. Boolean -> Prop action
collapsable = mkProps "collapsable"


importantForAccessibility :: forall action. ImportantForAccessibilityProp -> Prop action
importantForAccessibility IAPAuto           = mkProps "importantForAccessibility" "auto"
importantForAccessibility Yes               = mkProps "importantForAccessibility" "yes"
importantForAccessibility No                = mkProps "importantForAccessibility" "no"
importantForAccessibility NoHideDescenDants = mkProps "importantForAccessibility" "no-hide-descendents"


needsOffscreenAlphaCompositing :: forall action. Boolean -> Prop action
needsOffscreenAlphaCompositing = mkProps "needsOffscreenAlphaCompositing"


renderToHardwareTextureAndroid :: forall action. Boolean -> Prop action
renderToHardwareTextureAndroid = mkProps "renderToHardwareTextureAndroid"


shouldRasterizeIOS :: forall action. Boolean -> Prop action
shouldRasterizeIOS = mkProps "shouldRasterizeIOS"



hidesWhenStopped :: forall action. Boolean -> Prop action
hidesWhenStopped = mkProps "hidesWhenStopped"


date :: forall action. Date -> Prop action
date = mkProps "date"


maximumDate :: forall action. Date -> Prop action
maximumDate = mkProps "maximumDate"


minimumDate :: forall action. Date -> Prop action
minimumDate = mkProps "minimumDate"


data MIType
  = MI1
  | MI2
  | MI3
  | MI4
  | MI5
  | MI6
  | MI10
  | MI12
  | MI15
  | MI20
  | MI30


minuteInterval :: forall action. MIType -> Prop action
minuteInterval MI1  = mkProps "minuteInterval" 1
minuteInterval MI2  = mkProps "minuteInterval" 2
minuteInterval MI3  = mkProps "minuteInterval" 3
minuteInterval MI4  = mkProps "minuteInterval" 4
minuteInterval MI5  = mkProps "minuteInterval" 5
minuteInterval MI6  = mkProps "minuteInterval" 6
minuteInterval MI10 = mkProps "minuteInterval" 10
minuteInterval MI12 = mkProps "minuteInterval" 12
minuteInterval MI15 = mkProps "minuteInterval" 15
minuteInterval MI20 = mkProps "minuteInterval" 20
minuteInterval MI30 = mkProps "minuteInterval" 30


data DateMode
  = DMDate
  | DMTime
  | DMDateTime


modeDate :: forall action. DateMode -> Prop action
modeDate DMDate     = mkProps "mode" "date"
modeDate DMTime     = mkProps "mode" "time"
modeDate DMDateTime = mkProps "mode" "datetime"


timeZoneOffsetInMinutes :: forall action. Int -> Prop action
timeZoneOffsetInMinutes = mkProps "timeZoneOffsetInMinutes"


drawerBackgroundColor :: forall action. Color -> Prop action
drawerBackgroundColor c = mkProps "drawerBackgroundColor" (show c)


data DLM
  = DLMUnlocked
  | DLMLockedClosed
  | DLMLockedOpen


drawerLockMode :: forall action. DLM -> Prop action
drawerLockMode DLMUnlocked     = mkProps "drawerLockMode" "unlocked"
drawerLockMode DLMLockedClosed = mkProps "drawerLockMode" "locked-closed"
drawerLockMode DLMLockedOpen   = mkProps "drawerLockMode" "locked-open"


data DrawerPosition
  = DPLeft
  | DPRight

drawerPosition :: forall action. DrawerPosition -> Prop action
drawerPosition DPLeft  = mkProps "drawerPosition" dPLeft
drawerPosition DPRight = mkProps "drawerPosition" dPRight


drawerWidth :: forall action. Int -> Prop action
drawerWidth = mkProps "drawerWidth"


keyboardDismissModeViewAndroid :: forall action. KDMVA -> Prop action
keyboardDismissModeViewAndroid KDMVANone   = mkProps "keyboardDismissModeViewAndroid" "none"
keyboardDismissModeViewAndroid KDMVAOnDrag = mkProps "keyboardDismissModeViewAndroid" "on-drag"

data KDMVA
  = KDMVANone
  | KDMVAOnDrag


statusBarBackgroundColor :: forall action. Color -> Prop action
statusBarBackgroundColor c = mkProps "statusBarBackgroundColor" (show c)


data RSMode
  = RSMCover
  | RSMContain
  | RSMStretch
  | RSMRepeat
  | RSMCenter


resizeMode :: forall action. RSMode -> Prop action
resizeMode RSMCover   = mkProps "resizeMode" "cover"
resizeMode RSMContain = mkProps "resizeMode" "contain"
resizeMode RSMStretch = mkProps "resizeMode" "stretch"
resizeMode RSMRepeat  = mkProps "resizeMode" "repeat"
resizeMode RSMCenter  = mkProps "resizeMode" "center"


data RSMD
  = RSMAuto
  | RSMResize
  | RSMScale


resizeMethod :: forall action. RSMD -> Prop action
resizeMethod RSMAuto   = mkProps "resizeMethod" "auto"
resizeMethod RSMResize = mkProps "resizeMethod" "resize"
resizeMethod RSMScale  = mkProps "resizeMethod" "scale"

-- TODO: ImageSourcePropType
data ImageURISourcePropType = Shape


accessibilityLabel :: forall action. String -> Prop action
accessibilityLabel = mkProps "accessibilityLabel"


blurRadius :: forall action. Int -> Prop action
blurRadius = mkProps "blurRadius"

data BT
  = BTHeight
  | BTPosition
  | BTPadding


behavior :: forall action. BT -> Prop action
behavior BTHeight   = mkProps "behavior" "height"
behavior BTPosition = mkProps "behavior" "position"
behavior BTPadding  = mkProps "behavior" "padding"


capInsets :: forall action. Box -> Prop action
capInsets = mkProps "capInsets"

enableEmptySections :: forall action. Boolean -> Prop action
enableEmptySections = mkProps "enableEmptySections"


initialListSize :: forall action. Int -> Prop action
initialListSize = mkProps "initialListSize"


pageSize :: forall action. Int -> Prop action
pageSize = mkProps "pageSize"


scrollRenderAheadDistance :: forall action. Int -> Prop action
scrollRenderAheadDistance = mkProps "scrollRenderAheadDistance"



-- annotations [{latitude: number, longitude: number, animateDrop: bool, draggable: bool, onDragStateChange: function, onFocus: function, onBlur: function, title: string, subtitle: string, leftCalloutView: element, rightCalloutView: element, detailCalloutView: element, tintColor: [object Object], image: Image.propTypes.source, view: element, id: string, hasLeftCallout: deprecatedPropType( React.PropTypes.bool, 'Use `leftCalloutView` instead.' ), hasRightCallout: deprecatedPropType( React.PropTypes.bool, 'Use `rightCalloutView` instead.' ), onLeftCalloutPress: deprecatedPropType( React.PropTypes.func, 'Use `leftCalloutView` instead.' ), onRightCalloutPress: deprecatedPropType( React.PropTypes.func, 'Use `rightCalloutView` instead.' )}] #
annotations :: forall action. Boolean -> Prop action
annotations = mkProps "annotations"



followUserLocation :: forall action. Boolean -> Prop action
followUserLocation = mkProps "followUserLocation"


legalLabelInsets :: forall action. Box -> Prop action
legalLabelInsets = mkProps "legalLabelInsets"


data MT
  = MTStandard
  | MTSatellite
  | MTHybrid


mapType :: forall action. MT -> Prop action
mapType MTStandard  = mkProps "mapType" "standard"
mapType MTSatellite = mkProps "mapType" "satellite"
mapType MTHybrid    = mkProps "mapType" "hybrid"


maxDelta :: forall action. Int -> Prop action
maxDelta = mkProps "maxDelta"


minDelta :: forall action. Int -> Prop action
minDelta = mkProps "minDelta"


-- TODO: implement overlay function

newtype Coordinate = Coordinate
  { lattitude :: Number
  , longitude :: Number
  }

newtype Overlay = Overlay
  { coordinates :: Array Coordinate
  , lineWidth :: Int
  , strokeColor :: Color
  , fillColor :: Color
  , oid :: String
  }

-- overlays [{coordinates: [object Object], lineWidth: number, strokeColor: [object Object], fillColor: [object Object], id: string}] #
overlays :: forall action. Array Overlay -> Prop action
overlays = mkProps "overlays"


pitchEnabled :: forall action. Boolean -> Prop action
pitchEnabled = mkProps "pitchEnabled"

newtype Region = Region
  { lattitude :: Number
  , longitude :: Number
  , lattitudeDelta :: Number
  , longitudeDelta :: Number
  }

region :: forall action. Region -> Prop action
region = mkProps "region"


rotateEnabled :: forall action. Boolean -> Prop action
rotateEnabled = mkProps "rotateEnabled"


showsCompass :: forall action. Boolean -> Prop action
showsCompass = mkProps "showsCompass"


showsPointsOfInterest :: forall action. Boolean -> Prop action
showsPointsOfInterest = mkProps "showsPointsOfInterest"


showsUserLocation :: forall action. Boolean -> Prop action
showsUserLocation = mkProps "showsUserLocation"


zoomEnabled :: forall action. Boolean -> Prop action
zoomEnabled = mkProps "zoomEnabled"


active :: forall action. Boolean -> Prop action
active = mkProps "active"


data AT
  = ATNone
  | ATSlide
  | ATFade


animationType :: forall action. AT -> Prop action
animationType ATNone  = mkProps "animationType" "none"
animationType ATSlide = mkProps "animationType" "slide"
animationType ATFade  = mkProps "animationType" "fade"


transparent :: forall action. Boolean -> Prop action
transparent = mkProps "transparent"


visible :: forall action. Boolean -> Prop action
visible = mkProps "visible"


data SupportedOrientations
  = SOPortrait
  | SOPortraitUpsideDown
  | SOLandscape
  | SOLandscapeLeft
  | SOLandscapeRight


instance showSupportedOrientations :: Show SupportedOrientations where
  show SOPortrait           = "portrait"
  show SOPortraitUpsideDown = "portrait-upside-down"
  show SOLandscape          = "landscape"
  show SOLandscapeLeft      = "landscape-left"
  show SOLandscapeRight     = "landscape-right"


supportedOrientations :: forall action. Array SupportedOrientations -> Prop action
supportedOrientations ary = mkProps "supportedOrientations" (map show ary)



-- initialRouteStack [object] #
initialRouteStack :: forall action. Boolean -> Prop action
initialRouteStack = mkProps "initialRouteStack"

-- navigationBar node #
navigationBar :: forall action. Boolean -> Prop action
navigationBar = mkProps "navigationBar"

-- navigator object #
navigator :: forall action. Boolean -> Prop action
navigator = mkProps "navigator"




-- initialRoute {component: function, title: string, titleImage: Image.propTypes.source, passProps: object, backButtonIcon: Image.propTypes.source, backButtonTitle: string, leftButtonIcon: Image.propTypes.source, leftButtonTitle: string, onLeftButtonPress: function, rightButtonIcon: Image.propTypes.source, rightButtonTitle: string, onRightButtonPress: function, wrapperStyle: [object Object], navigationBarHidden: bool, shadowHidden: bool, tintColor: string, barTintColor: string, titleTextColor: string, translucent: bool} #
initialRoute :: forall action. Boolean -> Prop action
initialRoute = mkProps "initialRoute"


interactivePopGestureEnabled :: forall action. Boolean -> Prop action
interactivePopGestureEnabled = mkProps "interactivePopGestureEnabled"

-- itemWrapperStyle View#style #
itemWrapperStyle :: forall action. Boolean -> Prop action
itemWrapperStyle = mkProps "itemWrapperStyle"


navigationBarHidden :: forall action. Boolean -> Prop action
navigationBarHidden = mkProps "navigationBarHidden"


shadowHidden :: forall action. Boolean -> Prop action
shadowHidden = mkProps "shadowHidden"


titleTextColor :: forall action. Color -> Prop action
titleTextColor c = mkProps "titleTextColor" (show c)



-- style pickerStyleType #
style :: forall action. Boolean -> Prop action
style = mkProps "style"

data PM
  = PMDialog
  | PMDropDown


pickerMode :: forall action. PM -> Prop action
pickerMode PMDialog   = mkProps "mode" "dialog"
pickerMode PMDropDown = mkProps "mode" "dropdown"


prompt :: forall action. String -> Prop action
prompt = mkProps "prompt"


-- itemStyle itemStylePropType #
itemStyle :: forall action. Boolean -> Prop action
itemStyle = mkProps "itemStyle"


selectedValue :: forall action a. a -> Prop action
selectedValue = mkProps "selectedValue"


indeterminate :: forall action. Boolean -> Prop action
indeterminate = mkProps "indeterminate"

data StyleAttributes
  = SAHorizontal
  | SANormal
  | SASmall
  | SALarge
  | SAInverse
  | SASmallInverse
  | SALargeInverse


styleAttr :: forall action. StyleAttributes -> Prop action
styleAttr SAHorizontal   = mkProps "styleAttr" "Horizontal"
styleAttr SANormal       = mkProps "styleAttr" "Normal"
styleAttr SASmall        = mkProps "styleAttr" "Small"
styleAttr SALarge        = mkProps "styleAttr" "Large"
styleAttr SAInverse      = mkProps "styleAttr" "Inverse"
styleAttr SASmallInverse = mkProps "styleAttr" "SmallInverse"
styleAttr SALargeInverse = mkProps "styleAttr" "LargeInverse"


progress :: forall action. Number -> Prop action
progress = mkProps "progress"

progressTintColor :: forall action. Color -> Prop action
progressTintColor c = mkProps "progressTintColor" (show c)


data PVS
  = PVSDefault
  | PVSBar


progressViewStyle :: forall action. PVS -> Prop action
progressViewStyle PVSDefault = mkProps "progressViewStyle" "default"
progressViewStyle PVSBar     = mkProps "progressViewStyle" "bar"


trackTintColor :: forall action. Color -> Prop action
trackTintColor c = mkProps "trackTintColor" (show c)


refreshing :: forall action. Boolean -> Prop action
refreshing = mkProps "refreshing"


colors :: forall action. Array Color -> Prop action
colors cs = mkProps "colors" (map show cs)


progressBackgroundColor :: forall action. Color -> Prop action
progressBackgroundColor c = mkProps "progressBackgroundColor" (show c)


progressViewOffset :: forall action. Int -> Prop action
progressViewOffset = mkProps "progressViewOffset"

-- size enum(RefreshLayoutConsts.SIZE.DEFAULT, RefreshLayoutConsts.SIZE.LARGE) #
size :: forall action. Size -> Prop action
size SizeSmall   = mkProps "size" "small"
size SizeLarge   = mkProps "size" "large"
size (SizeNum a) = mkProps "size" a


data RefreshControlSize = RCDefault | RCLarge

refreshControlSize :: forall action. RefreshControlSize -> Prop action
refreshControlSize RCDefault = mkProps "size" refreshControlSizeDefault
refreshControlSize RCLarge = mkProps "size" refreshControlSizeLarge


-- contentContainerStyle StyleSheetPropType(ViewStylePropTypes) #
contentContainerStyle :: forall action. Boolean -> Prop action
contentContainerStyle = mkProps "contentContainerStyle"


horizontal :: forall action. Boolean -> Prop action
horizontal = mkProps "horizontal"


keyboardShouldPersistTaps :: forall action. Boolean -> Prop action
keyboardShouldPersistTaps = mkProps "keyboardShouldPersistTaps"


keyboardVerticalOffset :: forall action. Int -> Prop action
keyboardVerticalOffset = mkProps "keyboardVerticalOffset"



pagingEnabled :: forall action. Boolean -> Prop action
pagingEnabled = mkProps "pagingEnabled"

-- refreshControl element #
refreshControl :: forall action. Boolean -> Prop action
refreshControl = mkProps "refreshControl"


removeClippedSubviews :: forall action. Boolean -> Prop action
removeClippedSubviews = mkProps "removeClippedSubviews"

showsHorizontalScrollIndicator :: forall action. Boolean -> Prop action
showsHorizontalScrollIndicator = mkProps "showsHorizontalScrollIndicator"


showsVerticalScrollIndicator :: forall action. Boolean -> Prop action
showsVerticalScrollIndicator = mkProps "showsVerticalScrollIndicator"


endFillColor :: forall action. Color -> Prop action
endFillColor c = mkProps "endFillColor" (show c)


scrollPerfTag :: forall action. String -> Prop action
scrollPerfTag = mkProps "scrollPerfTag"


alwaysBounceHorizontal :: forall action. Boolean -> Prop action
alwaysBounceHorizontal = mkProps "alwaysBounceHorizontal"


alwaysBounceVertical :: forall action. Boolean -> Prop action
alwaysBounceVertical = mkProps "alwaysBounceVertical"


automaticallyAdjustContentInsets :: forall action. Boolean -> Prop action
automaticallyAdjustContentInsets = mkProps "automaticallyAdjustContentInsets"


bounces :: forall action. Boolean -> Prop action
bounces = mkProps "bounces"


bouncesZoom :: forall action. Boolean -> Prop action
bouncesZoom = mkProps "bouncesZoom"


injectedJavaScript :: forall action. String -> Prop action
injectedJavaScript = mkProps "injectedJavaScript"


userAgent :: forall action. String -> Prop action
userAgent = mkProps "userAgent"


scalesPageToFit :: forall action. Boolean -> Prop action
scalesPageToFit = mkProps "scalesPageToFit"


startInLoadingState :: forall action. Boolean -> Prop action
startInLoadingState = mkProps "startInLoadingState"


domStorageEnabled :: forall action. Boolean -> Prop action
domStorageEnabled = mkProps "domStorageEnabled"


javaScriptEnabled :: forall action. Boolean -> Prop action
javaScriptEnabled = mkProps "javaScriptEnabled"


allowsInlineMediaPlayback :: forall action. Boolean -> Prop action
allowsInlineMediaPlayback = mkProps "allowsInlineMediaPlayback"


mediaPlaybackRequiresUserAction :: forall action. Boolean -> Prop action
mediaPlaybackRequiresUserAction = mkProps "mediaPlaybackRequiresUserAction"


canCancelContentTouches :: forall action. Boolean -> Prop action
canCancelContentTouches = mkProps "canCancelContentTouches"


centerContent :: forall action. Boolean -> Prop action
centerContent = mkProps "centerContent"


contentInset :: forall action. Box -> Prop action
contentInset = mkProps "contentInset"

type Point = {x :: Int, y :: Int}


contentOffset :: forall action. Point -> Prop action
contentOffset = mkProps "contentOffset"


data DRT
  = DRTFast
  | DRTNormal
  | DRTNum Number


decelerationRate :: forall action. DRT -> Prop action
decelerationRate DRTFast    = mkProps "decelerationRate" "fast"
decelerationRate DRTNormal  = mkProps "decelerationRate" "normal"
decelerationRate (DRTNum a) = mkProps "decelerationRate" a


directionalLockEnabled :: forall action. Boolean -> Prop action
directionalLockEnabled = mkProps "directionalLockEnabled"


data IndicatorStyle
  = ISDefault
  | ISBlack
  | ISWhite


indicatorStyle :: forall action. IndicatorStyle -> Prop action
indicatorStyle ISDefault = mkProps "indicatorStyle" "default"
indicatorStyle ISBlack   = mkProps "indicatorStyle" "black"
indicatorStyle ISWhite   = mkProps "indicatorStyle" "white"



maximumZoomScale :: forall action. Number -> Prop action
maximumZoomScale = mkProps "maximumZoomScale"

minimumZoomScale :: forall action. Number -> Prop action
minimumZoomScale = mkProps "minimumZoomScale"



scrollEventThrottle :: forall action. Int -> Prop action
scrollEventThrottle = mkProps "scrollEventThrottle"


scrollIndicatorInsets :: forall action. Box -> Prop action
scrollIndicatorInsets = mkProps "scrollIndicatorInsets"


scrollsToTop :: forall action. Boolean -> Prop action
scrollsToTop = mkProps "scrollsToTop"


data SnapToAlignment
  = STAStart
  | STACenter
  | STAEnd


snapToAlignment :: forall action. SnapToAlignment -> Prop action
snapToAlignment STAStart = mkProps "snapToAlignment" "start"
snapToAlignment STACenter = mkProps "snapToAlignment" "center"
snapToAlignment STAEnd = mkProps "snapToAlignment" "end"



snapToInterval :: forall action. Int -> Prop action
snapToInterval = mkProps "snapToInterval"


stickyHeaderIndices :: forall action. Array Int -> Prop action
stickyHeaderIndices = mkProps "stickyHeaderIndices"


zoomScale :: forall action. Number -> Prop action
zoomScale = mkProps "zoomScale"


enabled :: forall action. Boolean -> Prop action
enabled = mkProps "enabled"


momentary :: forall action. Boolean -> Prop action
momentary = mkProps "momentary"



selectedIndex :: forall action. Int -> Prop action
selectedIndex = mkProps "selectedIndex"



values :: forall action. Array String -> Prop action
values = mkProps "values"


valueNum :: forall action. Int -> Prop action
valueNum = mkProps "value"


valueBool :: forall action. Boolean -> Prop action
valueBool = mkProps "value"


maximumTrackTintColor :: forall action. Color -> Prop action
maximumTrackTintColor c = mkProps "maximumTrackTintColor" (show c)


maximumValue :: forall action. Int -> Prop action
maximumValue = mkProps "maximumValue"



minimumTrackTintColor :: forall action. Color -> Prop action
minimumTrackTintColor c = mkProps "minimumTrackTintColor" (show c)


minimumValue :: forall action. Int -> Prop action
minimumValue = mkProps "minimumValue"


step :: forall action. Int -> Prop action
step = mkProps "step"

hidden :: forall action. Boolean -> Prop action
hidden = mkProps "hidden"


pBackgroundColor :: forall action. Color -> Prop action
pBackgroundColor c = mkProps "backgroundColor" (show c)


data BarStyle
  = BSDefault
  | BSLightContent
  | BSDarkContent


barStyle :: forall action. BarStyle -> Prop action
barStyle BSDefault      = mkProps "barStyle" "default"
barStyle BSLightContent = mkProps "barStyle" "light-content"
barStyle BSDarkContent  = mkProps "barStyle" "dark-content"



networkActivityIndicatorVisible :: forall action. Boolean -> Prop action
networkActivityIndicatorVisible = mkProps "networkActivityIndicatorVisible"


data ShowHideTransition
  = SHTFade
  | SHTSlide


showHideTransition :: forall action. ShowHideTransition -> Prop action
showHideTransition SHTFade = mkProps "showHideTransition" "fade"
showHideTransition SHTSlide = mkProps "showHideTransition" "slide"



testIdentifier :: forall action. String -> Prop action
testIdentifier = mkProps "testIdentifier"



onTintColor :: forall action. Color -> Prop action
onTintColor c = mkProps "onTintColor" (show c)


thumbTintColor :: forall action. Color -> Prop action
thumbTintColor c = mkProps "thumbTintColor" (show c)


barTintColor :: forall action. Color -> Prop action
barTintColor c = mkProps "barTintColor" (show c)


data ItemPositioning
  = IPFill
  | IPCenter
  | IPAuto


itemPositioning :: forall action. ItemPositioning -> Prop action
itemPositioning IPFill   = mkProps "itemPositioning" "fill"
itemPositioning IPCenter = mkProps "itemPositioning" "center"
itemPositioning IPAuto   = mkProps "itemPositioning" "auto"


tintColor :: forall action. Color -> Prop action
tintColor c = mkProps "tintColor" (show c)


translucent :: forall action. Boolean -> Prop action
translucent = mkProps "translucent"


unselectedTintColor :: forall action. Color -> Prop action
unselectedTintColor c = mkProps "unselectedTintColor" (show c)


data Badge = BadgeStr String | BadgeNum Int


badge :: forall action. Badge -> Prop action
badge (BadgeStr str) = mkProps "badge" str
badge (BadgeNum num) = mkProps "badge" num


renderAsOriginal :: forall action. Boolean -> Prop action
renderAsOriginal = mkProps "renderAsOriginal"


selected :: forall action. Boolean -> Prop action
selected = mkProps "selected"

data SysIcon
  = SysIconBookmarks
  | SysIconContacts
  | SysIconDownloads
  | SysIconFavorites
  | SysIconFeatured
  | SysIconHistory
  | SysIconMore
  | SysIconMostRecent
  | SysIconMostViewed
  | SysIconRecents
  | SysIconSearch
  | SysIconTopRated


systemIcon :: forall action. SysIcon -> Prop action
systemIcon SysIconBookmarks  = mkProps "systemIcon" "bookmarks"
systemIcon SysIconContacts   = mkProps "systemIcon" "contacts"
systemIcon SysIconDownloads  = mkProps "systemIcon" "downloads"
systemIcon SysIconFavorites  = mkProps "systemIcon" "favorites"
systemIcon SysIconFeatured   = mkProps "systemIcon" "featured"
systemIcon SysIconHistory    = mkProps "systemIcon" "history"
systemIcon SysIconMore       = mkProps "systemIcon" "more"
systemIcon SysIconMostRecent = mkProps "systemIcon" "most-recent"
systemIcon SysIconMostViewed = mkProps "systemIcon" "most-viewed"
systemIcon SysIconRecents    = mkProps "systemIcon" "recents"
systemIcon SysIconSearch     = mkProps "systemIcon" "search"
systemIcon SysIconTopRated   = mkProps "systemIcon" "top-rated"


data EllipsizeMode
  = EMHead
  | EMMiddle
  | EMTail
  | EMClip


ellipsizeMode :: forall action. EllipsizeMode -> Prop action
ellipsizeMode EMHead   = mkProps "ellipsizeMode" "head"
ellipsizeMode EMMiddle = mkProps "ellipsizeMode" "middle"
ellipsizeMode EMTail   = mkProps "ellipsizeMode" "tail"
ellipsizeMode EMClip   = mkProps "ellipsizeMode" "clip"


selectable :: forall action. Boolean -> Prop action
selectable = mkProps "selectable"


adjustsFontSizeToFit :: forall action. Boolean -> Prop action
adjustsFontSizeToFit = mkProps "adjustsFontSizeToFit"


allowFontScaling :: forall action. Boolean -> Prop action
allowFontScaling = mkProps "allowFontScaling"


minimumFontScale :: forall action. Number -> Prop action
minimumFontScale = mkProps "minimumFontScale"


suppressHighlighting :: forall action. Boolean -> Prop action
suppressHighlighting = mkProps "suppressHighlighting"


data AutoCapitalize
  = AutoCapNone
  | AutoCapSentences
  | AutoCapWords
  | AutoCapCharacters


autoCapitalize :: forall action. AutoCapitalize -> Prop action
autoCapitalize AutoCapNone       = mkProps "autoCapitalize" "none"
autoCapitalize AutoCapSentences  = mkProps "autoCapitalize" "sentences"
autoCapitalize AutoCapWords      = mkProps "autoCapitalize" "words"
autoCapitalize AutoCapCharacters = mkProps "autoCapitalize" "characters"


autoCorrect :: forall action. Boolean -> Prop action
autoCorrect = mkProps "autoCorrect"


autoFocus :: forall action. Boolean -> Prop action
autoFocus = mkProps "autoFocus"


blurOnSubmit :: forall action. Boolean -> Prop action
blurOnSubmit = mkProps "blurOnSubmit"


defaultValue :: forall action. String -> Prop action
defaultValue = mkProps "defaultValue"


editable :: forall action. Boolean -> Prop action
editable = mkProps "editable"

data KeyBoardType
  = KBTDefault
  | KBTEmailAddress
  | KBTNumeric
  | KBTPhonePad
  | KBTAsciiCapable
  | KBTNumbersAndPunctuation
  | KBTUrl
  | KBTNumberPad
  | KBTNamePhonePad
  | KBTDecimalPad
  | KBTTwitter
  | KBTWebSearch


keyboardType :: forall action. KeyBoardType -> Prop action
keyboardType KBTDefault               = mkProps "keyboardType" "default"
keyboardType KBTEmailAddress          = mkProps "keyboardType" "email-address"
keyboardType KBTNumeric               = mkProps "keyboardType" "numeric"
keyboardType KBTPhonePad              = mkProps "keyboardType" "phone-pad"
keyboardType KBTAsciiCapable          = mkProps "keyboardType" "ascii-capable"
keyboardType KBTNumbersAndPunctuation = mkProps "keyboardType" "numbers-and-punctuation"
keyboardType KBTUrl                   = mkProps "keyboardType" "url"
keyboardType KBTNumberPad             = mkProps "keyboardType" "number-pad"
keyboardType KBTNamePhonePad          = mkProps "keyboardType" "name-phone-pad"
keyboardType KBTDecimalPad            = mkProps "keyboardType" "decimal-pad"
keyboardType KBTTwitter               = mkProps "keyboardType" "twitter"
keyboardType KBTWebSearch             = mkProps "keyboardType" "web-search"


maxLength :: forall action. Int -> Prop action
maxLength = mkProps "maxLength"


multiline :: forall action. Boolean -> Prop action
multiline = mkProps "multiline"



placeholder :: forall action. String -> Prop action
placeholder = mkProps "placeholder"


placeholderTextColor :: forall action. Color -> Prop action
placeholderTextColor c = mkProps "placeholderTextColor" (show c)


data ReturnKeyType
  = RKTDone
  | RKTGo
  | RKTNext
  | RKTSearch
  | RKTSend
  | RKTNone
  | RKTPrevious
  | RKTDefault
  | RKTEmergencyCall
  | RKTGoogle
  | RKTJoin
  | RKTRoute
  | RKTYahoo


returnKeyType :: forall action. ReturnKeyType -> Prop action
returnKeyType RKTDone           = mkProps "returnKeyType" "done"
returnKeyType RKTGo             = mkProps "returnKeyType" "go"
returnKeyType RKTNext           = mkProps "returnKeyType" "next"
returnKeyType RKTSearch         = mkProps "returnKeyType" "search"
returnKeyType RKTSend           = mkProps "returnKeyType" "send"
returnKeyType RKTNone           = mkProps "returnKeyType" "none"
returnKeyType RKTPrevious       = mkProps "returnKeyType" "previous"
returnKeyType RKTDefault        = mkProps "returnKeyType" "default"
returnKeyType RKTEmergencyCall  = mkProps "returnKeyType" "emergency-call"
returnKeyType RKTGoogle         = mkProps "returnKeyType" "google"
returnKeyType RKTJoin           = mkProps "returnKeyType" "join"
returnKeyType RKTRoute          = mkProps "returnKeyType" "route"
returnKeyType RKTYahoo          = mkProps "returnKeyType" "yahoo"



secureTextEntry :: forall action. Boolean -> Prop action
secureTextEntry = mkProps "secureTextEntry"


selectTextOnFocus :: forall action. Boolean -> Prop action
selectTextOnFocus = mkProps "selectTextOnFocus"


selectionColor :: forall action. Color -> Prop action
selectionColor c = mkProps "selectionColor" (show c)



valueString :: forall action. String -> Prop action
valueString = mkProps "value"


inlineImageLeft :: forall action. String -> Prop action
inlineImageLeft = mkProps "inlineImageLeft"


inlineImagePadding :: forall action. Int -> Prop action
inlineImagePadding = mkProps "inlineImagePadding"


numberOfLines :: forall action. Int -> Prop action
numberOfLines = mkProps "numberOfLines"


returnKeyLabel :: forall action. String -> Prop action
returnKeyLabel = mkProps "returnKeyLabel"


underlineColorAndroid :: forall action. Color -> Prop action
underlineColorAndroid c = mkProps "underlineColorAndroid" (show c)


data ClearButtonMode
 = CBMNever
 | CBMWhileEditing
 | CBMUnlessEditing
 | CBMAlways


clearButtonMode :: forall action. ClearButtonMode -> Prop action
clearButtonMode CBMNever         = mkProps "clearButtonMode" "never"
clearButtonMode CBMWhileEditing  = mkProps "clearButtonMode" "while-editing"
clearButtonMode CBMUnlessEditing = mkProps "clearButtonMode" "unless-editing"
clearButtonMode CBMAlways        = mkProps "clearButtonMode" "always"


clearTextOnFocus :: forall action. Boolean -> Prop action
clearTextOnFocus = mkProps "clearTextOnFocus"


enablesReturnKeyAutomatically :: forall action. Boolean -> Prop action
enablesReturnKeyAutomatically = mkProps "enablesReturnKeyAutomatically"


data KeyBoardAppearance
  = KBADefault
  | KBALight
  | KBADark


keyboardAppearance :: forall action. KeyBoardAppearance -> Prop action
keyboardAppearance KBADefault = mkProps "keyboardAppearance" "default"
keyboardAppearance KBALight   = mkProps "keyboardAppearance" "light"
keyboardAppearance KBADark    = mkProps "keyboardAppearance" "dark"


-- TODO: implement DocumentSelectionState through FFI
-- selectionState PropTypes.instanceOf(DocumentSelectionState) #
selectionState :: forall action. Boolean -> Prop action
selectionState = mkProps "selectionState"


data ActionPropType = ActionPropType
  { title :: String
  , icon :: String -- optionl
  , show :: String -- implement enum
  , showWithText :: Boolean
  }

data ShowProp
  = Always
  | IfRoom
  | Never

-- actions ReactPropTypes.arrayOf(ReactPropTypes.shape({ title: ReactPropTypes.string.isRequired, icon: optionalImageSource, show: ReactPropTypes.oneOf(['always', 'ifRoom', 'never']), showWithText: ReactPropTypes.bool })) #
actions :: forall action. Boolean -> Prop action
actions = mkProps "actions"


contentInsetEnd :: forall action. Int -> Prop action
contentInsetEnd = mkProps "contentInsetEnd"


contentInsetStart :: forall action. Int -> Prop action
contentInsetStart = mkProps "contentInsetStart"



rtl :: forall action. Boolean -> Prop action
rtl = mkProps "rtl"


subtitle :: forall action. String -> Prop action
subtitle = mkProps "subtitle"


subtitleColor :: forall action. Color -> Prop action
subtitleColor c = mkProps "subtitleColor" (show c)


title :: forall action. String -> Prop action
title = mkProps "title"


titleColor :: forall action. Color -> Prop action
titleColor c = mkProps "titleColor" (show c)


underlayColor :: forall action. Color -> Prop action
underlayColor c = mkProps "underlayColor" (show c)


-- background backgroundPropType #
background :: forall action. Boolean -> Prop action
background = mkProps "background"

useForeground :: forall action. Boolean -> Prop action
useForeground = mkProps "useForeground"


activeOpacity :: forall action. Number -> Prop action
activeOpacity = mkProps "activeOpacity"


accessibilityComponentType :: forall action. AccessibilityComponentTypeProp -> Prop action
accessibilityComponentType ACTPNone             = mkProps "accessibilityComponentType" "none"
accessibilityComponentType Button               = mkProps "accessibilityComponentType" "button"
accessibilityComponentType RadiobuttonChecked   = mkProps "accessibilityComponentType" "radiobutton_checked"
accessibilityComponentType RadiobuttonUnchecked = mkProps "accessibilityComponentType" "radiobutton_unchecked"



-- TODO: implement accessibilityTraits
-- accessibilityTraits View.AccessibilityTraits, [object Object] #
-- accessibilityTraits :: Array  AccessibilityTraitsProp -> Prop action
-- accessibilityTraits = mkProps "accessibilityTraits"


accessible :: forall action. Boolean -> Prop action
accessible = mkProps "accessible"


delayLongPress :: forall action. Int -> Prop action
delayLongPress = mkProps "delayLongPress"


delayPressIn :: forall action. Int -> Prop action
delayPressIn = mkProps "delayPressIn"


delayPressOut :: forall action. Int -> Prop action
delayPressOut = mkProps "delayPressOut"


disabled :: forall action. Boolean -> Prop action
disabled = mkProps "disabled"


hitSlop :: forall action. Box -> Prop action
hitSlop = mkProps "hitSlop"


pressRetentionOffset :: forall action. Box -> Prop action
pressRetentionOffset = mkProps "pressRetentionOffset"


initialPage :: forall action. Int -> Prop action
initialPage = mkProps "initialPage"


data KeyboardDismissMode
  = KDMNone
  | KDMInteractive
  | KDMOnDrag


keyboardDismissMode :: forall action. KeyboardDismissMode -> Prop action
keyboardDismissMode KDMNone        = mkProps "keyboardDismissMode" "none"
keyboardDismissMode KDMInteractive = mkProps "keyboardDismissMode" "interactive"
keyboardDismissMode KDMOnDrag      = mkProps "keyboardDismissMode" "on-drag"


pageMargin :: forall action. Int -> Prop action
pageMargin = mkProps "pageMargin"


scrollEnabled :: forall action. Boolean -> Prop action
scrollEnabled = mkProps "scrollEnabled"


renderNavigationView :: forall action. Element action -> Prop action
renderNavigationView = mkFnProps "renderNavigationView"

renderFooter :: forall action. Element action -> Prop action
renderFooter = mkFnProps "renderFooter"

renderHeader :: forall action. Element action -> Prop action
renderHeader = mkFnProps "renderHeader"

data ImageSource
  = ImgURI {uri :: String}
  | Local String
  | URIs (Array {uri :: String, width::Int, height :: Int})

sourceWithName :: forall action. String -> ImageSource -> Prop action
sourceWithName name (ImgURI uri)  = mkProps name  uri
sourceWithName name (URIs aryuri) = mkProps name aryuri
sourceWithName name (Local path)  = mkProps name (require path)

source :: forall action. ImageSource -> Prop action
source = sourceWithName "source"

defaultSource :: forall action. ImageSource -> Prop action
defaultSource = sourceWithName "defaultSource"

progressImage :: forall action. ImageSource -> Prop action
progressImage = sourceWithName "progressImage"

trackImage :: forall action. ImageSource -> Prop action
trackImage = sourceWithName "trackImage"

minimumTrackImage :: forall action. ImageSource -> Prop action
minimumTrackImage = sourceWithName "minimumTrackImage"

maximumTrackImage :: forall action. ImageSource -> Prop action
maximumTrackImage = sourceWithName "maximumTrackImage"

thumbImage :: forall action. ImageSource -> Prop action
thumbImage = sourceWithName "thumbImage"

icon :: forall action. ImageSource -> Prop action
icon = sourceWithName "icon"

overflowIcon :: forall action. ImageSource -> Prop action
overflowIcon = sourceWithName "overflowIcon"

navIcon :: forall action. ImageSource -> Prop action
navIcon = sourceWithName "navIcon"


logo :: forall action. ImageSource -> Prop action
logo = sourceWithName "logo"


selectedIcon :: forall action. ImageSource -> Prop action
selectedIcon = sourceWithName "selectedIcon"

defaultValueNode :: forall action. Element action -> Prop action
defaultValueNode = mkProps "defaultValue"

newtype TISelection = TISelection {start :: Int, end :: Int}

selection :: forall action. TISelection -> Prop action
selection = mkProps "selection"


foreign import require :: forall a. String -> a


data DataDetectorType
  = DDTPhoneNumber
  | DDTLink
  | DDTAddress
  | DDTCalendarEvent
  | DDTNone
  | DDTAll


instance showDataDetectorType :: Show DataDetectorType where
  show DDTPhoneNumber   = "phoneNumber"
  show DDTLink          = "link"
  show DDTAddress       = "address"
  show DDTCalendarEvent = "calendarEvent"
  show DDTNone          = "none"
  show DDTAll           = "all"


dataDetectorTypes :: forall action. DataDetectorType -> Prop action
dataDetectorTypes d = mkProps "dataDetectorTypes" (show d)


dataDetectorTypesAry :: forall action. Array DataDetectorType -> Prop action
dataDetectorTypesAry d = mkProps "dataDetectorTypes" (map show d)
