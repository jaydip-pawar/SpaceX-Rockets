import 'package:spacex/data/network/base_api_services.dart';
import 'package:spacex/data/network/network_api_services.dart';
import 'package:spacex/model/rocket_list_model.dart';
import 'package:spacex/res/app_url.dart';

class RocketRepository {

  final BaseApiServices _apiServices = NetworkApiServices();

  Future<RocketListModel> rocketListAPI() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.rocketList);
      return response = RocketListModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}