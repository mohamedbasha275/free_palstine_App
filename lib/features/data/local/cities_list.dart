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

List<CityModel> citiesList = [
  CityModel(name: 'القدس',
      info: 'ويطلق عليها اسم "بيت المقدس" وإيلياء، وهي عاصمة فلسطين السياسية والثقافية والاقتصادية، وقِبلة أنظار العالم لما فيها من مقدسات إسلامية ومسيحية، ففيها المسجد الأقصى وهو أولى القبلتين وثالث الحرمين الشريفين، وقبة الصخرة، وكنيسة القيامة.وامتد العمران في القدس ليصل مدينة رام الله في الشمال، ومدينة بيت لحم في الجنوب. وتقع القدس في قلب جبال فلسطين الوسطى وفي قلب فلسطين كلها، وظلت منذ قديم الأزمنة مركز المواصلات الرئيس في فلسطين، تتوسط البحر المتوسط والأغوار؛ وشمال فلسطين وجنوبها، وترتبط القدس بحكم هذا الموقع بكل مدن فلسطين كالناصرة، وحيفا، ونابلس، ويافا، والرملة، والخليل، وبير السبع، وغزة، وأريحا، وبيسان.بناها اليبوسيون العرب قبل خمسة آلاف عام في هذا الموقع المتميز، وظلت منذ ذلك الوقت عاصمةً لفلسطين على مر العصور. فتحها المسلمون وتسلمها الخليفة العادل عمر بن الخطّاب في العام الخامس عشر للهجرة، وأعطى لأهلها العهدة العمرية التي تعتبر مثالاً في العدل والتسامح الديني والإنساني. واهتم بالقدس وإعمارها كل خلفاء وسلاطين المسلمين كعبد الملك بن مروان، والوليد بن عبد الملك، والخليفة المأمون، وصلاح الدين الأيوبي، وسليمان القانوني العثماني، وتعتبر مدينة القدس حاضرة دينية تاريخية ثقافية عالمية هامة ومتميزة.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A7%D9%84%D9%82%D8%AF%D8%B3',
      mapUrl: 'https://maps.app.goo.gl/w8EiGhN9y4ZUmKoTA'),
  CityModel(name: 'صفد',
      info: 'مدينة جبلية تقع في شرق جبال الجليل، وتمتاز بجودة مناخها وتحيط بها أشجار الزيتون وكروم العنب. كما ينتشر في الجبال والمناطق المحيطة بها غابات البلوط والسنديان الطبيعية وخاصةً غابات جبل الجرمق وسعسع. وكانت صفد طوال تاريخها مدينة مزدهرة ومركزاً إدارياً هاماً في شمال فلسطين.',
      moreInfoUrl: 'https://www.marefa.org/%D8%B5%D9%81%D8%AF',
      mapUrl: 'https://maps.app.goo.gl/qi53o9rL42q8hXB18'),
  CityModel(name: 'حيفا',
      info: 'يُطلق عليها عروس الكرمل، وهي تقع على البحر المتوسط وتعد أهم موانئ فلسطين، وتقع على الطرف الجنوبي لخليج عكا – حيفا. وقد بني قسم كبير منها على جبل الكرمل، وفيها منطقة صناعية كبيرة.',
      moreInfoUrl: 'https://www.marefa.org/%D8%AD%D9%8A%D9%81%D8%A7',
      mapUrl: 'https://maps.app.goo.gl/qCnfY574w2ZVdrBZA'),
  CityModel(name: 'يافا',
      info: 'يطلق عليها عروس البحر، وتقع في منتصف الشاطئ الفلسطيني بين حيفا وغزة جنوب مصب نهر العوجا. محاطة بالسهول الخصبة، وهي مدينة كنعانية قديمة يزيد عمرها عن خمسة آلاف عام، وكانت دوماً ميناءً هاماً للمناطق الوسطى من فلسطين وخاصةً للقدس الشريف.اشتهرت ببيارات البرتقال وأعطت يافا اسمها لأشهر أنواع البرتقال في العالم، كما اشتهرت بصناعات النسيج والصابون وسكب وتصنيع المعادن. ولعبت يافا دوراً بارزاً كمركز حضاري وثقافي وقد صدرت فيها أمهات الصحف الفلسطينية كجريدتي فلسطين والدفاع.',
      moreInfoUrl: 'https://www.marefa.org/%D9%8A%D8%A7%D9%81%D8%A7',
      mapUrl: 'https://maps.app.goo.gl/yHhkpZV3vmXFS5PF8'),
  CityModel(name: 'الخليل',
      info: 'تقع جنوب مدينة بيت لحم، وهي مدينة تاريخية قديمة، وفيها الحرم الإبراهيمي، وتشتهر بعدد من الصناعات مثل تعليب الخضار، ومصانع الأحذية والجلود والألياف والخزف والزجاج. وتعتبر مدينة الخليل المركز التجاري الرئيس لكل منطقة جبل الخليل، كما أنها مركز ديني وثقافي وإداري.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A7%D9%84%D8%AE%D9%84%D9%8A%D9%84',
      mapUrl: 'https://maps.app.goo.gl/qyVdFVyhShitxDGR6'),
  CityModel(name: 'بيت لحم',
      info: 'تقع جنوب مدينة القدس، وفيها كنيسة المهد حيث وُلد المسيح عليه السلام، وتشتهر بالصناعات السياحية مثل صناعة التحف والأصداف والتطريز.ونظراً لأهميتها الدينية والتاريخية المتميزة وقربها من مدينة القدس تطورت بيت لحم كمركز سياحي هام، وكان لأهمية موقعها في وسط جبال الخليل أكبر الأثر في نموها وازدهارها.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A8%D9%8A%D8%AA_%D9%84%D8%AD%D9%85',
      mapUrl: 'https://maps.app.goo.gl/e2hkGN6NDkbEJ7NAA'),
  CityModel(name: 'نابلس',
      info: 'تقع شمال القدس بين جبلي عيبال وجرزيم، وتشتهر بصناعة الصابون والحلويات. وهي المركز الإداري والثقافي والاقتصادي لمنطقة جبال نابلس؛ ما أدى إلى ازدهارها وتوسعها العمراني في كل الاتجاهات وخاصةً باتجاه الشرق والغرب.',
      moreInfoUrl: 'https://www.marefa.org/%D9%86%D8%A7%D8%A8%D9%84%D8%B3',
      mapUrl: 'https://maps.app.goo.gl/PN7maaj1xixUSFfr5'),
  CityModel(name: 'غزة',
      info: 'أكبر مدن جنوب فلسطين وأهمها منذ آلاف السنين حتى اليوم، وكانت على الدوام مركزاً هاماً على طرق الانتقال والتجارة بين فلسطين ومصر، وبين البحر المتوسط والبحر الأحمر والجزيرة العربية. وهي كذلك المركز الثقافي والإداري لمنطقة جنوب فلسطين. وتشتهر غزة بزراعة الخضروات والحمضيات والزهور، وفيها وُلد الإمام الشافعي، وفيها قبر هاشم بن عبد مناف ولذلك سميت بغزة هاشم.',
      moreInfoUrl: 'https://www.marefa.org/%D8%BA%D8%B2%D8%A9',
      mapUrl: 'https://maps.app.goo.gl/v8V9V8i4qQECnbS87'),
  CityModel(name: 'طولكرم',
      info: 'هي مدينة فلسطينية وعاصمة مركز محافظة طولكرم. تقع في شمال غرب الضفة الغربية، وهي ثالث أكبر مدينة في الضفة الغربية مساحةً وسكانًا بعد مدينتي الخليل ونابلس؛ حيث تبلغ مساحة أراضي المدينة وحدها أكثر من 32,610 دونم، كما تعتبر بلدية طولكرم ثالث أكبر هيئة محلية في الضفة الغربية.',
      moreInfoUrl: 'https://www.marefa.org/%D8%B7%D9%88%D9%84%D9%83%D8%B1%D9%85',
      mapUrl: 'https://maps.app.goo.gl/X6rs9Zeq3emmXkxP9'),
  CityModel(name: 'بئر السبع',
      info: 'تقع في جنوب فلسطين وتعد مفتاح النقب ومركزه الرئيس، وظلت آلافًا من السنين محطة هامة على الطرق بين فلسطين ومصر من جهة، وفلسطين والجزيرة العربية من جهة أخرى. وبحكم موقعها المتوسط في شمال النقب؛ أحاطتها عشرات القرى البدوية؛ فشكلت مركزاً ناشطاً لتجارة المنتجات الحيوانية والحبوب والأعلاف.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A8%D8%A6%D8%B1_%D8%A7%D9%84%D8%B3%D8%A8%D8%B9',
      mapUrl: 'https://maps.app.goo.gl/jJoQtMAkbKtpwpw17'),
  CityModel(name: 'جنين',
      info: 'جنين مدينة فلسطينية، ومركز محافظة جنين وأكبر مدنها، تقع في شمال الضفة الغربية التابعة للسلطة الفلسطينية. تعتبر تاريخيا، إحدى مدن المثلث في شمال فلسطين، وتبعد عن القدس مسافة 75 كيلومترا إلى الشمال. تطل جنين على غور الأردن من ناحية الشرق، ومرج بن عامر إلى جهة الشمال.',
      moreInfoUrl: 'https://www.marefa.org/%D8%AC%D9%86%D9%8A%D9%86',
      mapUrl: 'https://maps.app.goo.gl/1zCTUdfxyw2CoxKEA'),
  CityModel(name: 'بيسان',
      info: 'مدينة بيسان هي مدينة عربية تعد من أقدم مدن فلسطين التاريخية، تقع إلى الجنوب من بحيرة طبريا وإلى الشرق من مرج بني عامر، وتبعد 84 كيلو مترًا عن مدينة القدس. قبل نكبة عام 1948 كانت بيسان مدينة زراعية من الدرجة الأولى؛ نظرًا لوفرة مياهها وانبساط أرضها وخصب تربتها. الاسم الكنعاني لمدينة بيسان هو "بيت شان" ويعني بيت الإله شان أو بيت السكون.تعد مدينة بيسان محطة سياحية بارزة لكثرة ما تحويه من آثار قديمة؛ فهي تحتضن الكثير من بقايا المعابد والكنائس والمدافن والأعمدة التي يعود تاريخها إلى آلاف السنين. ومعظم الآثار الموجودة فيها تعود إلى فترة الحكم الإسلامي، إذ تحوي الكثير من بقايا البيوت العربية المهدمة. ومن أشهر المناطق الأثرية في بيسان: تل الحصن، وتل المصطبة، وتل البصول، وتل الجسر، وتل الزهرة. ',
      moreInfoUrl: 'https://www.marefa.org/%D8%A8%D9%8A%D8%B3%D8%A7%D9%86',
      mapUrl: 'https://maps.app.goo.gl/zSuNRiDF6mo8gDpq7'),
  CityModel(name: 'طبريا',
      info: ' مدينة طبريا هي إحدى أقدم المدن الفلسطينية، تقع في الجزء الشمالي الشرقي لفلسطين، على ضفاف بحيرة تاريخية، وتمتد على سهل منبسط غني بالغابات الجميلة. وقد شكل موقعها منذ إنشائها مركزاً تجارياً وعسكرياً وسياحياً مهماً؛ فهي تقع على الطريق التجاري الذي يبدأ من دمشق، مروراً باللجون وقلنسوة واللد؛ مواصلاً اتجاهه عبر أراضي أسدود وغزة ورفح، فسيناء ومصر. ونظرًا لخصوبة أرض مدينة طبريا ووفرة مياهها ومجاورتها بحيرة طبرية الغنية بالأسماك، إضافة إلى جمال طبيعتها وكثرة سهولها الخضراء، وطبيعتها المتميزة بتعدد الأودية والمنحدرات الجبلية، ولاحتوائها على العديد من المواقع الأثرية – فقد شكلت مهنة الزراعة وحرفة صيد الأسماك إضافة إلى الرحلات والزيارات السياحية أهم الموارد الاقتصادية لها. بعد النكبة تغيرت معالم طبريا، خصوصاً المنطقة الشمالية؛ إذ هدم الاحتلال الأحياء العربية، لتحل محلها الحدائق والمتنزهات العامة والفنادق والمباني الحديثة.',
      moreInfoUrl: 'https://www.marefa.org/%D9%85%D8%AF%D9%8A%D9%86%D8%A9_%D8%B7%D8%A8%D8%B1%D9%8A%D8%A7', mapUrl: 'https://maps.app.goo.gl/XbZR6sFMR6hMfqG2A'),
      CityModel(name: 'عكا',
      info: 'تقع مدينة عكا في الجهة الشمالية الغربية من فلسطين، وتتميز بموقعها الذي يمتد على طول ساحل البحر الأبيض المتوسط على الطرف الشمالي من خليج حيفا المعروف بخليج عكا سابقاً، وبذلك فإنّ مدينة عكا ذات موقع استراتيجي مهم؛ إذ تربط الشرق بالنشاط التجاري والممرات المائية، وتُعدُّ إحدى المدن التاريخية المدرجة ضمن تراث اليونسكو العالمي.تحتوي مدينة عكا على عدّة أماكن تاريخية متميزة، أهمها: قلعة عكا، وسور الجزار، وحدائق البهجة، والسرايا القديمة، والسوق الأبيض، وحمام الباشا، وخان العمدان، وخان الإفرنج، وخان الشواردة، ومقام النبي صالح، وضريح الشيخ غانم، وأضرحة الشهداء الثلاث الذين أعدمهم الإنجليز: وهم فؤاد حجازي، ومحمد جمجوم، وعطا الزير، وفيها جامع الجزار، وجامع الرمل، وجامع الزيتونة.',
      moreInfoUrl: 'https://www.marefa.org/%D8%B9%D9%83%D8%A7',
      mapUrl: 'https://maps.app.goo.gl/hW3PwbgHGsyF7Rvg6'),
  CityModel(name: 'اللد',
      info: 'مدينة كنعانية من أكبر وأقدم مدن فلسطين التاريخية، وتقع في منطقة السهل الساحلي الفلسطيني على مسافة 16 كيلو متراً جنوبي شرق مدينة يافا، وأقل من خمسة كيلو مترات شمالي شرق مدينة الرملة، وترتفع حوالي خمسين متراً عن سطح البحر. ومن أبرز معالمها: محطة السكة الحديدية، ومطار اللد، ومسجد دهمش، وبئِر الزنبق، والساحة الشرقية ومنارة الأربعين، والجامع العمري، وكنيسة القديس جورجيوس، وجسر جنداس، وخان الحلو، بالإضافة إلى بئر أبو شنب، وبئر أبي محمد عبد الرحمن بن عوف.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A7%D9%84%D9%84%D8%AF',
      mapUrl: 'https://maps.app.goo.gl/uFJqUf31wMkc9TtPA'),
  CityModel(name: 'الرملة',
      info: 'سميت الرملة لبنائها على أرض رملية، تتميز عن غيرها من المدن الفلسطينية بأنها مدينة إسلامية النشأة؛ إذ إن الذي بناها هو الخليفة سليمان بن عبد الملك في زمن خلافة أخيه الوليد، وكان أميرا لجند فلسطين في حينه، واتخذها عاصمة لجند فلسطين حين توليه الخلافة. وقد بقيت العاصمة الإدارية للجند على امتداد 400 عام حتى احتلالها على يد الفرنجة عام 1099.يوجد في المدينة العديد من المعالم التي ما تزال قائمة رغم سياسات التهويد منها: المسجد الأبيض أو المسجد الكبير، وهو مسجد أثري يعود بناؤه إلى العهد الأموي في فلسطين، ويقع في البلدة القديمة من مدينة الرملة الفلسطينية، أمر ببنائه الخليفة عمر بن عبد العزيز عام 720 م.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A7%D9%84%D8%B1%D9%85%D9%84%D8%A9',
      mapUrl: 'https://maps.app.goo.gl/jCHVNLhB6GfPMReR9'),
  CityModel(name: 'الناصرة',
      info: 'تعد الناصرة من المدن الفلسطينية التاريخية العريقة؛ إذ إنها مدينة كنعانية قديمة. وتمتاز مدينة الناصرة بتنوّعها الديني والعرقي، وهي مركز ثقافي وإعلامي مهم. تتربع مدينة الناصرة على جبل القفزة المطل على سهل مرج بن عامر. للناصرة أهمية دينية خاصة؛ ففيها 24 كنيسة وديراً وعددًا من المتاحف الدينية؛ كما تضم بعض المساجد وأضرحة الشهداء والصالحين من المسلمين، وأبرز معالم المدينة الدينية التاريخية كنيسة البشارة.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A7%D9%84%D9%86%D8%A7%D8%B5%D8%B1%D8%A9',
      mapUrl: 'https://maps.app.goo.gl/G77vYvy8LNbaCpSq6'),
  CityModel(name: 'رام الله',
      info: 'رام الله مدينة فلسطينية، ومركز محافظة رام الله والبيرة. تقع في الضفة الغربية إلى الشمال من القدس بحوالي 15 كم، وترتفع عن سطح البحر 880 مترًا، وتبلغ مساحتها 16,5 كم²، بلغ عدد سكانها حوالي 38,998 نسمة، بينما يبلغ عدد سكان المحافظة حوالي 328,861 نسمة. تلاصق رام الله مدينة البيرة حتى تتداخل مبانيهما وشوارعهما لتبدوا كمدينة واحدة، ومع أن مدينة البيرة أكبر من حيث المساحة وعدد السكان، إلّا أن الأشهر بينهما هي مدينة رام الله.',
      moreInfoUrl: 'https://www.marefa.org/%D8%B1%D8%A7%D9%85_%D8%A7%D9%84%D9%84%D9%87',
      mapUrl: 'https://maps.app.goo.gl/DhpKaZrV4scqUos5A'),

];
