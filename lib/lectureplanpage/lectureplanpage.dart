import 'package:flutter/material.dart';

// Ito ang simpleng class na kailangan ng main_screen.dart
class LecturePlanPage extends StatelessWidget {
  const LecturePlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Lecture Plan Page Content',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}