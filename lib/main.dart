import 'package:flutter/material.dart';
import 'package:shazclippers/HomeScreen/Home/home_screen.dart';
import 'package:shazclippers/Themes/darktheme.dart';
// import 'package:shazclippers/Themes/lighttheme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: darkTheme,
      darkTheme: darkTheme,
      
      home: const Home(),
    );
  }
}
