# Easy and Fast coding using Fluttex

##### Fluttex is a package that developed for flutter framework. flutter developers can use this package to reduce their coding time and make coding easier. Fluttex include limited feature and it maybe enhanced features within time.

## Features
- [Easy Navigation](#easy-navigation)
- [Modal bottom sheet](#modal-bottm-sheet)
- [Snack bar](#snack-bar)
- [Material banner](#material-banner)
 -----
- [Installation and using Fluttex](#installation-and-using-fluttex)
- [Developing information](#developing-information)


## Easy Navigation

#### Instead of :
```Dart
Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home()));
```

#### Use this :
```Dart
go(context, Home());
```
#### Also you can enter your route name :
```Dart
go(context, 'home');
```



#### Instead of :
```Dart
Navigator.of(context).pop();
```
#### Use this :
```Dart
goBack(context);
```

#### All Navigation modes : 
```Dart
// push
go(context, Home());
go(context, 'home'); 

// push replacement
goReplace(context, Home());
goReplace(context, 'home');

// push and remove until
goRemove(context, Home());
goRemove(context, 'home');

// pop
goBack(context);

```

## Modal bottm sheet

#### Show modal bottom sheet easily :
```Dart
onPressed: () {
 modalBottomSheet(context: context);
}
```
##### For example :
```Dart
modalBottomSheet(
 context: context,
 topBorderRadius: 25,
 height: 300,
 child: Column(
  children: [
  // Your Widgets
  ],
));
              
```
##### Result : 
 <p align="right">
 
 <img src="screens/m1.png"  width="25%">


 </p>



## Snack bar


## Material banner

## Installation and using Fluttex


### Add Fluttex to pubspec.yaml
`Fluttex: ^1.0.0`
### Import this code in your project
```Dart
import 'package:fluttex/fluttex.dart';
```

## Developing information
