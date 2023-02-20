import 'package:flutter/material.dart';
import 'package:toku/module/Home_screen.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
        titleTextStyle: TextStyle(
          fontFamily: 'Jannah',
          fontSize: 20
        )
      )
    ),
      themeMode: ThemeMode.light,
      home: HomeScreen(),
    );
  }
}
