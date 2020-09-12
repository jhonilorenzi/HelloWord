import 'package:HelloWord/tela03_widget.dart';
import 'package:flutter/material.dart';

class Tela02Widget extends StatefulWidget {
  @override
  _Tela02WidgetState createState() => _Tela02WidgetState();
}

class _Tela02WidgetState extends State<Tela02Widget> {
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
              "Tela 02",
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
                        child: Text("Tela 02"),
                      ),
                    ),
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Tela03Widget()),
                        );
                      },
                      colorBrightness: Brightness.dark,
                      child: Center(
                        child: Text(
                          "vai para a tela 03",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).backgroundColor
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
