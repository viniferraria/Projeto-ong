import 'package:flutter/material.dart';
import 'package:inforedes/cadastrado.dart';
import 'package:inforedes/login.dart';
import 'package:inforedes/registro.dart';
import 'package:inforedes/servico.dart';
import 'package:inforedes/home.dart';


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
      '/': (context) => LoginScreen(),
      '/home': (context) => HomeScreen(),
      '/servico': (context) => Servico(title: "Serviço"),
      '/registro': (context) => Registrar(),
      '/cadastrado': (context) => Cadastrado(),
    },
    );
  }
}
