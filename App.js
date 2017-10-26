import React, { Component } from 'react';
import { AppRegistry, StyleSheet, Text, View } from 'react-native';
import { StackNavigator } from 'react-navigation';
import SignUpForm from './pages/Login/SignUpForm';
import Login from './pages/Login/Login';
 
const Screens = StackNavigator({
  Login: {screen: Login, navigationOptions:{header:null},},
  SignUpForm: {screen: SignUpForm, navigationOptions:{header:null},},
});

export default class Gofer extends Component {
  render() {
    return <Screens/>;
  }
}