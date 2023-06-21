class RocketListModel {
  Engines? engines;
  List<String>? flickrImages;
  String? name;
  String? country;

  RocketListModel({
    this.engines,
    this.flickrImages,
    this.name,
    this.country,
  });

  RocketListModel.fromJson(Map<String, dynamic> json) {
    engines =
        json['engines'] != null ? Engines.fromJson(json['engines']) : null;
    flickrImages = json['flickr_images'].cast<String>();
    name = json['name'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (engines != null) {
      data['engines'] = engines!.toJson();
    }
    data['flickr_images'] = flickrImages;
    data['name'] = name;
    data['country'] = country;
    return data;
  }
}

class Engines {
  int? number;

  Engines({this.number});

  Engines.fromJson(Map<String, dynamic> json) {
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    return data;
  }
}
