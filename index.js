import { AppRegistry } from 'react-native';
import ScreenA from './ScreenA';

import Loadable from 'react-loadable';
import Loading from './Loading'

const LazyScreenB = Loadable({
  loader: () => import('./ScreenB'),
  loading: Loading,
})

const LazyScreenC = Loadable({
  loader: () => import('./ScreenC'),
  loading: Loading,
})

AppRegistry.registerComponent('ScreenA', () => ScreenA);
AppRegistry.registerComponent('ScreenB', () => LazyScreenB);
AppRegistry.registerComponent('ScreenC', () => LazyScreenC);
