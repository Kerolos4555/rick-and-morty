class LocationModel {
  String locationName;
  String locationUrl;

  LocationModel({required this.locationName, required this.locationUrl});

  factory LocationModel.fromJson(json) =>
      LocationModel(locationName: json['name'], locationUrl: json['url']);
}
