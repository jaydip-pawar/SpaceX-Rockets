import 'package:flutter/material.dart';

class RocketDetails extends StatefulWidget {
  const RocketDetails({super.key});

  @override
  State<RocketDetails> createState() => _RocketDetailsState();
}

class _RocketDetailsState extends State<RocketDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("rocket.name"),
      ),
      body: ListView(
        children: [
          Image.network("https://imgur.com/DaCfMsj.jpg"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Active Status: '),
                Text('Cost per Launch:'),
                Text('Success Rate: %'),
                Text('Description: '),
                Text('Wikipedia: '),
                Text('Height: '),
                Text('Diameter: '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
