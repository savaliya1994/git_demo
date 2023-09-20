import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  static const String rout = 'responsive';
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraint) {
        if (constraint.maxWidth < 600) {
          return mobileScaffold;
        } else if (constraint.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
