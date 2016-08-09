'use strict';

// module RNX

exports.registerComponent = function(name){
  return function(component){
    return function(){
      require('react-native').AppRegistry.registerComponent(name, function(){ return component; });
    }
  }
}
