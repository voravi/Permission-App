import 'package:flutter/cupertino.dart';
import 'package:permissions_app/screens/home_screen/page/location_page.dart';


import '../screens/home_screen/page/home_screen.dart';
import 'appRoutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => HomePage(),
  // AppRoutes().locationPage: (context) => LocationScreen(),
};
