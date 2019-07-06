import React from 'react';
import { View, Text } from 'react-native';
import styles from './styles';

const Loading = () => (
  <View style={styles.main}>
    <Text style={[styles.text, styles.heading]}>
      Loading...
    </Text>
  </View>
);

export default Loading;
