'use strict';

// module ReactNative.Components

exports.activityIndicatorClass = require('react-native').ActivityIndicator
exports.activityIndicatorIOSClass = require('react-native').ActivityIndicatorIOS
// exports.artClass = require('react-native').ART
exports.datePickerIOSClass = require('react-native').DatePickerIOS
exports.drawerLayoutAndroidClass = require('react-native').DrawerLayoutAndroid
exports.imageClass = require('react-native').Image
// exports.imageEditorClass = require('react-native').ImageEditor
// exports.imageStoreClass = require('react-native').ImageStore
// exports.keyboardAvoidingViewClass = require('react-native').KeyboardAvoidingView
exports.listViewClass = require('react-native').ListView
exports.mapViewClass = require('react-native').MapView
exports.modalClass = require('react-native').Modal
exports.navigatorClass = require('react-native').Navigator
exports.navigatorIOSClass = require('react-native').NavigatorIOS
exports.pickerClass = require('react-native').Picker
exports.pickerIOSClass = require('react-native').PickerIOS
exports.progressBarAndroidClass = require('react-native').ProgressBarAndroid
exports.progressViewIOSClass = require('react-native').ProgressViewIOS
exports.scrollViewClass = require('react-native').ScrollView
exports.segmentedControlIOSClass = require('react-native').SegmentedControlIOS
exports.sliderClass = require('react-native').Slider
exports.sliderIOSClass = require('react-native').SliderIOS
exports.snapshotViewIOSClass = require('react-native').SnapshotViewIOS
exports.switchClass = require('react-native').Switch
// exports.recyclerViewBackedScrollViewClass = require('react-native').RecyclerViewBackedScrollView
exports.refreshControlClass = require('react-native').RefreshControl
exports.statusBarClass = require('react-native').StatusBar
// exports.swipeableListViewClass = require('react-native').SwipeableListView
exports.switchClass = require('react-native').Switch
exports.switchAndroidClass = require('react-native').SwitchAndroid
exports.switchIOSClass = require('react-native').SwitchIOS
exports.tabBarIOSClass = require('react-native').TabBarIOS
exports.tabBarIOSItemClass = require('react-native').TabBarIOS.Item
exports.textClass = require('react-native').Text
exports.textInputClass = require('react-native').TextInput
// exports.toastAndroidClass = require('react-native').ToastAndroid
exports.toolbarAndroidClass = require('react-native').ToolbarAndroid
// exports.touchableClass = require('react-native').Touchable
exports.touchableHighlightClass = require('react-native').TouchableHighlight
exports.touchableNativeFeedbackClass = require('react-native').TouchableNativeFeedback
exports.touchableOpacityClass = require('react-native').TouchableOpacity
exports.touchableWithoutFeedbackClass = require('react-native').TouchableWithoutFeedback
exports.viewClass = require('react-native').View
exports.viewPagerAndroidClass = require('react-native').ViewPagerAndroid
exports.webViewClass = require('react-native').WebView

exports.listViewDataSource = function(dict){
  return function(items){
    var ReactNative = require('react-native');
    var ListView = ReactNative.ListView;
    return new ListView.DataSource({
      rowHasChanged: function(r1, r2){ return !dict.eq(r1)(r2); }
    }).cloneWithRows(items);
  }
}

exports.cloneWithRows = function(dataSource){
  return function(items){
    return dataSource.cloneWithRows(items);
  }
}

function mkProps(props) {
    var result = {};
    for (var i = 0, len = props.length; i < len; i++) {
        var prop = props[i];
        for (var key in prop) {
            if (prop.hasOwnProperty(key)) {
                result[key] = prop[key];
            }
        }
    }
    return result;
};

var createElement = function(clazz) {
    return function(props) {
        return function(children) {
            return React.createElement(clazz, props.length > 0 ? mkProps(props) : null, children);
        }
    }
};
exports.createElement = createElement;
exports.createElementOneChild = createElement;

exports.textElem = function(text) {
    return text;
};
