import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/data/response/status.dart';
import 'package:spacex/view_model/rockets_view_model.dart';

class RocketList extends StatefulWidget {
  const RocketList({super.key});

  @override
  State<RocketList> createState() => _RocketListState();
}

class _RocketListState extends State<RocketList> {
  RocketViewModel rocketViewModel = RocketViewModel();

  @override
  void initState() {
    rocketViewModel.fetchRocketListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SpaceX Rockets"),
      ),
      body: ChangeNotifierProvider<RocketViewModel>(
        create: (BuildContext context) => rocketViewModel,
        child: Consumer<RocketViewModel>(
          builder: (context, value, _) {
            switch (value.rocketList.status) {
              case Status.LOADING:
                return const CircularProgressIndicator();
              case Status.COMPLETED:
                return ListView.builder(
                    itemCount: value.rocketList.data!.length,
                    itemBuilder: (context, index) {
                      var rocket = value.rocketList.data![index];
                      return ListTile(
                        title: Text(rocket.name.toString()),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Country: ${rocket.country.toString()}'),
                            Text('Engine Number: ${rocket.engines!.number.toString()}'),
                          ],
                        ),
                        leading: Image.network(rocket.flickrImages![0].toString()),
                      );
                    });
              case Status.ERROR:
                return Text(value.rocketList.message.toString());
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
