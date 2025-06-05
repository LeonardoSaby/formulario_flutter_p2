import 'dart:convert';

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return MaterialApp(
      title: "Formulario de Registro",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF1E3A8A),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFF1E3A8A),
        secondary: Color(0xFF6B7280)
        ),
          useMaterial3:true
      ),
      home: RegistrationFromScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegistrationFromScreen  extends StatelessWidget {
  static const Color primaryNavy = Color(0xFF1E3A8A);
  static const Color backgroundGray = Color(0xFFF9FAFB);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius:
      BorderRadius.circular(12),
      boxShadow:[
        BoxShadow(
          color:
          backgroundGray.withOpacity(0.1),
          blurRadius: 10,
          offset: Offset(0, 4),
        )
      ],
      ),
      child: Column(
      children: [
        Icon(Icons.person_add, size: 48, color: primaryNavy),
        SizedBox(height: 12),
      Text(
      "Datos personales",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: primaryNavy
      )
      ),
      SizedBox(height: 8),
        Text(
          "Complete todos los campos requeridos",
          style: TextStyle(fontSize: 14, color: backgroundGray),
        ),
        ],
        ),
        );
  }

}
