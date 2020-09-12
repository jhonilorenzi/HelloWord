import 'package:flutter/material.dart';

class Tela03Widget extends StatefulWidget {
  @override
  _Tela03WidgetState createState() => _Tela03WidgetState();
}

class _Tela03WidgetState extends State<Tela03Widget> {
  @override
    Widget build(BuildContext context) {
      return Align(
        alignment: Alignment.topLeft,
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              brightness: Brightness.dark,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              title: Text(
                "Tela 03",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Theme.of(context).primaryColor,

            ),
            body: Container(
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      child: Text("Tela 03"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

