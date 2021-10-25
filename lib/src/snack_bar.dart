import 'package:flutter/material.dart';

/// Show snack bar using [snackBar]
///
/// context and onActionPressed is required.
///
/// When [isFixed] equal to false, you can set width without problem.
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar({
  required BuildContext context,
  required VoidCallback onActionPressed,
  String? text,
  Color? backgroundColor,
  String? actionText,
  Color? actionTextColor,
  TextStyle? textStyle,
  bool isFixed = true,
  double? elevation,
  double? width,
  int? secondsDuration,
  BorderRadiusGeometry? borderRadius,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      elevation: elevation,
      width: width,
      duration: Duration(seconds: secondsDuration ?? 4),
      shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero),
      behavior: isFixed ? SnackBarBehavior.fixed : SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      action: SnackBarAction(
        label: actionText ?? 'Dismiss',
        onPressed: onActionPressed,
        textColor: actionTextColor,
      ),
      content: Text(
        text ?? 'This is Snack Bar',
        style: textStyle,
      )));
}
