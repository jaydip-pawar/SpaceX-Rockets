class AppUrl {

  static var baseUrl = 'https://api.spacexdata.com/v4/';

  static var rocketList = '${baseUrl}rockets';

  static var rocketDetails = '$rocketList/:id';
}