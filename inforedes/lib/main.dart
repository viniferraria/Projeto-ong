import 'package:flutter/material.dart';
import 'package:inforedes/src/home.dart';
import 'package:inforedes/src/lista.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inforedes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
        ),
        cardTheme: CardTheme(color: Colors.lightGreen)
      ),
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
      '/': (context) => HomeScreen(),
      '/lista': (context) => Lista(),
    },
    );
  }
}
