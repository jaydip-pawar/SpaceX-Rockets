import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex/utils/routes/routes_name.dart';

class RocketList extends ConsumerWidget {
  const RocketList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpaceX Rockets'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("rocket.name"),
            subtitle: Text("rocket.country"),
            leading: Image.network("https://imgur.com/DaCfMsj.jpg"),
            onTap: () {
              Navigator.pushNamed(context, RoutesName.rocketDetails);
            },
          );
        },
      ),
    );
  }
}
