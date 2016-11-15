'use strict';

exports.mkProps = function(key) {
    return function(val){
        var obj = {
            type: 'prop',
            key: key,
            val: val
        };
        console.log(JSON.stringify(obj));
        return obj;
    };
};

exports.mkFnProps = function(key) {
    return function(val){
        var obj = {
            type: 'prop-function',
            key: key,
            val: val
        };
        console.log(JSON.stringify(obj));
        return obj;
    };
};

var UIManager = require('UIManager');
var DrawerConsts = UIManager.AndroidDrawerLayout.Constants;

exports.dPLeft = DrawerConsts.DrawerPosition.Left;
exports.dPRight = DrawerConsts.DrawerPosition.Right;

var RefreshLayoutConsts = UIManager.AndroidSwipeRefreshLayout.Constants;


exports.refreshControlSizeDefault = RefreshLayoutConsts.SIZE.DEFAULT;
exports.refreshControlSizeLarge = RefreshLayoutConsts.SIZE.LARGE;

exports.require = require;
