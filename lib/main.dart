import 'package:flutter/material.dart';
import 'package:todo_app/ui/home.dart';
import 'package:todo_app/ui/utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: {
        Home.routeName:(_)=>Home(),
      },
      initialRoute: Home.routeName,
    );
  }
}
