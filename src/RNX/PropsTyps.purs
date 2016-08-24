module RNX.PropsTypes where


data PointerEventsProp = None | BoxNone | Auto | BoxOnly

data AccessibilityComponentTypeProp =  Button | RadiobuttonChecked | RadiobuttonUnchecked
-- need to add None

data AccessibilityLiveRegionProp =  Polite | Assertive
-- need to add None

data ImportantForAccessibilityProp = Yes | No | NoHideDescenDants
-- need to add Auto

data AccessibilityTraitsProp = Link | Header | Search | Image | Selected | Plays | Key | Text | Summary | Disabled | FrequentUpdates | StartsMedia | Adjustable | AllowsDirectInteraction | PageTurn
-- need to add None, Button