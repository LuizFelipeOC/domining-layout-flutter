import 'package:domining_layout/app/modules/home/home_page.dart';
import 'package:domining_layout/app/modules/login/login_page.dart';
import 'package:domining_layout/app/modules/register/register.dart';
import 'package:flutter/material.dart';

class DomingLayoutApp extends StatelessWidget {
  const DomingLayoutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
