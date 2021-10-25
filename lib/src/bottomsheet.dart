import 'package:flutter/material.dart';

/// Using [modalBottomSheet] for show bottom sheet
/// 
Future modalBottomSheet({
  required BuildContext context,
  bool isScrollControlled = true,
  double height = 200,
  Color color = Colors.white,
  Widget? child,
  double topBorderRadius = 0,
  bool isDismissible = true,
  bool enableDrag = true,
  EdgeInsetsGeometry? padding,
}) {
  return showModalBottomSheet(

      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topBorderRadius),
            topRight: Radius.circular(topBorderRadius)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      isDismissible: isDismissible,
      enableDrag: enableDrag,

      context: context,
      isScrollControlled: isScrollControlled,
      builder: (context) => SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                padding: padding,
                height: height,
                decoration: BoxDecoration(
                  color: color,
                ),
                child: child,
              ),
            ),
          ));
}
