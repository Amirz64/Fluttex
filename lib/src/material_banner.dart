import 'package:flutter/material.dart';


/// Using [materialBanner] for show material banner
/// 
/// Note ! 
/// 
///   if you use [customAction], The default action not work.
/// 
///    default action : hideCurrentMaterialBanner
ScaffoldFeatureController<MaterialBanner, MaterialBannerClosedReason>
    materialBanner({
  required BuildContext context,
  String? text,
  TextStyle? textStyle,
  String? actionText,
  TextStyle? actionTextStyle,
  Color? backgroundColor,
  double rightLeadingSpace = 0,
  double leftLeadingSpace = 0,
  Widget? leading,
  VoidCallback? onVisible,
  VoidCallback? customAction,
}) {
  return ScaffoldMessenger.of(context).showMaterialBanner(
    MaterialBanner(
      backgroundColor: backgroundColor,
      onVisible: onVisible,
      leadingPadding: EdgeInsets.only(
        right: rightLeadingSpace,
        left: leftLeadingSpace,
      ),
      leading: leading,
      content: Text(
        text ?? 'This is Material Banner',
        style: textStyle,
      ),
      actions: [
        TextButton(
          child: Text(
            actionText ?? 'Dismiss',
            style: actionTextStyle,
          ),
          onPressed: customAction ??
              () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              },
        )
      ],
    ),
  );
}
