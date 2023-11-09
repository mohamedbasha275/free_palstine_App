// poets
class Poets {
  static String eantara = 'eantara';
  static String aimru = 'aimru';
  static String ibrahimTouqan = 'ibrahimTouqan';

  //static String alyazidiu = 'alyazidiu';
  static String binKulthum = 'binKulthum';
  static String almutanabiy = 'almutanabiy';
  static String binAbiRabiea = 'binAbiRabiea';
}

List<String> poetsList = [
  Poets.ibrahimTouqan,
  Poets.almutanabiy,
  Poets.aimru,
  Poets.binAbiRabiea,
  Poets.binKulthum,
  Poets.eantara,
  //Poets.alyazidiu,
];

String arabicPoetName(String name) {
  switch (name) {
    case 'eantara':
      return 'عنترة بن شداد';
    case 'aimru':
      return 'امرؤ القيس';
    case 'ibrahimTouqan':
      return 'إبراهيم طوقان';
    case 'almutanabiy':
      return 'المتنبي';
    case 'binKulthum':
      return 'عمرو بن كلثوم';
    case 'alyazidiu':
      return 'يحيى اليزيدي';
    case 'binAbiRabiea':
      return 'عمر بن أبي ربيعة';
    default:
      return 'اخر';
  }
}

// types
class Types {
  static String all = 'all';

  //static String haja = 'haja';
  static String eamah = 'eamah';
  static String almuealaqat = 'almuealaqat';

  //static String faraq = 'faraq';
  static String hazinuh = 'hazinuh';
  static String madh = 'madh';
  static String ghazal = 'ghazal';
}

List<String> typesList = [
  //Types.haja,
  Types.eamah,
  Types.almuealaqat,
  //Types.faraq,
  Types.hazinuh,
  Types.madh,
  Types.ghazal,
];
List<String> typesListFilter = [
  Types.all,
  //Types.haja,
  Types.eamah,
  Types.almuealaqat,
  //Types.faraq,
  Types.hazinuh,
  Types.madh,
  Types.ghazal,
];

String arabicTypeName(String name) {
  switch (name) {
    case 'all':
      return 'الكل';
    case 'haja':
      return 'هجاء';
    case 'eamah':
      return 'عامه';
    case 'almuealaqat':
      return 'المعلقات';
    case 'faraq':
      return 'فراق';
    case 'hazinuh':
      return 'حزينه';
    case 'madh':
      return 'مدح';
    case 'ghazal':
      return 'غزل';
    default:
      return 'أخري';
  }
}
