import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  const Servico({Key key}) : super(key: key);


  @override
  _ServicoState createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  int _counter = 20;
  String dropdownValue = 'Café da manhã';

  // @override
  // void initState() {
  //   super.initState();
  //   _counter = 20;
  // }


  void _incrementCounter() {
    if(_counter != 0){
      setState(() {
        _counter++;
      });
    }
  }


  void _decrementCounter() {
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
        title: Text("Serviço"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$dropdownValue restante(s): $_counter",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/background.png"), fit: BoxFit.fill),
                border: Border.all(color: Colors.black)
              ),
            ),
            SizedBox(height: 20.0),
            _dropDown(),
            SizedBox(height: 20.0),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(child: Icon(Icons.add), onPressed: (){_incrementCounter();},),
                  RaisedButton(child: Icon(Icons.remove), onPressed: () {_decrementCounter();},),
                ],
              ),
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

  _dropDown(){
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(
              color: Colors.black
            ),
            underline: Container(
              height: 2,
              color: Colors.green,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['Café da manhã', 'Almoço', 'Banho', 'Tanque', 'Oficina']
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              })
              .toList(),
            ),
          ),
        ),
      ],
    );
  }
}