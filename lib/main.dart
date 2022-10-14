import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permissions_app/utils/appRoutes.dart';
import 'package:permissions_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Permission App",
      initialRoute: AppRoutes().homePage,
      routes: routes,
    );
  }
}
