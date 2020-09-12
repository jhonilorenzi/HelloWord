import 'package:HelloWord/tela02_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tela01Widget extends StatefulWidget {
  @override
  _Tela01WidgetState createState() => _Tela01WidgetState();
}

class _Tela01WidgetState extends State<Tela01Widget> {
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
              "Tela 01",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            actions: <Widget>[
              IconButton(
                highlightColor: Colors.white,
                icon: Icon(Icons.send),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela02Widget()),
                  );
                },
              ),
            ],
          ),
          body: Stack(
                children: <Widget>[
                  Container(
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
                            child: Text("text"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              color: Colors.white,
                            ),
                            height: 100,
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text("events"),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              color: Colors.white,
                            ),
                            height: 100,
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                            width: MediaQuery.of(context).size.width,
                            child: Center(child: Text("hoje"))),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ),
    );
  }
}
