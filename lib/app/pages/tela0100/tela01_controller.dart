import 'package:HelloWord/app/shared/models/response/stateContentModel_response.dart';
import 'package:HelloWord/app/shared/repositories/state_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'tela01_controller.g.dart';

class Tela01Controller = _Tela01ControllerBase with _$Tela01Controller;

abstract class _Tela01ControllerBase with Store {
  final StateRepository repository = Modular.get<StateRepository>();

  @observable
  int idPeriodoLetivo;

  @action
  void setIdPeriodoLetivo(int value) => idPeriodoLetivo = value;

  @observable
  ObservableFuture<List<StateContentModelResponse>>
      stateContentModelResponseList;

  @action
  void fetchOcurrencersResponseModelList() {
    stateContentModelResponseList =
        repository.getStateContentModellist(idPeriodoLetivo).asObservable();
  }
}
