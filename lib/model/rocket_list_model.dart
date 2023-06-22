class RocketListModel {
  Diameter? _height;
  Diameter? _diameter;
  Engines? _engines;
  List<String>? _flickrImages;
  String? _name;
  bool? _active;
  int? _costPerLaunch;
  int? _successRatePct;
  String? _country;
  String? _wikipedia;
  String? _description;
  String? _id;

  RocketListModel(
      {Diameter? height,
        Diameter? diameter,
        Engines? engines,
        List<String>? flickrImages,
        String? name,
        bool? active,
        int? costPerLaunch,
        int? successRatePct,
        String? country,
        String? wikipedia,
        String? description,
        String? id}) {
    if (height != null) {
      _height = height;
    }
    if (diameter != null) {
      _diameter = diameter;
    }
    if (engines != null) {
      _engines = engines;
    }
    if (flickrImages != null) {
      _flickrImages = flickrImages;
    }
    if (name != null) {
      _name = name;
    }
    if (active != null) {
      _active = active;
    }
    if (costPerLaunch != null) {
      _costPerLaunch = costPerLaunch;
    }
    if (successRatePct != null) {
      _successRatePct = successRatePct;
    }
    if (country != null) {
      _country = country;
    }
    if (wikipedia != null) {
      _wikipedia = wikipedia;
    }
    if (description != null) {
      _description = description;
    }
    if (id != null) {
      _id = id;
    }
  }

  Diameter? get height => _height;
  set height(Diameter? height) => _height = height;
  Diameter? get diameter => _diameter;
  set diameter(Diameter? diameter) => _diameter = diameter;
  Engines? get engines => _engines;
  set engines(Engines? engines) => _engines = engines;
  List<String>? get flickrImages => _flickrImages;
  set flickrImages(List<String>? flickrImages) => _flickrImages = flickrImages;
  String? get name => _name;
  set name(String? name) => _name = name;
  bool? get active => _active;
  set active(bool? active) => _active = active;
  int? get costPerLaunch => _costPerLaunch;
  set costPerLaunch(int? costPerLaunch) => _costPerLaunch = costPerLaunch;
  int? get successRatePct => _successRatePct;
  set successRatePct(int? successRatePct) => _successRatePct = successRatePct;
  String? get country => _country;
  set country(String? country) => _country = country;
  String? get wikipedia => _wikipedia;
  set wikipedia(String? wikipedia) => _wikipedia = wikipedia;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get id => _id;
  set id(String? id) => _id = id;

  RocketListModel.fromJson(Map<String, dynamic> json) {
    _height =
    json['height'] != null ? Diameter.fromJson(json['height']) : null;
    _diameter = json['diameter'] != null
        ? Diameter.fromJson(json['diameter'])
        : null;
    _engines =
    json['engines'] != null ? Engines.fromJson(json['engines']) : null;
    _flickrImages = json['flickr_images'].cast<String>();
    _name = json['name'];
    _active = json['active'];
    _costPerLaunch = json['cost_per_launch'];
    _successRatePct = json['success_rate_pct'];
    _country = json['country'];
    _wikipedia = json['wikipedia'];
    _description = json['description'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_height != null) {
      data['height'] = _height!.toJson();
    }
    if (_diameter != null) {
      data['diameter'] = _diameter!.toJson();
    }
    if (_engines != null) {
      data['engines'] = _engines!.toJson();
    }
    data['flickr_images'] = _flickrImages;
    data['name'] = _name;
    data['active'] = _active;
    data['cost_per_launch'] = _costPerLaunch;
    data['success_rate_pct'] = _successRatePct;
    data['country'] = _country;
    data['wikipedia'] = _wikipedia;
    data['description'] = _description;
    data['id'] = _id;
    return data;
  }
}

class Height {
  double? _meters;
  int? _feet;

  Height({double? meters, int? feet}) {
    if (meters != null) {
      _meters = meters;
    }
    if (feet != null) {
      _feet = feet;
    }
  }

  double? get meters => _meters;
  set meters(double? meters) => _meters = meters;
  int? get feet => _feet;
  set feet(int? feet) => _feet = feet;

  Height.fromJson(Map<String, dynamic> json) {
    _meters = json['meters'];
    _feet = json['feet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['meters'] = _meters;
    data['feet'] = _feet;
    return data;
  }
}

class Diameter {
  num? _meters;
  num? _feet;

  Diameter({num? meters, num? feet}) {
    if (meters != null) {
      _meters = meters;
    }
    if (feet != null) {
      _feet = feet;
    }
  }

  num? get meters => _meters;
  set meters(num? meters) => _meters = meters;
  num? get feet => _feet;
  set feet(num? feet) => _feet = feet;

  Diameter.fromJson(Map<String, dynamic> json) {
    _meters = json['meters'];
    _feet = json['feet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['meters'] = _meters;
    data['feet'] = _feet;
    return data;
  }
}

class Engines {
  int? _number;

  Engines(
      {
        int? number}) {
    if (number != null) {
      _number = number;
    }
  }

  int? get number => _number;
  set number(int? number) => _number = number;

  Engines.fromJson(Map<String, dynamic> json) {
    _number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = _number;
    return data;
  }
}

