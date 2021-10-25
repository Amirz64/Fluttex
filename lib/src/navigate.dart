import 'package:flutter/material.dart';

/// Using [go] for navigate to another route/screen
/// 
/// [go] using push or pushNamed
/// 
/// [go] function include 2 arguments : 
/// First is BuildContext.
/// Second is dynamic.
/// 
/// [name] is dynamic but you should enter valid Widget(screen) or String.
/// 
/// If you enter String, be sure that your route is defined in the MaterialApp
void go(
  BuildContext context,
  dynamic name,
) {
  if (name is Widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => name));
  } else if (name is String) {
    Navigator.of(context).pushNamed(name);
  } else {
    throw const FormatException(
        'Please enter a valid Widget(Screen) or RouteName(String)');
  }
}


/// [goBack] using pop
void goBack(BuildContext context) {
  Navigator.of(context).pop();
  
}


/// [goReplace] using pushReplacement or pushReplacementNamed
/// 
/// [goReplace] function include 2 arguments : 
/// First is BuildContext.
/// Second is dynamic.
/// 
/// [name] is dynamic but you should enter valid Widget(screen) or String.
/// 
/// If you enter String, be sure that your route is defined in the MaterialApp
void goReplace(BuildContext context, dynamic name) {
  if (name is Widget) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => name));
  } else if (name is String) {
    Navigator.of(context).pushReplacementNamed(name);
  } else {
    throw const FormatException(
        'Please enter a valid Widget(Screen) or RouteName(String)');
  }
}



/// [goRemove] using pushAndRemoveUntil or pushNamedAndRemoveUntil
/// 
/// [goRemove] function include 2 arguments : 
/// First is BuildContext.
/// Second is dynamic.
/// 
/// [name] is dynamic but you should enter valid Widget(screen) or String.
/// 
/// If you enter String, be sure that your route is defined in the MaterialApp
void goRemove(BuildContext context, dynamic name) {
  if (name is Widget) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => name), (route) => false);
  } else if (name is String) {
    Navigator.of(context).pushNamedAndRemoveUntil(name, (route) => false);
  } else {
    throw const FormatException(
        'Please enter a valid Screen(Widget) or Route name(String)');
  }
}
