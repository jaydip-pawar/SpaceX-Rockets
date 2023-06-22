import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex/data/response/status.dart';
import 'package:spacex/utils/routes/routes_name.dart';
import 'package:spacex/view_model/rockets_view_model.dart';

class RocketList extends StatefulWidget {
  const RocketList({Key? key}) : super(key: key);

  @override
  State<RocketList> createState() => _RocketListState();
}

class _RocketListState extends State<RocketList> {
  @override
  Widget build(BuildContext context) {
    RocketViewModel rocketViewModel =
    Provider.of<RocketViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("SpaceX Rockets"),
      ),
      body: FutureBuilder(
        future: rocketViewModel.fetchRocketListApi(),
        builder: (context, snapshot) {
          return Consumer<RocketViewModel>(
            builder: (context, value, _) {
              switch (value.rocketList.status) {
                case Status.LOADING:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case Status.COMPLETED:
                  return ListView.builder(
                    itemCount: value.rocketList.data!.length,
                    itemBuilder: (context, index) {
                      var rocket = value.rocketList.data![index];
                      return Card(
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(
                            context,
                            RoutesName.rocketDetails,
                            arguments: index,
                          ),
                          child: ListTile(
                            title: Text(rocket.name.toString()),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Country: ${rocket.country.toString()}'),
                                Text(
                                    'Engine Number: ${rocket.engines!.number.toString()}'),
                              ],
                            ),
                            leading: Image.network(
                              rocket.flickrImages![0].toString(),
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                case Status.ERROR:
                  return Center(
                    child: Text(value.rocketList.message.toString()),
                  );
                default:
                  return Container();
              }
            },
          );
        },
      ),
    );
  }
}
