import 'package:HelloWord/app/shared/models/response/stateContentModel_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StateRepository {
  Future<List<StateContentModelResponse>> getStateContentModellist(
      int idPeriodoLetivo) async {
    final String url =
        "https://servicodados.ibge.gov.br/api/v1/localidades/estados";
    final Dio dio = Modular.get<Dio>();
    List<StateContentModelResponse> stateContentModelResponseList = [];

    try {
      var response = await dio.get(
        url,
      );

      if (response.statusCode == 200) {
        for (var item in response.data) {
          StateContentModelResponse state =
              StateContentModelResponse.fromJson(item);
          stateContentModelResponseList.add(state);
        }
      }

      return stateContentModelResponseList;
    } catch (e) {
      return Future.error(e);
    }
  }
}
