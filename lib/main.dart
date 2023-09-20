import 'package:flutter/material.dart';
import 'package:responsive/responsive/desktop_scaffold.dart';
import 'package:responsive/responsive/mobile_scaffold.dart';
import 'package:responsive/responsive/responsive_layout.dart';
import 'package:responsive/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: ResponsiveLayout.rout,
      // routes: {
      //   PercentageIndicator.routname: (context) => PercentageIndicator(),
      //   /// '/detail': (context) => DetailScreen(),
      //   DetailScreen.rout: (context) => DetailScreen(),
      //   ResponsiveLayout.rout: (context) => ResponsiveLayout(
      //         mobileScaffold: MobileAcaffold(),
      //         tabletScaffold: TabletScaffold(),
      //         desktopScaffold: DesktopScaffold(),
      //       ),
      // },
      home: ResponsiveLayout(
        mobileScaffold: MobileAcaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
