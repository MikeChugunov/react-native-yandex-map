# react-native-yandex-map

## Getting started

`$ npm install react-native-yandex-map --save`

### Mostly automatic installation

`$ react-native link react-native-yandex-map`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-yandex-map` and add `YandexMap.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libYandexMap.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.simbirsoft.RNYandexMap.YandexMapPackage;` to the imports at the top of the file
  - Add `new YandexMapPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-yandex-map'
  	project(':react-native-yandex-map').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-yandex-map/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-yandex-map')
  	```


## Usage
```javascript
import YandexMap from 'react-native-yandex-map';

// TODO: What to do with the module?
YandexMap;
```
