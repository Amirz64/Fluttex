# Easy and Fast coding using Fluttex

### Add Fluttex to pubspec.yaml
`Fluttex: ^1.0.0`
### Import this code in your project
```Dart
import 'package:fluttex/fluttex.dart';
```

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
