'use strict';

var React = require('react');
var ReactNative = require('react-native');

exports.createElement = function(clazz) {
    return function(props) {
        return function(children) {
            var obj =
                { type: 'element',
                  clazz: clazz,
                  props: props,
                  children: children
                };
            console.log(JSON.stringify(obj));
            return obj;
            //React.createElement(clazz, props.length > 0 ? mkProps(props) : null, children);
        };
    };
};

exports.createElementOneChild = function(clazz) {
    return function(props) {
        return function(child) {
            //var elm = React.createElement(clazz, props.length > 0 ? mkProps(props) : null, child);
            var obj =
                { type: 'elementOneChild',
                  clazz: clazz,
                  props: props,
                  child: child
                };
            console.log(JSON.stringify(obj));
            return obj;
        };
    };
};

exports.createElementNoChild = function(clazz) {
    return function(props) {
        //var elm = React.createElement(clazz, props.length > 0 ? mkProps(props) : null, child);
        var obj =
            { type: 'elementNoChild',
              clazz: clazz,
              props: props
            };
        console.log(JSON.stringify(obj));
        return obj;
    };
};

var handler = function (key) {
    return function(action){
        var obj =
            { type: 'handler',
              key: key,
              action: action
            };
        console.log(JSON.stringify(obj));
        return obj;
    };

};

exports.handler = handler;
exports.handlerBool = handler;
exports.handlerUnit = handler;

exports.textElem = function(text) {
    return text;
};

exports.activityIndicatorClass        = ReactNative.ActivityIndicator;
exports.buttonClass                   = ReactNative.Button;
exports.datePickerIOSClass            = ReactNative.DatePickerIOS;
exports.drawerLayoutAndroidClass      = ReactNative.DrawerLayoutAndroid;
exports.imageClass                    = ReactNative.Image;
exports.keyboardAvoidingViewClass     = ReactNative.KeyboardAvoidingView;
exports.listViewClass                 = ReactNative.ListView;
exports.mapViewClass                  = ReactNative.MapView;
exports.modalClass                    = ReactNative.Modal;
exports.pickerClass                   = ReactNative.Picker;
exports.pickerItemClass               = ReactNative.Picker.Item;
exports.progressBarAndroidClass       = ReactNative.ProgressBarAndroid;
exports.progressViewIOSClass          = ReactNative.ProgressViewIOS;
exports.refreshControlClass           = ReactNative.RefreshControl;
exports.scrollViewClass               = ReactNative.ScrollView;
exports.segmentedControlIOSClass      = ReactNative.SegmentedControlIOS;
exports.sliderClass                   = ReactNative.Slider;
exports.statusBarClass                = ReactNative.StatusBar;
exports.snapshotViewIOSClass          = ReactNative.SnapshotViewIOS;
exports.switchClass                   = ReactNative.Switch;
exports.tabBarIOSClass                = ReactNative.TabBarIOS;
exports.tabBarIOSItemClass            = ReactNative.TabBarIOS.Item;
exports.textClass                     = ReactNative.Text;
exports.textInputClass                = ReactNative.TextInput;
exports.toolbarAndroidClass           = ReactNative.ToolbarAndroid;
exports.touchableHighlightClass       = ReactNative.TouchableHighlight;
exports.touchableNativeFeedbackClass  = ReactNative.TouchableNativeFeedback;
exports.touchableOpacityClass         = ReactNative.TouchableOpacity;
exports.touchableWithoutFeedbackClass = ReactNative.TouchableWithoutFeedback;
exports.viewClass                     = ReactNative.View;
exports.viewPagerAndroidClass         = ReactNative.ViewPagerAndroid;
exports.webViewClass                  = ReactNative.WebView;

// function mkProps(props) {
//     var result = {};
//     for (var i = 0, len = props.length; i < len; i++) {
//         var prop = props[i];
//         if (prop.type === 'prop'){
//             result[prop.key] = prop.val;
//         } else if (prop.type==='prop-function') {
//             result[prop.key] = function(){return val;};
//         }
//     }
//     return result;
// };


// :: (a -> b) -> Html a -> Html b
exports.forwardTo = function (parentAction) {
    return function (element) {
        //if (!html.props) return html;
        var childAction = element.parentAction;
        var action = parentAction;
        if (childAction) {
            action = function (a) {
                return parentAction(childAction(a));
            };
        }
        element['parentAction'] = action;
        return element;
    };
};


//TODO: work on this...
// :: (a -> b) -> Attribute a -> Attribute b
exports.mapAttribute = function (f) {
    return function (attr) {
        if (attr.type !== 'handler') {
            return attr;
        }
        return [attr[0], function(input, parentAction) {
            return attr[1](input, function(e) {
                return f(parentAction(e));
            });
        }];
    };
};
