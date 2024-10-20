import 'package:flutter/material.dart';
import 'package:buzine/pages/home_page.dart';
import 'package:buzine/pages/profile_page.dart';

//import 'package:myapp/assets/logo.png'

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
      title: 'Flutter Demo',
      routes: {
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => const ProfilePage(),
      },
      home: const HomePage(), // Directly set HomePage as the home
    );
  }
}
