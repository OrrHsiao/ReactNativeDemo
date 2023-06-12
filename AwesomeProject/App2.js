/*
 * 作者：sunhongda
 * 文件：App.js  模块：imihome_rn  项目：imihome_rn
 * 上海创米科技有限公司  http://www.imilab.com/
 * Copyright (c) 2020
 */
import 'react-native-gesture-handler';
import React from 'react';
import {SafeAreaProvider, useSafeAreaInsets} from 'react-native-safe-area-context';
import {NavigationContainer} from '@react-navigation/native';
import {createStackNavigator} from '@react-navigation/stack';
import {StyleSheet} from "react-native";
import Page1 from "./Page1";
import App3 from "./App3";
import IMINativeImageView from "./IMINativeImageView";


class App2 extends React.Component {


  render() {
     console.log("App----------------------" + JSON.stringify(this.props));

    return (
      <SafeAreaProvider>

        {/*<IMINativeImageView/>*/}

        <NavigationContainer>

          <ScreenList props={this.props}/>

        </NavigationContainer>

      </SafeAreaProvider>
    );
  }
}

export default App2  ;

function ScreenList(nativeInitialParams) {

  console.log('App---------------------- ScreenList' + JSON.stringify(nativeInitialParams));

  global.EdgeInsets = useSafeAreaInsets();

  const {Navigator, Screen} = createStackNavigator();

  return <Navigator initialRouteName='Page1'
                    headerMode='none'
                    cardStyle={{backgroundColor: '#000007'}}>

    <Screen name='Page1' component={Page1}
            initialParams={nativeInitialParams.props}/>

    <Screen name='App3' component={App3}/>

  </Navigator>;
}


const styles = StyleSheet.create({

  tab: {
    flex: 1,
    textAlign: 'center',
    color:'#0000609',
    fontSize: 15,
    textShadowColor:'#0000609'
  }
});

