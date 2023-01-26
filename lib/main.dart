import 'package:flutter/material.dart';
import 'package:vapps_it_login/presentation/login_page.dart';

void main() {
  runApp(const VappsLogin());
}

class VappsLogin extends StatelessWidget {
  const VappsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoginPage',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
