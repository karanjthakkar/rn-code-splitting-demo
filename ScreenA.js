import React, { Component } from 'react';
import {
  View,
  Text,
  NativeModules,
  TouchableOpacity,
} from 'react-native';
import styles from './styles';

class ScreenA extends Component {
  openScreenB = () => {
    NativeModules.NavigationBridge.push('ScreenB');
  };

  loadScreenB = async () => {
    await import('./ScreenB');
  }

  render() {
    return (
      <View style={styles.main}>
        <Text style={[styles.text, styles.heading]}>
          Screen A
        </Text>
        <TouchableOpacity onPress={this.openScreenB}>
          <View style={styles.button}>
            <Text style={[styles.text, styles.white]}>Open screen B</Text>
          </View>
        </TouchableOpacity>
        <TouchableOpacity onPress={this.loadScreenB}>
          <View style={styles.button}>
            <Text style={[styles.text, styles.white]}>Load screen B</Text>
          </View>
        </TouchableOpacity>
      </View>
    );
  }
}

export default ScreenA;
