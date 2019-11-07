import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/logo.jpg")),
            ),
          ),
            Container(
              child: _buildLoginField()
            ),
            SizedBox(height: 10),
            Container(child: _buildPasswordField()),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text("Entrar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),               
                    
                    ),
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)
                    ),
                    onPressed: () => _alertDialog(context)
                    // Navigator.pushNamed(context, '/home'),
                  ),
                ),
              ],
            )
          ],),
      ),
    );
  }
}


_alertDialog(BuildContext context){
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text("Alert"),
      content: Text("Done"),
      actions: <Widget>[
        FlatButton(child: Text("No"), onPressed: () {},),
        FlatButton(child: Text("Yes"), onPressed: () {},),
      ],

    ),
    barrierDismissible: true,

  );
}

  _buildLoginField(){
    return  Container(
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.black),
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
          labelText: 'Voluntário',
      
        ),
      ),
    );
  }


  _buildPasswordField(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        color: CupertinoColors.extraLightBackgroundGray,
        // gradient: LinearGradient(colors: [Colors.greenAccent, Colors.deepOrangeAccent ]),
        // border: Border.all(color: Colors.black),
      ),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        maxLengthEnforced: true,
        maxLength: 20,
        autocorrect: false,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(
              Icons.lock,
              // color: Theme.of(context).accentColor,
            ),
          counterText: "",
          labelText: 'Senha',
        ),
      ),
    );
  }