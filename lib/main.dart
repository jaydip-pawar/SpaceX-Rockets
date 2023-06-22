import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/utils/routes/routes.dart';
import 'package:spacex/utils/routes/routes_name.dart';
import 'package:spacex/view_model/rockets_view_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => RocketViewModel()),
    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.rocketList,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

