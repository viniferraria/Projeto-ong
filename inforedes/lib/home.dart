import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Center(child: _homePage("Voluntário", context)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add), onPressed: () => Navigator.pushNamed(context, '/registro'),
      )
    );
  }
}


_homePage(name, context){
  return Column(
    children: <Widget>[
      SizedBox(height: 20),
      _buildTitle(name),
      _buildAllCards(context),
    ],
  );
}

_buildTitle(name){
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        // padding: const EdgeInsets.only(top: 50.0, left: 40, bottom: 20),
        child: Column(
          children: <Widget>[
            Container(
              height: 85,
              width: 180,
              decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/logo.jpg")),
              // color: Colors.white,
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Olá, $name",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
        ],
      ),
    ),
  );
}


_buildAllCards(BuildContext context){
  return Wrap(
    direction: Axis.horizontal,
    spacing: 10,
    runSpacing: 50,
    children: <Widget>[
      _buildCard("Refeição", Icons.fastfood, context), 
      _buildCard("Banho", Icons.person, context),
      _buildCard("Biblioteca", Icons.book, context),
      
    ],
  );
}


_buildCard(String name, IconData icon, BuildContext context){
  return Card(
    // shape: (),
    child: Container(
      width: 220,
      height: 110,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/servico");
        },
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Center(child: Icon(icon, size: 38)),
                  ),
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontStyle: FontStyle.normal))
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
