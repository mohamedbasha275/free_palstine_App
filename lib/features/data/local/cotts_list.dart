class CottModel {
  final String name;

  CottModel({
    required this.name,
  });

  factory CottModel.fromJson(Map<String, dynamic> json) {
    return CottModel(
      name: json['name'],
    );
  }
}

List<CottModel> cottsList = [
  CottModel(name: 'فانتا'),
  CottModel(name: 'بيبسي'),
  CottModel(name: 'أكوافينا'),
  CottModel(name: 'سيبرايت'),
  CottModel(name: 'كنتاكي'),
  CottModel(name: 'ماك'),
  CottModel(name: 'أبل'),
  CottModel(name: 'شيبسي'),
  CottModel(name: 'كوكاكولا'),
  CottModel(name: 'ميرندا'),
  CottModel(name: 'سفن أب'),
];
