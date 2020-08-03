import 'dart:async';

import 'package:flutter/material.dart';

class MeditatePage extends StatefulWidget {
  @override
  createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
  Timer _timer;
  int _counter = 20;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          _mostrarAlert(context);
        }
      });
    });
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(20.0))),
            title: Text('titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Este es el contenido de la targeta',
                ),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              )
            ],
          );
        });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              InkWell(
                child: Container(
                  height: 40.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(color: Colors.black),
                      ]),
                  child: Center(
                    child: Text('Cancelar'),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(child: SizedBox()),
              Text('Nombre')
            ],
          ),
          SizedBox(height: 100.0),
          Container(
            width: 400.0,
            child: FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(seconds: 2),
              image: NetworkImage(
                  'https://i.blogs.es/3b9334/el-caballero-oscuro-la-leyenda-renace-1446020992/1366_2000.jpeg'),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            '$_counter',
            style: TextStyle(fontSize: 40),
          ),
          Expanded(child: SizedBox()),
          InkWell(
            child: Container(
              height: 40.0,
              width: 80.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(color: Colors.black),
                  ]),
              child: Center(
                child: Text('Comenzar'),
              ),
            ),
            onTap: () => _startTimer(),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

/*
class MeditatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        child: InkWell(
          child: Container(
            child: Center(
              child: Text('Comenzar'),
            ),
          ),
          onTap: () {},
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black),
            ]),
        height: 40.0,
        width: 80.0,
      ),
      body: Center(),
    );
  }
  
}
*/
