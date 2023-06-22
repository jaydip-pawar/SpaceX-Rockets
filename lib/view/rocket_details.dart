import 'package:flutter/material.dart';
import 'package:spacex/view/widgets/heading_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'package:spacex/res/components/ImageCarousel.dart';
import 'package:spacex/view_model/rockets_view_model.dart';

class RocketDetails extends StatefulWidget {
  final int index;

  const RocketDetails({super.key, required this.index});

  @override
  State<RocketDetails> createState() => _RocketDetailsState();
}

class _RocketDetailsState extends State<RocketDetails> {

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RocketViewModel>(
      builder: (context, value, _) {
        final data = value.rocketList.data![widget.index];
        return Scaffold(
          appBar: AppBar(
            title: Text(data.name.toString()),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageCarousel(images: data.flickrImages!),
                  const SizedBox(height: 30),
                  headingText("Name"),
                  Text(data.name.toString()),
                  const SizedBox(height: 16),
                  headingText("Status"),
                  Text(data.active! ? "Active" : "Not Active"),
                  const SizedBox(height: 16),
                  headingText("Cost Per Launch"),
                  Text(data.costPerLaunch.toString()),
                  const SizedBox(height: 16),
                  headingText("Success Rate Percent"),
                  Text(data.successRatePct.toString()),
                  const SizedBox(height: 16),
                  headingText("Description"),
                  Text(data.description.toString()),
                  const SizedBox(height: 16),
                  headingText("Wikipedia Link"),
                  GestureDetector(
                    onTap: () async {
                      await _launchUrl(data.wikipedia.toString());
                    },
                    child: Text(
                      data.wikipedia.toString(),
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  headingText("Height"),
                  Text("${data.height!.feet} Feet"),
                  const SizedBox(height: 16),
                  headingText("Diameter"),
                  Text("${data.diameter!.feet} Feet"),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
