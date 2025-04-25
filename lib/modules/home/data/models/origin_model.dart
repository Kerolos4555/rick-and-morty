class OriginModel {
  String originName;
  String originUrl;

  OriginModel({required this.originName, required this.originUrl});

  factory OriginModel.fromJson(json) =>
      OriginModel(originName: json['name'], originUrl: json['url']);
}
