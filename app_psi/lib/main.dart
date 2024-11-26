// ignore: unused_import
import 'package:app_psi/editar_perfil.dart';
// ignore: unused_import
import 'package:app_psi/home_screen.dart';
// ignore: unused_import
import 'package:app_psi/home_user_screan.dart';
// ignore: unused_import
import 'package:app_psi/login_screen.dart';
// ignore: unused_import
import 'package:app_psi/other_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
