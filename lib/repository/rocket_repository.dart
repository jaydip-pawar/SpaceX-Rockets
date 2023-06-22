import 'package:spacex/data/app_exceptions.dart';
import 'package:spacex/data/network/base_api_services.dart';
import 'package:spacex/data/network/network_api_services.dart';
import 'package:spacex/model/rocket_list_model.dart';
import 'package:spacex/res/app_url.dart';

class RocketRepository {

  final BaseApiServices _apiServices = NetworkApiServices();

  Future<List<RocketListModel>> rocketListApi() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.rocketList);
      List<RocketListModel> rocketList = List<RocketListModel>.from(response.map((json) => RocketListModel.fromJson(json)));
      return rocketList;
    } catch (e) {
      print(e);
      throw ParsingException("Type error");
    }
  }
}