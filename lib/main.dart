import 'package:chat_app/routes.dart';
import 'package:chat_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatR App',
      theme: ThemeData(
        primaryColor: Colors.red[400],
        accentColor: Color(0xFFFEF9EB),
      ),
      initialRoute: HomeScreen.route,
      routes: getRoutes(),
    );
  }
}
