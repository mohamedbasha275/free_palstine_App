class CityModel {
  final String name;
  final String info;
  final String moreInfoUrl;
  final String mapUrl;

  CityModel({
    required this.name,
    required this.info,
    required this.moreInfoUrl,
    required this.mapUrl,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      name: json['name'],
      info: json['info'],
      moreInfoUrl: json['more_info_url'],
      mapUrl: json['map_url'],
    );
  }
}

List<CityModel> questionsList = [
  CityModel(name: 'القدس', info: 'what you want write',
      moreInfoUrl: 'add url for map like https://www.marefa.org/%D8%A3%D8%B1%D9%8A%D8%AD%D8%A7',
      mapUrl: 'search on goole map and add link'),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
  CityModel(name: '', info: '', moreInfoUrl: '', mapUrl: ''),
];
