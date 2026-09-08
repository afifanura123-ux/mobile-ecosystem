import 'package:flutter/material.dart';
// Import halaman Modul 02 kamu
import 'package:flutter_application_1/modul_02/academic_dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Akademik TRPL',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0284C7)),
        useMaterial3: true,
      ),
      // Ganti home ke AcademicDashboardScreen()
      home: const AcademicDashboardScreen(),
    );
  }
}