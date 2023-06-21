import 'package:flutter/cupertino.dart';
import 'package:spacex/repository/rocket_repository.dart';

class RocketViewModel extends ChangeNotifier {

  final _rocketRepo = RocketRepository();

  Future<dynamic> rocketList() async {
    _rocketRepo.rocketListAPI().then((value) {
      print(value.toString());
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }
}