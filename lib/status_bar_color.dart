library status_bar_color;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarColor extends StatelessWidget {
  const StatusBarColor.dark(
      {required this.child,
      this.statusBarColor,
      this.navigationBarColor,
      Key? key})
      : dark = true,
        super(key: key);

  const StatusBarColor.light(
      {required this.child,
      this.statusBarColor,
      this.navigationBarColor,
      Key? key})
      : dark = false,
        super(key: key);

  final bool dark;
  final Color? statusBarColor;
  final Color? navigationBarColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var value = dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: value.copyWith(
          statusBarColor: statusBarColor ?? Colors.transparent,
          systemNavigationBarColor: navigationBarColor),
      child: child,
    );
  }
}
