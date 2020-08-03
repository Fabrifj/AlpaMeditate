import 'package:alpameditate/src/providers/menu_providers.dart';
import 'package:flutter/material.dart';

class SelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MediApp'),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          //
          child: _cargarDatos()
          //
          ),
    );
  }

  Widget _cargarDatos() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listCard(snapshot.data, context),
          );
        });
  }

  List<Widget> _listCard(List data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final card = _card(element, context);

      final box = SizedBox(
        height: 10.0,
      );
      opciones..add(card)..add(box);
    });
    return opciones;
  }

  Widget _card(element, BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
            title: Text(element['nombre']),
            subtitle: Text(element['propietario']),
            onTap: () {
              Navigator.pushNamed(context, 'meditate',
                  arguments: element['tiempo']);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(element['tiempo']),
              Text(element['dificultad']),
            ],
          )
        ],
      ),
    );
  }
}
