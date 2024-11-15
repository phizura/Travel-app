import 'package:flutter/material.dart';
import 'package:travel_app/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const DetailScreen(),
    );
  }
}
