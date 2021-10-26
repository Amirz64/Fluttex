# Easy and Fast coding using Fluttex

## Features
- [Easy Navigation](#easy-navigation)
- [Modal bottom sheet](#modal-bottm-sheet)

### Add Fluttex to pubspec.yaml
`Fluttex: ^1.0.0`
### Import this code in your project
```Dart
import 'package:fluttex/fluttex.dart';
```



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
 topBorderRadius: 15,
 color: Colors.white,
 child: Column(
 // Your Widgets
 ));
              
```
