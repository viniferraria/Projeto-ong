import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({Key key}) : super(key: key);


  @override
  _BibliotecaState createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  String _state = "Registrar empréstimo";


  void _changeState(String tipo) {
    setState(() {
      _state = tipo;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biblioteca"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$_state",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/background.png"), fit: BoxFit.fill),
                border: Border.all(color: Colors.black)
              ),
            ),
            SizedBox(height: 20.0),
            _buildIdLivro(),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(child: Text("Emprestar"), onPressed: (){_changeState("Registrar empréstimo");},),
                RaisedButton(child: Text("Devolver"), onPressed: () {_changeState("Registrar devolução");},),
                RaisedButton(child: Text("Estender"), onPressed: () {_changeState("Estender empréstimo");},),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/lista'),
        child: Icon(Icons.search),
      ),
    );
  }
}




_buildIdLivro() {
  return Container(
    decoration: BoxDecoration(
      color: CupertinoColors.extraLightBackgroundGray,
      // gradient: LinearGradient(colors: [Colors.greenAccent, Colors.deepOrangeAccent ]),
    ),
    child: TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.book,
        ),
        counterText: "",
        labelText: 'Código do livro',
      ),
    ),
  );
}
