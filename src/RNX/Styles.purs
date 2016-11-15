module RNX.Styles where

import RNX.Components (Prop)
import RNX.Props (mkProps)
import RNX.Color (Color)
import Prelude

foreign import data StyleSheet :: *
foreign import data StyleProp :: *

type StyleId = Int
data Style = Style String (Array StyleProp)
type StyleSheet' = Array {name:: String, styles:: Array StyleProp}

foreign import _createStyleSheet :: StyleSheet' -> StyleSheet

createStyleSheet :: Array Style -> StyleSheet
createStyleSheet s =
  _createStyleSheet $ map getStyle s
  where
    getStyle (Style name styleProps) = {name: name, styles: styleProps}


-- TODO: make this type safe!
foreign import getStyleId :: StyleSheet -> String -> StyleId

foreign import mkStyleProp :: forall val. String -> val -> StyleProp

style :: forall action. StyleId -> Prop action
style = mkProps "style"

styles :: forall action. Array StyleId -> Prop action
styles = mkProps "style"

--------- Styles ---------------

data Visibility = Visible | Hidden

-- A

data AlignItems
  = AlignItemsFlexStart
  | AlignItemsFlexEnd
  | AlignItemsCenter
  | AlignItemsStretch

alignItems :: AlignItems -> StyleProp
alignItems AlignItemsFlexStart = mkStyleProp "alignItems" "flex-start"
alignItems AlignItemsFlexEnd   = mkStyleProp "alignItems" "flex-end"
alignItems AlignItemsCenter    = mkStyleProp "alignItems" "center"
alignItems AlignItemsStretch   = mkStyleProp "alignItems" "stretch"

data AlignSelf
  = AlignSelfAuto
  | AlignSelfFlexStart
  | AlignSelfFlexEnd
  | AlignSelfCenter
  | AlignSelfStretch

alignSelf :: AlignSelf -> StyleProp
alignSelf AlignSelfAuto      = mkStyleProp "alignSelf" "auto"
alignSelf AlignSelfFlexStart = mkStyleProp "alignSelf" "flex-start"
alignSelf AlignSelfFlexEnd   = mkStyleProp "alignSelf" "flex-end"
alignSelf AlignSelfCenter    = mkStyleProp "alignSelf" "center"
alignSelf AlignSelfStretch   = mkStyleProp "alignSelf" "stretch"

-- B

backfaceVisibility :: Visibility -> StyleProp
backfaceVisibility Visible = mkStyleProp "backfaceVisibility" "visible"
backfaceVisibility Hidden  = mkStyleProp "backfaceVisibility" "hidden"

backgroundColor :: Color -> StyleProp
backgroundColor c = mkStyleProp "backgroundColor" (show c)


backgroundVisibility :: Visibility -> StyleProp
backgroundVisibility Visible = mkStyleProp "backgroundVisibility" "visible"
backgroundVisibility Hidden  = mkStyleProp "backgroundVisibility" "hidden"

borderBottomColor :: Color -> StyleProp
borderBottomColor c = mkStyleProp "borderBottomColor" (show c)

borderBottomRightRadius :: Int -> StyleProp
borderBottomRightRadius = mkStyleProp "borderBottomRightRadius"

borderBottomWidth :: Int -> StyleProp
borderBottomWidth = mkStyleProp "borderBottomWidth"

borderColor :: Color -> StyleProp
borderColor c = mkStyleProp "borderColor" (show c)

borderLeftColor :: Color -> StyleProp
borderLeftColor c = mkStyleProp "borderLeftColor" (show c)

borderLeftWidth :: Int -> StyleProp
borderLeftWidth = mkStyleProp "borderLeftWidth"

borderRadius :: Int -> StyleProp
borderRadius = mkStyleProp "borderRadius"

borderRightColor :: Color -> StyleProp
borderRightColor c = mkStyleProp "borderRightColor" (show c)

borderRightWidth :: Int -> StyleProp
borderRightWidth = mkStyleProp "borderRightWidth"

data BorderStyle
  = BorderSolid
  | BorderDotted
  | BorderDashed

borderStyle :: BorderStyle -> StyleProp
borderStyle BorderSolid  = mkStyleProp "borderStyle" "solid"
borderStyle BorderDotted = mkStyleProp "borderStyle" "dotted"
borderStyle BorderDashed = mkStyleProp "borderStyle" "dashed"

borderTopLeftRadius :: Int -> StyleProp
borderTopLeftRadius = mkStyleProp "borderTopLeftRadius"

borderTopRightRadius :: Int -> StyleProp
borderTopRightRadius = mkStyleProp "borderTopRightRadius"

borderTopWidth :: Int -> StyleProp
borderTopWidth = mkStyleProp "borderTopWidth"

borderWidth :: Int -> StyleProp
borderWidth = mkStyleProp "borderWidth"

bottom :: Int -> StyleProp
bottom = mkStyleProp "bottom"

-- C

color :: Color -> StyleProp
color c = mkStyleProp "color" (show c)


-- E

elevation :: Int -> StyleProp
elevation = mkStyleProp "elevation"

-- F

flex :: Int -> StyleProp
flex = mkStyleProp "flex"

flexBasis :: Int -> StyleProp
flexBasis = mkStyleProp "flexBasis"

data FlexDirection
  = Row
  | Column
  | RowReverse
  | ColumnReverse

flexDirection :: FlexDirection -> StyleProp
flexDirection Row           = mkStyleProp "flexDirection" "row"
flexDirection Column        = mkStyleProp "flexDirection" "column"
flexDirection ColumnReverse = mkStyleProp "flexDirection" "column-reverse"
flexDirection RowReverse    = mkStyleProp "flexDirection" "row-reverse"

flexGrow :: Int -> StyleProp
flexGrow = mkStyleProp "flexGrow"

flexShrink :: Int -> StyleProp
flexShrink = mkStyleProp "flexShrink"

data WrapProp = Wrap | NoWrap

flexWrap :: WrapProp -> StyleProp
flexWrap Wrap   = mkStyleProp "flexWrap" "wrap"
flexWrap NoWrap = mkStyleProp "flexWrap" "nowrap"

fontFamily :: String -> StyleProp
fontFamily = mkStyleProp "fontFamily"

fontSize :: Int -> StyleProp
fontSize = mkStyleProp "fontSize"

data FontStyle = FontNormal | FontItalic

fontStyle :: FontStyle -> StyleProp
fontStyle FontNormal = mkStyleProp "fontStyle" "normal"
fontStyle FontItalic = mkStyleProp "fontStyle" "italic"

data FontVariant
  = SmallCap
  | OldStyleNum
  | LiningNum
  | TabularNum
  | ProportionalNum

fontVariant :: Array FontVariant -> StyleProp
fontVariant ary = mkStyleProp "fontVariant" (map fontVariantNum ary)

fontVariantNum :: FontVariant -> String
fontVariantNum SmallCap        = "small-caps"
fontVariantNum OldStyleNum     = "oldstyle-nums"
fontVariantNum LiningNum       = "lining-nums"
fontVariantNum TabularNum      = "tabular-nums"
fontVariantNum ProportionalNum = "proportional-nums"

data FontWeight
  = WeightNormal
  | WeightBold
  | Weight100
  | Weight200
  | Weight300
  | Weight400
  | Weight500
  | Weight600
  | Weight700
  | Weight800
  | Weight900

fontWeight :: FontWeight -> StyleProp
fontWeight WeightNormal = mkStyleProp "fontWeight" "normal"
fontWeight WeightBold   = mkStyleProp "fontWeight" "bold"
fontWeight Weight100    = mkStyleProp "fontWeight" "100"
fontWeight Weight200    = mkStyleProp "fontWeight" "200"
fontWeight Weight300    = mkStyleProp "fontWeight" "300"
fontWeight Weight400    = mkStyleProp "fontWeight" "400"
fontWeight Weight500    = mkStyleProp "fontWeight" "500"
fontWeight Weight600    = mkStyleProp "fontWeight" "600"
fontWeight Weight700    = mkStyleProp "fontWeight" "700"
fontWeight Weight800    = mkStyleProp "fontWeight" "800"
fontWeight Weight900    = mkStyleProp "fontWeight" "900"

-- H

height :: Int -> StyleProp
height = mkStyleProp "height"

--J

data JustifyContent
  = JustifyContentFlexStart
  | JustifyContentFlexEnd
  | JustifyContentCenter
  | JustifyContentSpaceBetween
  | JustifyContentSpaceAround

justifyContent :: JustifyContent -> StyleProp
justifyContent JustifyContentFlexStart    = mkStyleProp "justifyContent" "flex-start"
justifyContent JustifyContentFlexEnd      = mkStyleProp "justifyContent" "flex-end"
justifyContent JustifyContentCenter       = mkStyleProp "justifyContent" "center"
justifyContent JustifyContentSpaceBetween = mkStyleProp "justifyContent" "space-between"
justifyContent JustifyContentSpaceAround  = mkStyleProp "justifyContent" "space-around"

-- L

left :: Int -> StyleProp
left = mkStyleProp "left"

letterSpacing :: Int -> StyleProp
letterSpacing = mkStyleProp "letterSpacing"

lineHeight :: Int -> StyleProp
lineHeight = mkStyleProp "lineHeight"

-- M

margin :: Int -> StyleProp
margin = mkStyleProp "margin"

marginBottom :: Int -> StyleProp
marginBottom = mkStyleProp "marginBottom"

marginHorizontal :: Int -> StyleProp
marginHorizontal = mkStyleProp "marginHorizontal"

marginLeft :: Int -> StyleProp
marginLeft = mkStyleProp "marginLeft"

marginRight :: Int -> StyleProp
marginRight = mkStyleProp "marginRight"

marginTop :: Int -> StyleProp
marginTop = mkStyleProp "marginTop"

marginVertical :: Int -> StyleProp
marginVertical = mkStyleProp "marginVertical"

maxHeight :: Int -> StyleProp
maxHeight = mkStyleProp "maxHeight"

maxWidth :: Int -> StyleProp
maxWidth = mkStyleProp "maxWidth"

minHeight :: Int -> StyleProp
minHeight = mkStyleProp "minHeight"

minWidth :: Int -> StyleProp
minWidth = mkStyleProp "minWidth"

-- O

opacity :: Int -> StyleProp
opacity = mkStyleProp "opacity"

overflow :: Visibility -> StyleProp
overflow Visible = mkStyleProp "overflow" "visible"
overflow Hidden  = mkStyleProp "overflow" "hidden"

overlayColor :: String -> StyleProp
overlayColor = mkStyleProp "overlayColor"

-- P

padding :: Int -> StyleProp
padding = mkStyleProp "padding"

paddingBottom :: Int -> StyleProp
paddingBottom = mkStyleProp "paddingBottom"

paddingHorizontal :: Int -> StyleProp
paddingHorizontal = mkStyleProp "paddingHorizontal"

paddingLeft :: Int -> StyleProp
paddingLeft = mkStyleProp "paddingLeft"

paddingRight :: Int -> StyleProp
paddingRight = mkStyleProp "paddingRight"

paddingTop :: Int -> StyleProp
paddingTop = mkStyleProp "paddingTop"

paddingVertical :: Int -> StyleProp
paddingVertical = mkStyleProp "paddingVertical"

data Position = Absolute | Relative

position :: Position -> StyleProp
position Absolute = mkStyleProp "position" "absolute"
position Relative = mkStyleProp "position" "relative"

-- R

right :: Int -> StyleProp
right = mkStyleProp "right"

-- S

shadowColor :: Color -> StyleProp
shadowColor c = mkStyleProp "shadowColor" (show c)

shadowOffset :: {width :: Int, height :: Int} -> StyleProp
shadowOffset = mkStyleProp "shadowOffset"

shadowOpacity :: Int -> StyleProp
shadowOpacity = mkStyleProp "shadowOpacity"

shadowRadius :: Int -> StyleProp
shadowRadius = mkStyleProp "shadowRadius"

-- T

data TextAlign
  = TextAlignAuto
  | TextAlignLeft
  | TextAlignRight
  | TextAlignCenter
  | TextAlignJustify

textAlign :: TextAlign -> StyleProp
textAlign TextAlignAuto    = mkStyleProp "textAlign" "auto"
textAlign TextAlignLeft    = mkStyleProp "textAlign" "left"
textAlign TextAlignRight   = mkStyleProp "textAlign" "right"
textAlign TextAlignCenter  = mkStyleProp "textAlign" "center"
textAlign TextAlignJustify = mkStyleProp "textAlign" "justify"

data TextAlignVertical
  = TextAlignVerticalAuto
  | TextAlignVerticalTop
  | TextAlignVerticalBottom
  | TextAlignVerticalCenter

textAlignVertical :: TextAlignVertical -> StyleProp
textAlignVertical TextAlignVerticalAuto   = mkStyleProp "textAlignVertical" "auto"
textAlignVertical TextAlignVerticalTop    = mkStyleProp "textAlignVertical" "top"
textAlignVertical TextAlignVerticalBottom = mkStyleProp "textAlignVertical" "bottom"
textAlignVertical TextAlignVerticalCenter = mkStyleProp "textAlignVertical" "center"

textDecorationColor :: Color -> StyleProp
textDecorationColor c = mkStyleProp "textDecorationColor" (show c)

data TextDecorationLine
  = None
  | Underline
  | LineThrough
  | UnderlineLineThrough

textDecorationLine :: TextDecorationLine -> StyleProp
textDecorationLine None                 = mkStyleProp "textDecorationLine" "none"
textDecorationLine Underline            = mkStyleProp "textDecorationLine" "underline"
textDecorationLine LineThrough          = mkStyleProp "textDecorationLine" "line-through"
textDecorationLine UnderlineLineThrough = mkStyleProp "textDecorationLine" "underline line-through"

data TextDecorationStyle
  = TextSolid
  | TextDouble
  | TextDotted
  | TextDashed

textDecorationStyle :: TextDecorationStyle -> StyleProp
textDecorationStyle TextSolid  = mkStyleProp "textDecorationStyle" "solid"
textDecorationStyle TextDouble = mkStyleProp "textDecorationStyle" "double"
textDecorationStyle TextDotted = mkStyleProp "textDecorationStyle" "dotted"
textDecorationStyle TextDashed = mkStyleProp "textDecorationStyle" "dashed"

textShadowColor :: Color -> StyleProp
textShadowColor c = mkStyleProp "textShadowColor" (show c)

textShadowOffset :: {width :: Int, height :: Int} -> StyleProp
textShadowOffset = mkStyleProp "textShadowOffset"

textShadowRadius :: Int -> StyleProp
textShadowRadius = mkStyleProp "textShadowRadius"

top :: Int -> StyleProp
top = mkStyleProp "top"

-- W

width :: Int -> StyleProp
width = mkStyleProp "width"

data WritingDirection
  = WritingDirectionAuto
  | WritingDirectionLtr
  | WritingDirectionRtl

writingDirection :: WritingDirection -> StyleProp
writingDirection WritingDirectionAuto = mkStyleProp "writingDirection" "auto"
writingDirection WritingDirectionLtr  = mkStyleProp "writingDirection" "ltr"
writingDirection WritingDirectionRtl  = mkStyleProp "writingDirection" "rtl"

-- Z

zIndex :: Int -> StyleProp
zIndex = mkStyleProp "zIndex"

-- TODO: Transform Props
-- TODO: resizeMode
