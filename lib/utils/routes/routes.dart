import 'package:flutter/material.dart';
import 'package:spacex/utils/routes/routes_name.dart';
import 'package:spacex/view/rocket_details.dart';
import 'package:spacex/view/rocket_list.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.rocketList:
        return MaterialPageRoute(builder: (_) => const RocketList());
      case RoutesName.rocketDetails:
        return MaterialPageRoute(builder: (_) => const RocketDetails());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No Route Defined.")),
          ),
        );
    }
  }
}
