import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            // Text("Informe as informacoes necessárias para cadastrar o convivente"),
            Container(child: _buildLoginField()),
            SizedBox(height: 10),
            Container(child: _buildPasswordField()),
            SizedBox(height: 10),
            Container(child: _buildBirthDayField()),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    elevation: 10,
                    child: Text(
                      "Cadastrar",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    onPressed: () =>
                      _alertDialog(context),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

_buildLoginField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      color: CupertinoColors.extraLightBackgroundGray,
      // gradient: LinearGradient(colors: [Colors.greenAccent, Colors.deepOrangeAccent ]),
    ),
    child: TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      maxLengthEnforced: true,
      maxLength: 15,
      autocorrect: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          // color: Theme.of(context).accentColor,
        ),
        counterText: "",
        labelText: 'Nome',
      ),
    ),
  );
}

_buildPasswordField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      color: CupertinoColors.extraLightBackgroundGray,
      // gradient: LinearGradient(colors: [Colors.greenAccent, Colors.deepOrangeAccent ]),
    ),
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: false,
      maxLengthEnforced: true,
      maxLength: 20,
      autocorrect: false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.people,
          // color: Theme.of(context).accentColor,
        ),
        counterText: "",
        labelText: 'Nome da mãe',
      ),
    ),
  );
}

_buildBirthDayField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      // gradient: LinearGradient(colors: [Colors.greenAccent, Colors.deepOrangeAccent ]),
      color: CupertinoColors.extraLightBackgroundGray,
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      obscureText: false,
      maxLengthEnforced: true,
      maxLength: 10,
      autocorrect: false,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.calendar_today,
          // color: Theme.of(context).accentColor,
        ),
        counterText: "",
        labelText: 'Data de nascimento (mm/dd/aaaa)',
      ),
    ),
  );
}

_alertDialog(BuildContext context){
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text("Sucesso"),
      content: Text("Convivente cadastrado"),
      actions: <Widget>[
        FlatButton(child: Text("Imprimir"), onPressed: () { Navigator.pop(context);},),
        FlatButton(child: Text("Voltar"), onPressed: () { Navigator.pop(context);},),
      ],

    ),
    barrierDismissible: true,

  );
}