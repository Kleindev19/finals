// lib/main.dart

import 'package:flutter/material.dart';

// 1. Import the Overview Page
// TAMA!
import 'package:capstone_main/overviewpage/overviewpage.dart';

// 2. Import the Login/Registration Page
import 'package:capstone_main/logregpage/logregpage.dart';

// 3. Import the Dashboard Page
import 'package:capstone_main/dashboardpage/dashboardpage.dart';

// 4. Import the Lecture Plan Page
// DITO NAGKAROON NG ERROR KANINA (Dapat capstone_main)
import 'package:capstone_main/lectureplanpage/lectureplanpage.dart';

// 5. Import the Grades Page
// DITO NAGKAROON NG ERROR KANINA (Dapat capstone_main)
import 'package:capstone_main/gradespage/gradespage.dart';

// 6. Import the Reports Page
// DITO NAGKAROON NG ERROR KANINA (Dapat capstone_main)
import 'package:capstone_main/reportspage/reportspage.dart';

void main() {
  runApp(const CapstoneApp());
}

class CapstoneApp extends StatelessWidget {
  const CapstoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'capstone_main',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // --- Routing Setup (Example using named routes) ---
      // You can define all your pages here for easy navigation
      initialRoute: '/',
      routes: {
        // The root route often goes to a landing/login page
        '/': (context) => const OverviewPage(), 
        '/login': (context) => const LogRegPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/lectureplan': (context) => const LecturePlanPage(),
        '/grades': (context) => const GradesPage(),
        '/reports': (context) => const ReportsPage(),
      },
    );
  }
}