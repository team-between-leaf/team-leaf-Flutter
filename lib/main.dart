import 'package:flutter/material.dart';
import 'package:team_between_leaf/login/login_page.dart';
import 'package:team_between_leaf/core_services/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogInDart(),
      routes: appRoutes,
    );
  }
}
