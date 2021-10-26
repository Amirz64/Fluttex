# Easy and fast coding using fluttex

### Add Fluttex to your project
`Fluttex: ^1.0.0`
### Import this code in your project
`import 'package:fluttex/fluttex.dart';`

### Easy Navigation

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
