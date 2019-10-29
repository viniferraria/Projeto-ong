import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  final String title;

  const Servico({Key key, this.title}) : super(key: key);


  @override
  _ServicoState createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  int _counter = 20;

  // @override
  // void initState() {
  //   super.initState();
  //   _counter = 20;
  // }


  void _incrementCounter() {
    if(_counter != 0){
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // child: Padding(
          // padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/background.png"), fit: BoxFit.fill),
                  border: Border.all(color: Colors.black)
                ),
              ),
              SizedBox(height: 80.0),
              Text("Serviços restantes: $_counter",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.person_add),
      ),
    );
  }
}