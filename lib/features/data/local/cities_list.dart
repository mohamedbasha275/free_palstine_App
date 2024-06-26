class CityModel {
  final String name;
  final String info;
  final String moreInfoUrl;
  final String mapUrl;
  final String image;

  CityModel({
    required this.name,
    required this.info,
    required this.moreInfoUrl,
    required this.mapUrl,
    required this.image,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      name: json['name'],
      info: json['info'],
      moreInfoUrl: json['more_info_url'],
      mapUrl: json['map_url'],
      image: json['image'],
    );
  }
}

List<CityModel> citiesList = [
  CityModel(
      name: 'القدس',
      //info: 'بقالى سنين نفسى احكي الحكاية بتاعة منطقة فلسطين وبني اسرائيل وأصل النزاع اللي حاصل والخناقة كلها بس من أول لأن معظمنا سمع مقتطفات بس من الحكاية ونادراً لما تلاقي حد عنده الصورة كاملة ولعل الأيام دي رغم صعبتها إلا إنها التوقيت الذهبى عشان أحكيها والناس مهتمة ومتحمسة للموال حاولت الم القصة كلها في حلقة واحدة بس لأيت نفسي هظلمها وده رغم الاختصارات الكتير أوي والله فاسمحولى الحلقة دي هتبقى جزء أول بس لأننا هنرجع كتير أوي بالتاريخ لورا عشان نفهم كل حاجة من غير ما يكون المعنى من منقوص والحلقات هتلاقوها مترجمة بالانجليزية علشان لو عوزين تبعتوها لحد ما بيعرفش عربى فكباية شايك بقى وأسرتك وإلأهم عيالك ويلا بينا على الحكاية أولاً فمنطقة الشام وجزيرة العرب دي كلها واللى أصبحت فيما بعد تقسيم الدول إلى فلسطين ولبنان وغرب الأردن وغرب سوريا فتاريخيا الناس اللي سكنوا الأرض دي من سنة 3.500 أبل الميلاد كان اسمهم الكنعانيين وخد بلك الأرقام اللي هنا هنذكرها هناخد من 3.500 وأنت نازل لحد ما نصل لصفر وبعد كده من بعد الميلاد هنبدأ نعدوا واحدة، اتنين، تصاعد وأنت طالع والكنعانيون دول بقى كان أصلهم عرب من الشعوب السامية والساميون دول اللي هما يبقوا من نسل سام ابن نوح عليه السلام واللى عاشوا في تلك المنطقة ومحيطها واللي كانوا بتكلموا العربية أو العبرانية أو السريانية والحبشية وغير كدا ولذلك تسمع مصطلح معادات السامية عن اللي بتكلم عن الصهاينة خصوصاً  أو عن اليهود عموما يقولك ايه دا انت بتعادي السامية يعني العرق السامية يعني بتعادي ابناء سام ابن نوح عليه السلام ودي بقى حضرتك أول اشتغالة ومغالطة تاريخية لأننا كلنا حضرتك كعرب من ابناء سام ابن نوح وساميين بردوا ، اللى هو بيعملوا دلوقتي سواء في غزة أو في سوريا أو في سائر بلاد العرب والمسلمين دا يسمى معادات السامية برضو يا حبيبي فخد بالك بقى من النقطة دي ومتخليش حد يمسكك المهم يا طيب ان كل شعوب المنطقة دي من بعد طوفان نوح عليه السلام برضو كانوا وثنيين وبيعبودوا الأصنام لغايه سيدنا إبراهيم اللي كان برضو من نسل سام ابن نوح عليهم جميعا السلام وعارفين إحنا طبعا قصته مع نمرود ابن كنعان اللي كانت في العراق والحصل فيها تحطيم الأصنام والدعوى لعبادة رب العالمين وبعد ما نجاه ربك سبحانه وتعالى هاجر سيدنا إبراهيم للمنطقة دي في القرن 18 قبل الميلاد خت بالك إحنا نازلين من 3.500 ل 1.800 كل دا وهذه المنطقة لا كان ظهر فيها اسم فلسطين ولا بيت المقدس ولا بني إسرائيل أصلا كان ليهم أي ذكر ولا أي حال وكان من نسل ابراهيم اسماعيل واسحاق عليهم السلام اسماعيل رح إلى جزيرة العرب في قصة الشهيرة بتاعت زمزم والصفى والمروة وعاش وتزوج هناك أما اسحاق فعاش في الأرض دي وجاء من زريته ابنه يعقوب عليه السلام واللي كان معنى اسمه بالعبرانية اللي بيتكلموها يسرائيل يعني عبد الله يسرائيل عبد الله واللي أولاد اللي جمم بعده يبقوا بني عبد الله أو بني يعقوب أو بني يسرائيل عليه السلام وانتو أرفين طبعا زي مورد في القرآن عملوا إيه فأخوهم سيدنا يوسف وقصة البئر  لحد ما وصل إنه بقى وزير في مصر بعد ذلك لحد ما جئ الأسرة كلها مع سيدنا يعقوب إلى مصر مع أولاده وعاش ومع أخوهم سيدنا يوسف هناك في أم الدنيا إذن فهم ما كانوا عايشين كقبيلة برا المدينة في أرض كنعان وجم إلى مصر أم الدنيا ذريتهم بقى حضرتك عاشوا في مصر المدة 430 سنة بعد موت سيدنا يوسف وسيدنا يعقوب وأخوة يوسف عليه السلام الذرية اللي بقول لحضرتك عليها دي عاست في الأرض فساداً وسط أقباط مصر زي ما هقول لك كمان شوي وخلى بالك لما قول لك أقباط مصر مش معناها مسيحيين لأن أهل مصر وقتها غالبيتهم كانوا وثنيين أو لادينين وكان منهم بيعبد أصنام وكواكب وحاجات عجيبة كده وما كانش أصلا سيدنا عيسا جيه ولا بُعث ولا كان في رسالة أصلا علشان يبقى فيه مسيحيين بس كان اسم أهل المنطقة دي اللى هما في مصر أقباط زي ما اسم أهل المنطقة دي في فلسطين دلوقتي كان اسمهم وقتها كنعانيين وفي الفترة دي بقى حضرتك خرج الهكسوس من مصر على إيد أحمس الأول سنة 1550 قبل الميلاد وانتقلت مصر من حكم الهكسوس إلى حكم الفرعنا وكل دا و بني إسرائيل لسه موجودهين في أم الدنيا ، ربا بقى وتخريب اقتصاد على تخريب أخلاق غير زرع الفتن والأتل والنهب وغيره حتى إن قارون اللي ذكروا القرآن كان من بني إسرائيل اللي استعلوا واستكبروا بغناهم الفاحش في الوقت دا بقى ضيف على كل البلاوي اللي سمعتها وللى عملوها فى اقباط مصر مساندتهم للهكسوس اللي احتلوا المصريين اللي أكرموهم واستقبلوهم لقرون من الزمان فلما بدأ فرعون إطهادوا لبني إسرائيل ما كانش لوحده بس هو اللي كرههم ومستقصدهم دا هما أصلا كانوا منبوزين من المصريين اللي هم الأقباط بسبب خيانتهم وفسادهم حتى إن القصة بتاعت إن فرعون إطهدهم علشان شاف في المنام إن طفل منهم هيتولد و هيكون سبب هلاكه كانت مجرد رأي وتفسير أو ردوا ابن كثير في كتابه لسبب الإطهاد إلا إن دا ما ينفيش إن سبب إطهادهم الرئيسي كان بسبب فسادهم وإفسادهم اللي زكروا التاريخ وزكروا القرآن حتى إنك لما تشوف قرار فرعون بإنه يقتل الزكور منهم بس ويسيب النساء وإذ نجيناكم من آل فرعون يسومونكم سوء العذاب يذبحون أبناءكم ويستحيون نساءكم  فهتشوف هدف فرعون كان واضح جدا إن هو يقضي على نسلهم ويفني ذكرهم تماماً وده مش هيكون إلا بالقضاء على الجيل اللي عايش ومنع تزاوجهم وتكرار هذه المأساة مرة  أخرى دا بردوا كان قرار ظالم من فرعون وصفوا ربك سبحانه وتعالى بأنه على في الأرض بيقتل أبرياء تنين ملهمش ذنب حتى وإن كانوا من بني إسرائيل المهم إن ربك سبحانه وتعالى نجاههم واداهم الفرصة تاني على إيد سيدنا موسى عليه السلام فى القصة الشهيرة بتاع التحرك من محافظة الشرقية في مصر إلى البحر الاحمر وانشقاق البحر وانهم يعدوا للنحية التانيه وهلاك فرعون أمام عنيهم وهم واقفين على شاطئ سيناء من النحية الأخرى وذلك كان في القرن 13 قبل الميلاد وكل دا بقى حضرتك ولا كانوا هما وقتها بيتقال عليهم يهود وام كان عندهم قضية أنهم يروحوا للأرض المقدسة ولا أي حاجة حتى أن هذه الأرض أول مخطوطة تاريخية تسجل اسم لها لقوها فى مصر وتحديداً في الاقصر في معبد رمسيس التالث تذكر اسم شعب مجاور لمصر اسمه فلسط حارب مع رمسيس التالث سنة 1150 قبل الميلاد أيوا فلسط زي محضرتك سمعت كدا والاسم تكرر فأكثر من بردية أو أكثر من نقش على حوائط الفراعنة المهم أن طلع بقى بني إسرائيل من معجزة البحر وليس شايفين المعجزة قدام عنيهم فلقوا ناس بتعبد أصنام قدامهم فقالوا يا موسى اجعل لنا إله كما لهم آله بعدها قصة عبادة عجل السامري المشهورة والموجودة بردوا في القرآن فسيدنا موسى قالهم يا بني إسرائيل دلوقتي إحنا خرجنا من مصر هنروح فين هنطلع على الأرض اللي كان فيها اجدادكم الارض اللي عاش فيها يعقوب النبي عليه السلام وأولاده اللي هم اجداكم يلا بينا نرجع لها تاني والأرض دلوقتي بيحكمها ناس اسمهم العماليق اللي هم أحفاد الكنعانيين اللي انتو كنتوا عايشين عندهم فيلا بينا ندخلها قالوا يا موسى إن فيها قوما جبارين وإنا لن ندخلها حتى يخرجوا منها فأي يخرجوا منها فإن داخلون فسيدنا موسى قال إدخلوا عليهم الباب فإذا دخلتموه فإنكم غالبون قالوا يا موسى إن لن ندخلها أبدا ما داموا فيه فاذهب أنت وربك فقاتلا إنا هاهنا قاعدون فكتب الله سبحانه وتعالى عليهم زلهم بالتيه في أرض سيناء لمدة 40 سنة يلفوا فيهم في دواير كده في قلب الصحراء ولا عرفين لهم مفر حتى فنا جيل الزل دا كله تماما عن بكرة أبيه وجه جيل تاني يستحق فرصة جديدة خدبالك من الكلام وطبعا كان سيدنا موسى وسيدنا هارون ماتوا  وجه نبي جديد اسمه يوشع ابن نون ودا كان بعد سيدنا موسى في القرن 1200 قبل الميلاد وهو اللي أخذ الجيل الجديد دا ودخل بهم الأرض المقدسة وحكموا فعلا وأصبح لهم مملكة هناك واللى حكمها فيما بعد سيدنا داود وسيدنا سليمان في العصر الحديث وكان فيها هذه الفترة برضو الملاحم اللى ذكرها القرآن زي طالوت مع جالوت ومحاول تثبيت حكمهم فيما يسمى بالعصر الحديدى والعصر الحديدى دا حضرتك هو اللي بدأ فيه الإنسان استخدام الحديد في تصنيع السلاح وبعض الأدوات البدائية الأخرى وخذ بالك هنا في نقطة مهمة جدا إن بني إسرائيل لما دخلوا الأرض المقدسة كانت مدينة القدس قائمة وموجودة …موجوده قبلهم مش قبلهم بمية ولا متين سنة دي موجودة من القرن التلاتين قبل الميلاد وكانت اتبنت على إيد شعوب اسمهم اليابوسين وكانت مدينة القدس في القرن التمنطاشر اسمها يبوس واللي كان بيحكمها وقتها ملك اسمه ملكي صادق من اليابوسين ذلك الرجل المؤمن اللي استقبل سيدنا إبراهيم عليه السلام بعدما جي من حادثه النمرود في العراق وسموها بعدها أورسالم أو جبل السلام واللي أصبحت فيما بعد لما استولى عليها بني إسرائيل أورشالم ومؤخرا  بقى اسمها أورشاليم زي ما هو سابت في مخطوطات تل العمرنا المصرية إلى يوم الناس هذا المهم با أن من سنة 900 أبل الميلاد لحوالي 597 قبل الميلاد كانت هنا مملكة بني إسرائيل ومملكة يهوزة وكتابهم التوراة التي أنزلت على سيدنا موسى واسم بني إسرائيل أصبحت يطلق عليهم اليهود نسبه إلى الجد يهوذا بن يعقوب عليه السلام يعني اخدوا المكان احتلوه من الكنعانيين ومن اليابوسيين يعني أجدادهم فعلا كانوا في الأرض لكنهم قبيلة عايشة في البر بعيدا عن الحضر… سيدنا يعقوب مكنش عايش في مدينة يعني أجدادهم لا كانوا حكام ولا كانوا أصحاب المدينة وكالعادة يا مؤمن رجعت ريما لعادتها القديمة بعد ما استقروا في هذه الأرض ربا وفساد وإفساد بل زيد عليهم قتل الأنبياء اللي ربك سبحانه وتعالى كان بيرسلهم ما بين الحين والآخر علشان يذكروهم ويفكروهم بما كان عليهم موسى وهارون عليهم السلام جميعا..منهم اللي ذكر قتلهم في القرآن زي قصة سيدنا زكريا ويحيى عليهم السلام ومنهم من لم يذكر اسمه في القرآن… ولذلك لقب بني إسرائيل بقتله الأنبياء لحد ما جيهبقى   الملك نبوخذ نصر اللي هو ملك مملكة بابل العريضة ودخل سوى بيت المقدس وتلك المنطقة كلها بالأرض وشرد اليهود في بقاع الأرض وده كان سنة 597 قبل الميلاد وهنا يطلع لنا اسم هايكل سليمان للمرة الأولى بني إسرائيل قلولك والله قبل ما نطلع من المنطقة دي كان الملك سليمان اللي هو سيدنا سليمان بنالنا معبد هنا في هذه المنطقة أو هذا المكان اللي هو القدس حاليا ما يسمى بمعبد سليمان أو هايكل سليمان وجينا نبوخذ نصر لما طردنا من هذه المنطقة هدم المعبد دا تماما وإن الفلستيون اللي سكنو الأرض دي بعدهم بنوا بيت المقدس فوق هذا الهايكل المزعوم وإن من حقهم انهم دلوقتي يحفروا ويخرجوا المعبد دا للنور مرة أخرى  مين بقى الفلستيون أو البلشتيم بالعبري دول حضرتك شعوب موجودة في المنطقة دي من القرن اللي 12 قبل الميلاد …انت متخيل القدم يعني من قبل ما يجوا بني إسرائيل مع سيدنا يوشع بن نون سنة 900 زي ما قلتلك من شوية وبيت المقدس دا موجودة ..قالك لا والله اصل الفلستيون دول ليسو أهل الأرض دول جايين من مدن ساحلية زي كريت كده مثلا نشوية مدن ساحلية وجزر تانية واتقسموا نصين …نص راح على درنا فى ليبيا ونص حط رحاله في عسقلان اللي هي غزة دلوقتي…وانت طيب سواء بقى كانوا مهاجرين زي ما بيقولوا أو كنعانيين عرب من أصل أصيل زي ما المصادر بتقول فتاريخيا الفلستيون دول أقدم من كل الحكايات التاريخية وقبل كل القصص دي حتى بأسماء الأنبياء اللي زكرناها… فمن بقى صاحب الحق هنا وبلأرقام من غير تشغيل دماغ… المهم بقى حضرتك يظهر الملك الفارسي كورش ويقضي على مملكة بابل اللي هي بتاعة نبوخذ نصر وتحكم المملكة الفارسية لأول مرة هذه الأرض ودى كان سنة 539 قبل الميلاد وبدأ اليهود يرجعوا تاني للأرض دي كجاليات كده عايشين في مناطق معينة وطبعا من غير ما يحكموا ويمر عليهم الاسكندر الأكبر والدولة المقدونية سنة 532 قبل الميلاد ويهزموا الفرس ويخرجوهم من هذه المنطقة ..ويعدى عليهم بعدها البطلصه المصريين والسلوقيين السوريين وتفضل المنطقة كده لأكثر من 400 سنة وحولوا في هذه الأثناء بني إسرائيل إقامة الدولة أو مملكة تاني لهم في هذا المكان ولكنهم كانوا مبيكملوش ال 80 سنة في أقصى وقت ليهم وينهارتاني بعدها ولعلكوا سمعتوا مصطلح لعنة العقد الثامن كتير الأسبوعين اللي فاتحوا اللى معناها إن لعنة إقامت مملكتهم  المزعومة مكنتش بتكمل أكثر من 8 عقود يعني 80 سنة واللي هي أشار لها في الكلام بالعقد الثامن… المهم توصل بقى حضرتك الدولة الرومانية بحتلالها لهذه المنطقة سنة 63 قبل الميلاد وكانوا اليهود أول المتوديدين للملك الروماني بومبي العظيم اللى طبعا استفاد منهم كتير وسبلوهم شوية حتت كده يحكموها ولكن تحت ولايته هو طبعا وذلك لحاد ولادة المسيح عليه السلام… وهنا هيقف بقى العد التنازلي وهيطلع تاني تصاعدي لأن الميلاد بتاع المسيح عليه السلام تم خلاص سواء إن كان قبلها أو بعدها بقى على حسب الناس اللي بتختلف إلا إحنا عايزين نركز دلوقتي في موضوع العد التنازلي خلص ودلوقتي هنبدأ نعد من واحد بعد الملاد وطالع … عارفين طبعا إن سيدنا عيسى عليه السلام وولد في مدينة بيت لحم على بعض عشر كيلو متر تقريبا جنوب بيت المقدس وإنه وولد بمعجزة إلهية وردت في القرآن لأم من غير أب … فاللي طلع على أمة السيدة مريم  العذراء أنها حملت فيه من يوسف النجار كانوا هم بني إسرائيل إلا هم أصبحوا اليهود اه والله .. والاخ اللى بيراجع الفيديو في يوتيوب دي مش معادات سامية دا تريخ حضرتك وانا سامي برضو بس أنا اسمي عبدالله لكن أنا سامي برضو يعني. فاهمنى 😁.. المهم إن حتى بعد بعث عيسى عليه السلام بالرسالة الإلهية راحوا الملك الروماني اللي كان بيحكم وقتها وقالولوا بن يوسف النجار عاوز يعمل ثورة وبيحرد الناس ضدك وعاوز يستولي على الحكم وكانوا يمؤمن سبب رئيسي في مطاردة الرومان لعيسى عليه السلام .. بقلك قتلة أنبياء بقى وبالتاريخ في كل المصادر مش كلامي طبعا اليهود بيؤمنوا لحد النهارده هم والمسيحيين إن خطة اليهود نجحت وانهم فعلا صلبوه ولكن العقيدة الإسلامية واضحة جدا في هذا الجانب أن ربك سبحانه وتعالى رفعه إليه ..  وبالرغم من أن كل الانبياء والرسل جاءوا جميعا بعقيدة التوحيد إلا أنه أصبحت عندنا عقدتين في نفس زات المنطقة وكتبين كمان العقيدة اليهودية اللي شايفة إن عيسى عليه السلام ليس هو يشوع الذي ذكر في كتبهم المقدس اللى هيبعث فيهم ومنتظرين يشوع لحد النهارده وعندنا المسيحية التي أمنت بعيسى عليه السلام أنه يسوع وامنت كمان بأنه صلب وأنه سوف يبعث من جديد في آخر الزمان برضو زي ذكر في كتبهم وعندنا تورا وإنجيل وارض أصبحت مقدسة للطرفين المذكورين وطبعا أتباع عيسى عليه السلام اللى أمنوا بيبقوا مضطهدين من بني إسرائيل اللي كانوا بيحردوا عليهم  الرومان اللي حاكمين بين الحين والآخر وشافوا من اليهود أفعال يشيب لها الولدان ..خد بالك بقى المتصارعين دول هم هم الطرفين اللي بقوا حبايب النهارده وجمعتهم قضيه واحدة ألا وهي أكل أهلنا في فلسطين وده مش طائفية على فكرة لأن أهل فلسطين مش كله مسلمين بل فيهم مسيحيين بيصيبهم ما يصيب المسلمين هدم دور العبادة … المهم أننا عارفين أن ليه الرومان لسر بيحكموا هذه المنطقة وهب جيه ملك روماني اسمه قسطنطين الأول سنة 304 ميلادية وقالك خلاص خلاص مفيش بقى اضطهاد للمسيحيين تاني ورجع لهم يبني بيوتهم وكنائسهم واموالهم واعلن الراجل المسيحية دين معترف هناك بل إنه دخل كمان في المسيحية قبل ما يموت وبالمناسبة قسطنطين الأول ده هو اللي بنا مدينة القسطنطينية اللي مكانها اسطنبول التركية دلوقتي اللى فتحها فيما بعد محمد الفاتح ولكن مش عايزين نسبف الأحداث لأن كل ده قبل ولادة النبي محمد عليه الصلاة والسلام المهم إن المسيحيين بعد قرون العزاب الطويلة والويلات اللي شفوها من اليهود بمجرد بها ما أصبحت دولتهم مسيحية وأخدوا حقوهم وسترجعوا قوتهم بدأت بقى المزابح الإنتقامية ضد اليهود شردوهم وطردوهم واللي كان بيتأفش منهم بيتنكل بيه ، طبعا هرب اليهود أو بني إسرائيل من فلسطين واتفرقوا في أرض الله..  منهم اللي راح على أوروبا ومنهم اللي راح على أفريقيا ومنهم اللي نزل جنوبا إلى المدينة المنورة في الجزيرة العربية ودا يفسرلك ليه كان في يهود في مدينة رسول الله عليه وسلم عند ظهور الإسلام سنة 610 ميلاديه … السبب حضرتك أنهم وصلوا إلى جزيرة العرب قبلها ب 200 سنه وعاشوا فيها هربا من التاريخ الإسود اللى هيحاسبوا عليه واللى  هيلبسوا فيه لو راحوا تاني عن الرومان وبكدا نكون وصلنا لنهاية الجزئ دا وان شاء الله نكمل في الأجزاء اللي جايه فلو كنت طولت عليكم ولعلي أكون أفت نفسي قبل ما أكون أفتكم فانتظرون ان شاء الله في الحلقات القادمة وبس كدا يا  مؤمن وسلام عليكوا…',
      info:
          'ويطلق عليها اسم "بيت المقدس" وإيلياء، وهي عاصمة فلسطين السياسية والثقافية والاقتصادية، وقِبلة أنظار العالم لما فيها من مقدسات إسلامية ومسيحية، ففيها المسجد الأقصى وهو أولى القبلتين وثالث الحرمين الشريفين، وقبة الصخرة، وكنيسة القيامة.وامتد العمران في القدس ليصل مدينة رام الله في الشمال، ومدينة بيت لحم في الجنوب. وتقع القدس في قلب جبال فلسطين الوسطى وفي قلب فلسطين كلها، وظلت منذ قديم الأزمنة مركز المواصلات الرئيس في فلسطين، تتوسط البحر المتوسط والأغوار؛ وشمال فلسطين وجنوبها، وترتبط القدس بحكم هذا الموقع بكل مدن فلسطين كالناصرة، وحيفا، ونابلس، ويافا، والرملة، والخليل، وبير السبع، وغزة، وأريحا، وبيسان.بناها اليبوسيون العرب قبل خمسة آلاف عام في هذا الموقع المتميز، وظلت منذ ذلك الوقت عاصمةً لفلسطين على مر العصور. فتحها المسلمون وتسلمها الخليفة العادل عمر بن الخطّاب في العام الخامس عشر للهجرة، وأعطى لأهلها العهدة العمرية التي تعتبر مثالاً في العدل والتسامح الديني والإنساني. واهتم بالقدس وإعمارها كل خلفاء وسلاطين المسلمين كعبد الملك بن مروان، والوليد بن عبد الملك، والخليفة المأمون، وصلاح الدين الأيوبي، وسليمان القانوني العثماني، وتعتبر مدينة القدس حاضرة دينية تاريخية ثقافية عالمية هامة ومتميزة.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A7%D9%84%D9%82%D8%AF%D8%B3',
      mapUrl: 'https://maps.app.goo.gl/w8EiGhN9y4ZUmKoTA',
    image: 'assets/images/1.jpeg',
  ),
  CityModel(
      name: 'صفد',
      info:
          'مدينة جبلية تقع في شرق جبال الجليل، وتمتاز بجودة مناخها وتحيط بها أشجار الزيتون وكروم العنب. كما ينتشر في الجبال والمناطق المحيطة بها غابات البلوط والسنديان الطبيعية وخاصةً غابات جبل الجرمق وسعسع. وكانت صفد طوال تاريخها مدينة مزدهرة ومركزاً إدارياً هاماً في شمال فلسطين.',
      moreInfoUrl: 'https://www.marefa.org/%D8%B5%D9%81%D8%AF',
      mapUrl: 'https://maps.app.goo.gl/qi53o9rL42q8hXB18',
    image: 'assets/images/2.jpeg',),
  CityModel(
      name: 'حيفا',
      info:
          'يُطلق عليها عروس الكرمل، وهي تقع على البحر المتوسط وتعد أهم موانئ فلسطين، وتقع على الطرف الجنوبي لخليج عكا – حيفا. وقد بني قسم كبير منها على جبل الكرمل، وفيها منطقة صناعية كبيرة.',
      moreInfoUrl: 'https://www.marefa.org/%D8%AD%D9%8A%D9%81%D8%A7',
      mapUrl: 'https://maps.app.goo.gl/qCnfY574w2ZVdrBZA',
    image: 'assets/images/3.jpeg',),
  CityModel(
      name: 'يافا',
      info:
          'يطلق عليها عروس البحر، وتقع في منتصف الشاطئ الفلسطيني بين حيفا وغزة جنوب مصب نهر العوجا. محاطة بالسهول الخصبة، وهي مدينة كنعانية قديمة يزيد عمرها عن خمسة آلاف عام، وكانت دوماً ميناءً هاماً للمناطق الوسطى من فلسطين وخاصةً للقدس الشريف.اشتهرت ببيارات البرتقال وأعطت يافا اسمها لأشهر أنواع البرتقال في العالم، كما اشتهرت بصناعات النسيج والصابون وسكب وتصنيع المعادن. ولعبت يافا دوراً بارزاً كمركز حضاري وثقافي وقد صدرت فيها أمهات الصحف الفلسطينية كجريدتي فلسطين والدفاع.',
      moreInfoUrl: 'https://www.marefa.org/%D9%8A%D8%A7%D9%81%D8%A7',
      mapUrl: 'https://maps.app.goo.gl/yHhkpZV3vmXFS5PF8',
    image: 'assets/images/4.png',),
  CityModel(
      name: 'الخليل',
      info:
          'تقع جنوب مدينة بيت لحم، وهي مدينة تاريخية قديمة، وفيها الحرم الإبراهيمي، وتشتهر بعدد من الصناعات مثل تعليب الخضار، ومصانع الأحذية والجلود والألياف والخزف والزجاج. وتعتبر مدينة الخليل المركز التجاري الرئيس لكل منطقة جبل الخليل، كما أنها مركز ديني وثقافي وإداري.',
      moreInfoUrl:
          'https://www.marefa.org/%D8%A7%D9%84%D8%AE%D9%84%D9%8A%D9%84',
      mapUrl: 'https://maps.app.goo.gl/qyVdFVyhShitxDGR6',
    image: 'assets/images/5.jpeg',),
  CityModel(
      name: 'بيت لحم',
      info:
          'تقع جنوب مدينة القدس، وفيها كنيسة المهد حيث وُلد المسيح عليه السلام، وتشتهر بالصناعات السياحية مثل صناعة التحف والأصداف والتطريز.ونظراً لأهميتها الدينية والتاريخية المتميزة وقربها من مدينة القدس تطورت بيت لحم كمركز سياحي هام، وكان لأهمية موقعها في وسط جبال الخليل أكبر الأثر في نموها وازدهارها.',
      moreInfoUrl:
          'https://www.marefa.org/%D8%A8%D9%8A%D8%AA_%D9%84%D8%AD%D9%85',
      mapUrl: 'https://maps.app.goo.gl/e2hkGN6NDkbEJ7NAA',
    image: 'assets/images/6.png',),
  CityModel(
      name: 'نابلس',
      info:
          'تقع شمال القدس بين جبلي عيبال وجرزيم، وتشتهر بصناعة الصابون والحلويات. وهي المركز الإداري والثقافي والاقتصادي لمنطقة جبال نابلس؛ ما أدى إلى ازدهارها وتوسعها العمراني في كل الاتجاهات وخاصةً باتجاه الشرق والغرب.',
      moreInfoUrl: 'https://www.marefa.org/%D9%86%D8%A7%D8%A8%D9%84%D8%B3',
      mapUrl: 'https://maps.app.goo.gl/PN7maaj1xixUSFfr5',
    image: 'assets/images/7.jpeg',),
  CityModel(
      name: 'غزة',
      info:
          'أكبر مدن جنوب فلسطين وأهمها منذ آلاف السنين حتى اليوم، وكانت على الدوام مركزاً هاماً على طرق الانتقال والتجارة بين فلسطين ومصر، وبين البحر المتوسط والبحر الأحمر والجزيرة العربية. وهي كذلك المركز الثقافي والإداري لمنطقة جنوب فلسطين. وتشتهر غزة بزراعة الخضروات والحمضيات والزهور، وفيها وُلد الإمام الشافعي، وفيها قبر هاشم بن عبد مناف ولذلك سميت بغزة هاشم.',
      moreInfoUrl: 'https://www.marefa.org/%D8%BA%D8%B2%D8%A9',
      mapUrl: 'https://maps.app.goo.gl/v8V9V8i4qQECnbS87',
    image: 'assets/images/8.jpeg',),
  CityModel(
      name: 'طولكرم',
      info:
          'هي مدينة فلسطينية وعاصمة مركز محافظة طولكرم. تقع في شمال غرب الضفة الغربية، وهي ثالث أكبر مدينة في الضفة الغربية مساحةً وسكانًا بعد مدينتي الخليل ونابلس؛ حيث تبلغ مساحة أراضي المدينة وحدها أكثر من 32,610 دونم، كما تعتبر بلدية طولكرم ثالث أكبر هيئة محلية في الضفة الغربية.',
      moreInfoUrl:
          'https://www.marefa.org/%D8%B7%D9%88%D9%84%D9%83%D8%B1%D9%85',
      mapUrl: 'https://maps.app.goo.gl/X6rs9Zeq3emmXkxP9',
    image: 'assets/images/9.jpeg',),
  // CityModel(
  //     name: 'بئر السبع',
  //     info:
  //         'تقع في جنوب فلسطين وتعد مفتاح النقب ومركزه الرئيس، وظلت آلافًا من السنين محطة هامة على الطرق بين فلسطين ومصر من جهة، وفلسطين والجزيرة العربية من جهة أخرى. وبحكم موقعها المتوسط في شمال النقب؛ أحاطتها عشرات القرى البدوية؛ فشكلت مركزاً ناشطاً لتجارة المنتجات الحيوانية والحبوب والأعلاف.',
  //     moreInfoUrl:
  //         'https://www.marefa.org/%D8%A8%D8%A6%D8%B1_%D8%A7%D9%84%D8%B3%D8%A8%D8%B9',
  //     mapUrl: 'https://maps.app.goo.gl/jJoQtMAkbKtpwpw17'),
  CityModel(
      name: 'جنين',
      info:
          'جنين مدينة فلسطينية، ومركز محافظة جنين وأكبر مدنها، تقع في شمال الضفة الغربية التابعة للسلطة الفلسطينية. تعتبر تاريخيا، إحدى مدن المثلث في شمال فلسطين، وتبعد عن القدس مسافة 75 كيلومترا إلى الشمال. تطل جنين على غور الأردن من ناحية الشرق، ومرج بن عامر إلى جهة الشمال.',
      moreInfoUrl: 'https://www.marefa.org/%D8%AC%D9%86%D9%8A%D9%86',
      mapUrl: 'https://maps.app.goo.gl/1zCTUdfxyw2CoxKEA',
    image: 'assets/images/10.jpeg',),
  CityModel(
      name: 'بيسان',
      info:
          'مدينة بيسان هي مدينة عربية تعد من أقدم مدن فلسطين التاريخية، تقع إلى الجنوب من بحيرة طبريا وإلى الشرق من مرج بني عامر، وتبعد 84 كيلو مترًا عن مدينة القدس. قبل نكبة عام 1948 كانت بيسان مدينة زراعية من الدرجة الأولى؛ نظرًا لوفرة مياهها وانبساط أرضها وخصب تربتها. الاسم الكنعاني لمدينة بيسان هو "بيت شان" ويعني بيت الإله شان أو بيت السكون.تعد مدينة بيسان محطة سياحية بارزة لكثرة ما تحويه من آثار قديمة؛ فهي تحتضن الكثير من بقايا المعابد والكنائس والمدافن والأعمدة التي يعود تاريخها إلى آلاف السنين. ومعظم الآثار الموجودة فيها تعود إلى فترة الحكم الإسلامي، إذ تحوي الكثير من بقايا البيوت العربية المهدمة. ومن أشهر المناطق الأثرية في بيسان: تل الحصن، وتل المصطبة، وتل البصول، وتل الجسر، وتل الزهرة. ',
      moreInfoUrl: 'https://www.marefa.org/%D8%A8%D9%8A%D8%B3%D8%A7%D9%86',
      mapUrl: 'https://maps.app.goo.gl/zSuNRiDF6mo8gDpq7',
    image: 'assets/images/11.jpeg',),
  CityModel(
      name: 'طبريا',
      info:
          ' مدينة طبريا هي إحدى أقدم المدن الفلسطينية، تقع في الجزء الشمالي الشرقي لفلسطين، على ضفاف بحيرة تاريخية، وتمتد على سهل منبسط غني بالغابات الجميلة. وقد شكل موقعها منذ إنشائها مركزاً تجارياً وعسكرياً وسياحياً مهماً؛ فهي تقع على الطريق التجاري الذي يبدأ من دمشق، مروراً باللجون وقلنسوة واللد؛ مواصلاً اتجاهه عبر أراضي أسدود وغزة ورفح، فسيناء ومصر. ونظرًا لخصوبة أرض مدينة طبريا ووفرة مياهها ومجاورتها بحيرة طبرية الغنية بالأسماك، إضافة إلى جمال طبيعتها وكثرة سهولها الخضراء، وطبيعتها المتميزة بتعدد الأودية والمنحدرات الجبلية، ولاحتوائها على العديد من المواقع الأثرية – فقد شكلت مهنة الزراعة وحرفة صيد الأسماك إضافة إلى الرحلات والزيارات السياحية أهم الموارد الاقتصادية لها. بعد النكبة تغيرت معالم طبريا، خصوصاً المنطقة الشمالية؛ إذ هدم الاحتلال الأحياء العربية، لتحل محلها الحدائق والمتنزهات العامة والفنادق والمباني الحديثة.',
      moreInfoUrl:
          'https://www.marefa.org/%D9%85%D8%AF%D9%8A%D9%86%D8%A9_%D8%B7%D8%A8%D8%B1%D9%8A%D8%A7',
      mapUrl: 'https://maps.app.goo.gl/XbZR6sFMR6hMfqG2A',
    image: 'assets/images/12.png',),
  CityModel(
      name: 'عكا',
      info:
          'تقع مدينة عكا في الجهة الشمالية الغربية من فلسطين، وتتميز بموقعها الذي يمتد على طول ساحل البحر الأبيض المتوسط على الطرف الشمالي من خليج حيفا المعروف بخليج عكا سابقاً، وبذلك فإنّ مدينة عكا ذات موقع استراتيجي مهم؛ إذ تربط الشرق بالنشاط التجاري والممرات المائية، وتُعدُّ إحدى المدن التاريخية المدرجة ضمن تراث اليونسكو العالمي.تحتوي مدينة عكا على عدّة أماكن تاريخية متميزة، أهمها: قلعة عكا، وسور الجزار، وحدائق البهجة، والسرايا القديمة، والسوق الأبيض، وحمام الباشا، وخان العمدان، وخان الإفرنج، وخان الشواردة، ومقام النبي صالح، وضريح الشيخ غانم، وأضرحة الشهداء الثلاث الذين أعدمهم الإنجليز: وهم فؤاد حجازي، ومحمد جمجوم، وعطا الزير، وفيها جامع الجزار، وجامع الرمل، وجامع الزيتونة.',
      moreInfoUrl: 'https://www.marefa.org/%D8%B9%D9%83%D8%A7',
      mapUrl: 'https://maps.app.goo.gl/hW3PwbgHGsyF7Rvg6',
    image: 'assets/images/13.png',),
  CityModel(
      name: 'اللد',
      info:
          'مدينة كنعانية من أكبر وأقدم مدن فلسطين التاريخية، وتقع في منطقة السهل الساحلي الفلسطيني على مسافة 16 كيلو متراً جنوبي شرق مدينة يافا، وأقل من خمسة كيلو مترات شمالي شرق مدينة الرملة، وترتفع حوالي خمسين متراً عن سطح البحر. ومن أبرز معالمها: محطة السكة الحديدية، ومطار اللد، ومسجد دهمش، وبئِر الزنبق، والساحة الشرقية ومنارة الأربعين، والجامع العمري، وكنيسة القديس جورجيوس، وجسر جنداس، وخان الحلو، بالإضافة إلى بئر أبو شنب، وبئر أبي محمد عبد الرحمن بن عوف.',
      moreInfoUrl: 'https://www.marefa.org/%D8%A7%D9%84%D9%84%D8%AF',
      mapUrl: 'https://maps.app.goo.gl/uFJqUf31wMkc9TtPA',
    image: 'assets/images/14.jpeg',),
  CityModel(
      name: 'الرملة',
      info:
          'سميت الرملة لبنائها على أرض رملية، تتميز عن غيرها من المدن الفلسطينية بأنها مدينة إسلامية النشأة؛ إذ إن الذي بناها هو الخليفة سليمان بن عبد الملك في زمن خلافة أخيه الوليد، وكان أميرا لجند فلسطين في حينه، واتخذها عاصمة لجند فلسطين حين توليه الخلافة. وقد بقيت العاصمة الإدارية للجند على امتداد 400 عام حتى احتلالها على يد الفرنجة عام 1099.يوجد في المدينة العديد من المعالم التي ما تزال قائمة رغم سياسات التهويد منها: المسجد الأبيض أو المسجد الكبير، وهو مسجد أثري يعود بناؤه إلى العهد الأموي في فلسطين، ويقع في البلدة القديمة من مدينة الرملة الفلسطينية، أمر ببنائه الخليفة عمر بن عبد العزيز عام 720 م.',
      moreInfoUrl:
          'https://www.marefa.org/%D8%A7%D9%84%D8%B1%D9%85%D9%84%D8%A9',
      mapUrl: 'https://maps.app.goo.gl/jCHVNLhB6GfPMReR9',
    image: 'assets/images/15.jpeg',),
  CityModel(
      name: 'الناصرة',
      info:
          'تعد الناصرة من المدن الفلسطينية التاريخية العريقة؛ إذ إنها مدينة كنعانية قديمة. وتمتاز مدينة الناصرة بتنوّعها الديني والعرقي، وهي مركز ثقافي وإعلامي مهم. تتربع مدينة الناصرة على جبل القفزة المطل على سهل مرج بن عامر. للناصرة أهمية دينية خاصة؛ ففيها 24 كنيسة وديراً وعددًا من المتاحف الدينية؛ كما تضم بعض المساجد وأضرحة الشهداء والصالحين من المسلمين، وأبرز معالم المدينة الدينية التاريخية كنيسة البشارة.',
      moreInfoUrl:
          'https://www.marefa.org/%D8%A7%D9%84%D9%86%D8%A7%D8%B5%D8%B1%D8%A9',
      mapUrl: 'https://maps.app.goo.gl/G77vYvy8LNbaCpSq6',
    image: 'assets/images/16.jpeg',),
  CityModel(
      name: 'رام الله',
      info:
          'رام الله مدينة فلسطينية، ومركز محافظة رام الله والبيرة. تقع في الضفة الغربية إلى الشمال من القدس بحوالي 15 كم، وترتفع عن سطح البحر 880 مترًا، وتبلغ مساحتها 16,5 كم²، بلغ عدد سكانها حوالي 38,998 نسمة، بينما يبلغ عدد سكان المحافظة حوالي 328,861 نسمة. تلاصق رام الله مدينة البيرة حتى تتداخل مبانيهما وشوارعهما لتبدوا كمدينة واحدة، ومع أن مدينة البيرة أكبر من حيث المساحة وعدد السكان، إلّا أن الأشهر بينهما هي مدينة رام الله.',
      moreInfoUrl:
          'https://www.marefa.org/%D8%B1%D8%A7%D9%85_%D8%A7%D9%84%D9%84%D9%87',
      mapUrl: 'https://maps.app.goo.gl/DhpKaZrV4scqUos5A',
    image: 'assets/images/17.png',),
];
