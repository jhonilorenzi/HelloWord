import 'package:HelloWord/app/pages/tela0100/tela01_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Tela01Page extends StatefulWidget {
  @override
  _Tela01PageState createState() => _Tela01PageState();
}

class _Tela01PageState extends State<Tela01Page> {
  final tela01Controller = Modular.get<Tela01Controller>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tela01Controller.setIdPeriodoLetivo(146);
    tela01Controller.fetchOcurrencersResponseModelList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Estados",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Observer(builder: (BuildContext context) {
          if (tela01Controller.stateContentModelResponseList.error != null) {
            return Center(
              child: RaisedButton(
                child: Text('Pressione novamente'),
                onPressed: () {
                  tela01Controller.fetchOcurrencersResponseModelList();
                },
              ),
            );
          }
          if (tela01Controller.stateContentModelResponseList.value == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var list = tela01Controller.stateContentModelResponseList.value;

          return ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    list[index].nome,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.normal),
                  ),
                );
              });
        }));
  }
}
