import React, { Component } from 'react';
import {
  View,
  Text,
  NativeModules,
  TouchableOpacity,
  AppRegistry,
} from 'react-native';
import styles from './styles';

class ScreenB extends Component {
  openScreenC = () => {
    NativeModules.NavigationBridge.push('ScreenC');
  };

  render() {
    return (
      <View style={styles.main}>
        <Text style={[styles.text, styles.heading]}>
          Screen B
        </Text>
        <TouchableOpacity onPress={this.openScreenC}>
          <View style={styles.button}>
            <Text style={[styles.text, styles.white]}>Open screen C</Text>
          </View>
        </TouchableOpacity>
      </View>
    );
  }
}

export default ScreenB;
