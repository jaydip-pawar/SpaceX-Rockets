import 'package:spacex/data/network/base_api_services.dart';
import 'package:spacex/data/network/network_api_services.dart';
import 'package:spacex/res/app_url.dart';

class RocketRepository {

  final BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> rocketListAPI() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.rocketList);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}