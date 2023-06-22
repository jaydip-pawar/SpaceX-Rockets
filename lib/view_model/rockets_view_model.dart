import 'package:flutter/cupertino.dart';
import 'package:spacex/data/response/api_response.dart';
import 'package:spacex/model/rocket_list_model.dart';
import 'package:spacex/repository/rocket_repository.dart';

class RocketViewModel with ChangeNotifier {
  final _rocketRepo = RocketRepository();

  ApiResponse<List<RocketListModel>> rocketList = ApiResponse.loading();

  setRocketList(ApiResponse<List<RocketListModel>> response) {
    rocketList = response;
  }

  Future<void> fetchRocketListApi() async {
    setRocketList(ApiResponse.loading());
    try {
      final response = await _rocketRepo.rocketListApi();
      setRocketList(ApiResponse.completed(response));
    } catch (error) {
      setRocketList(ApiResponse.error(error.toString()));
    }
  }
}
