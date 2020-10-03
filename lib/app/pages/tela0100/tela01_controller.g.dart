// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tela01_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Tela01Controller on _Tela01ControllerBase, Store {
  final _$idPeriodoLetivoAtom =
      Atom(name: '_Tela01ControllerBase.idPeriodoLetivo');

  @override
  int get idPeriodoLetivo {
    _$idPeriodoLetivoAtom.reportRead();
    return super.idPeriodoLetivo;
  }

  @override
  set idPeriodoLetivo(int value) {
    _$idPeriodoLetivoAtom.reportWrite(value, super.idPeriodoLetivo, () {
      super.idPeriodoLetivo = value;
    });
  }

  final _$stateContentModelResponseListAtom =
      Atom(name: '_Tela01ControllerBase.stateContentModelResponseList');

  @override
  ObservableFuture<List<StateContentModelResponse>>
      get stateContentModelResponseList {
    _$stateContentModelResponseListAtom.reportRead();
    return super.stateContentModelResponseList;
  }

  @override
  set stateContentModelResponseList(
      ObservableFuture<List<StateContentModelResponse>> value) {
    _$stateContentModelResponseListAtom
        .reportWrite(value, super.stateContentModelResponseList, () {
      super.stateContentModelResponseList = value;
    });
  }

  final _$_Tela01ControllerBaseActionController =
      ActionController(name: '_Tela01ControllerBase');

  @override
  void setIdPeriodoLetivo(int value) {
    final _$actionInfo = _$_Tela01ControllerBaseActionController.startAction(
        name: '_Tela01ControllerBase.setIdPeriodoLetivo');
    try {
      return super.setIdPeriodoLetivo(value);
    } finally {
      _$_Tela01ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchOcurrencersResponseModelList() {
    final _$actionInfo = _$_Tela01ControllerBaseActionController.startAction(
        name: '_Tela01ControllerBase.fetchOcurrencersResponseModelList');
    try {
      return super.fetchOcurrencersResponseModelList();
    } finally {
      _$_Tela01ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
idPeriodoLetivo: ${idPeriodoLetivo},
stateContentModelResponseList: ${stateContentModelResponseList}
    ''';
  }
}
