import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadastrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro efetivado")),
      backgroundColor: CupertinoColors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          // Title(child: Text("Cadastro efetivado", style: TextStyle(fontSize: 20)), color: Colors.black),
          Padding(
            padding:
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Container(
              height: 450,
              width: 450,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/done.png")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cadastrar novo convivente",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.popUntil(context, ModalRoute.withName("/home"));
                    },
                    child: Text(
                      "Retornar à tela inicial",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
