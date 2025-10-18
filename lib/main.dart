import 'package:flutter/material.dart';
import 'package:flutter_charts_demo/neumorphic_pie/neumorphic_pie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic Card',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // const baseColor = Color(0xFFE0E5EC);
    final baseColor = Colors.grey.shade300;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Neumorphic Doughnut Chart',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: baseColor,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: NeumorphicPie(),
        ),
      ),
    );
  }
}
