import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:poc_project/screens/HomeLayout/MobileLayout.dart';
import 'package:poc_project/screens/HomeLayout/TabLayout.dart';
import 'package:poc_project/screens/HomeLayout/DesktopLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}


class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return DesktopLayout();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return TabLayout();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return MobileLayout();
      }
      return MobileLayout();
    },
    );
  }
}

