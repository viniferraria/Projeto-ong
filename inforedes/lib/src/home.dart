import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inforedes/src/servico.dart';
import 'package:inforedes/src/cadastrar.dart';
import 'package:inforedes/src/biblioteca.dart';


class HomeScreen extends StatefulWidget {
  @override
    _HomeScreenState createState() => _HomeScreenState();
  }


class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    // _homePage("Voluntário"),
    Servico(),
    Biblioteca(),
    Cadastro(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onCardTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Text('Câmera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Biblioteca'),
            // backgroundColor: CupertinoColo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            title: Text('Cadastrar'),
          ),
        ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
    );
  }
}


  // _homePage(name){
  //   return Column(
  //     children: <Widget>[
  //       SizedBox(height: 20),
  //       _buildTitle(name),
  //       // _buildAllCards(context),
  //     ],
  //   );
  // }


  // _buildTitle(name){
  //     return Padding(
  //       padding: const EdgeInsets.all(30.0),
  //       child: Center(
  //         // padding: const EdgeInsets.only(top: 50.0, left: 40, bottom: 20),
  //         child: Column(
  //           children: <Widget>[
  //             Container(
  //               height: 55,
  //               width: 150,
  //               decoration: BoxDecoration(
  //               image: DecorationImage(image: AssetImage("images/logo.jpg")),
  //               // color: Colors.white,
  //             ),
  //           ),
  //             Padding(
  //               padding: const EdgeInsets.only(top: 25.0, bottom: 25),
  //               child: Text(
  //                 "Olá, $name.\nResumo do dia:",
  //                 style: TextStyle(
  //                   color: Colors.black87,
  //                   fontSize: 24.0,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //           ),
  //           _buildAllCards()
  //         ],
  //       ),
  //     ),
  //   );
  // }


  // _buildAllCards(){
  //   return Wrap(
  //     direction: Axis.horizontal,
  //     spacing: 10,
  //     runSpacing: 10,
  //     children: <Widget>[
  //       _buildCard('Café', 55), 
  //       _buildCard('Almoço', 23),
  //       _buildCard('Banho', 123),
  //       _buildCard('Tanque', 2),
  //       _buildCard('Biblioteca', 9),
  //       _buildCard('Oficina', 32),
  //       _buildCard('Atendimento', 3),
        
  //     ],
  //   );
  // }


  // _buildCard(String name, int quantidade){
  //   return Card(
  //     // shape: (),
  //     child: Container(
  //       width: 130,
  //       height: 100,
  //       child: InkWell(
  //         onTap: () {
  //           {}
  //           // onCardTapped(index);
  //         },
  //         child: Column(
  //           children: <Widget>[
  //             Center(
  //               child: Column(
  //                 children: <Widget>[
  //                   Padding(
  //                     padding: const EdgeInsets.only(top: 35.0),
  //                   ),
  //                   Text("$name: $quantidade", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontStyle: FontStyle.normal))
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }


