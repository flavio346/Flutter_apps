import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final appTitle = 'App Design';

  @override
  Widget build(BuildContext){
    return MaterialApp(
      title: appTitle,
        home : MyHomePage(title:appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(child: Text('Minha Pagina')),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Lista de Opçoes'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('Opçao 1'),

                onTap: (){

                  Navigator.pop(context);

                },

              ),
              ListTile(
                title: Text('Opçao 2'),

                onTap: (){

                  Navigator.pop(context);
                }
              )



            ],
          )
        )
      );
  }
}
