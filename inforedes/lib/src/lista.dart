import 'package:flutter/material.dart';


class Lista extends StatefulWidget {
	@override
	ListaState createState() => ListaState();
}

class ListaState extends State<Lista> {
	@override
  
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Procurar conviventes"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => _searchBar(),
        ),
        ],
			),
			body: ListView.builder(
				itemCount: _associados.length,
				itemBuilder: (context, index) {
					return _buildRow(_associados[index]);
        },
      ),
    );
  }

  final Set<String> _saved = Set<String>(); 
  final List<String> _associados = <String>["carlos", "anthony"];

  Widget _buildRow(String name) {
  final bool alreadySaved = _saved.contains(name);
    return ListTile(
      title: Text(
        name
      ),
      trailing: Icon(
        alreadySaved ? Icons.done : Icons.add,
        color: alreadySaved ? Colors.green : null,
      ),
      onTap: (){
        setState(() {
          if(alreadySaved) {
            _saved.remove(name);
          } else {
            _saved.add(name);
          }
        });
      },
    );
  }


  _searchBar(){
      return TextFormField(
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
          ),
          counterText: "",
          labelText: 'Nome do convivente',
        ),
      );
    // );
  }

}