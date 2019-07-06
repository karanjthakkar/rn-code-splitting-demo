import React, { Component } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  AppRegistry,
} from 'react-native';
import styles from './styles';

class ScreenC extends Component {
  render() {
    return (
      <View style={styles.main}>
        <Text style={[styles.text, styles.heading]}>
          Screen C
        </Text>
      </View>
    );
  }
}

export default ScreenC;
