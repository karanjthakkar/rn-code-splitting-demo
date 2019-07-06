import { NativeModules } from 'react-native';

module.exports = function(moduleID, path) {
  return new Promise(async resolve => {
    const paths = path.split('/')
    const name = paths[paths.length - 1];
    await NativeModules.LazyLoader.load(name);

    resolve(__r.importAll(moduleID));
  });
};
