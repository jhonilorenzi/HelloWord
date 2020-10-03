import 'package:HelloWord/app/pages/moduleBase/module_base_widget.dart';
import 'package:HelloWord/app/pages/tela0100/tela01_controller.dart';
import 'package:HelloWord/app/pages/tela0100/tela01_page.dart';
import 'package:HelloWord/app/shared/repositories/state_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ModuleBaseModule extends MainModule {
  @override
  List<Bind> get binds => [
        //Dio
        Bind((i) => Dio(BaseOptions(baseUrl: ""))),
        //Controller
        Bind((i) => Tela01Controller()),
        //Repository
        Bind((i) => StateRepository()),
      ];

  @override
  Widget get bootstrap => ModuleBaseWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, args) => Tela01Page()),
      ];
}
