class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    List<AnswerModel> answers = [];
    for (var item in json['answers']) {
      answers.add(AnswerModel.fromJson(item));
    }
    return QuestionModel(
      title: json['title'],
      answers: answers,
    );
  }
}

class AnswerModel {
  final String content;
  final bool isTrue;

  AnswerModel({
    required this.content,
    required this.isTrue,
  });

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return AnswerModel(
      //id: json['id'],
      content: json['content'],
      isTrue: json['is_true'],
    );
  }
}

List<QuestionModel> questionsList = [
  QuestionModel(
    title: 'ما هي عاصمة فلسطين؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: false),
      AnswerModel(content: 'القدس', isTrue: true),
      AnswerModel(content: 'غزة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي أكبر مدينة في فلسطين من حيث عدد السكان؟',
    answers: [
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
      AnswerModel(content: 'غزة', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'أي مدينة فلسطينية تشتهر بالصناعات اليدوية والحرفية؟',
    answers: [
      AnswerModel(content: 'بيت لحم', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: true),
      AnswerModel(content: 'نابلس', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي مدينة تقع على الضفة الغربية وتحظى بأهمية تاريخية كبيرة؟',
    answers: [
      AnswerModel(content: 'بيت لحم', isTrue: false),
      AnswerModel(content: 'نابلس', isTrue: true),
      AnswerModel(content: 'رام الله', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي العاصمة الاقتصادية لفلسطين في الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: true),
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي مدينة فلسطينية تشتهر بزراعة الزيتون؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: false),
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'جنين', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة الواقعة على الساحل الشمالي لفلسطين؟',
    answers: [
      AnswerModel(content: 'غزة', isTrue: false),
      AnswerModel(content: 'حيفا', isTrue: true),
      AnswerModel(content: 'جنين', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي مدينة فلسطينية تشتهر بصناعة السجاد الفلسطيني؟',
    answers: [
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'أي مدينة تاريخية تشتهر بالمعمار العثماني؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: false),
      AnswerModel(content: 'جنين', isTrue: true),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي الصحراء التي تمتد في شمال فلسطين وتشكل جزءً من الجليل؟',
    answers: [
      AnswerModel(content: 'صحراء الأردن', isTrue: false),
      AnswerModel(content: 'صحراء النقب', isTrue: false),
      AnswerModel(content: 'صحراء الجليل', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هي الصحراء التي تمتد في منطقة الجفتلك؟',
    answers: [
      AnswerModel(content: 'صحراء العريش', isTrue: false),
      AnswerModel(content: 'صحراء النقب', isTrue: true),
      AnswerModel(content: 'صحراء الجليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي الصحراء التي تشمل منطقة سهل عكا؟',
    answers: [
      AnswerModel(content: 'صحراء النقب', isTrue: false),
      AnswerModel(content: 'صحراء الجليل', isTrue: true),
      AnswerModel(content: 'صحراء الأردن', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه الصحاري تقع في المناطق الجنوبية لفلسطين؟',
    answers: [
      AnswerModel(content: 'صحراء العريش', isTrue: false),
      AnswerModel(content: 'صحراء الجليل', isTrue: false),
      AnswerModel(content: 'صحراء النقب', isTrue: true),
    ],
  ),
  QuestionModel(
    title:
        'ما هي الصحراء التي تمتد في الحدود الجنوبية لفلسطين الممتدة إلى سيناء؟',
    answers: [
      AnswerModel(content: 'صحراء الجليل', isTrue: false),
      AnswerModel(content: 'صحراء العريش', isTrue: false),
      AnswerModel(content: 'صحراء النقب', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هي الصحراء التي تمتد في الحدود الشمالية الشرقية لفلسطين؟',
    answers: [
      AnswerModel(content: 'صحراء الأردن', isTrue: true),
      AnswerModel(content: 'صحراء النقب', isTrue: false),
      AnswerModel(content: 'صحراء الجليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي صحراء تعتبر الأكبر امتدادًا في جنوب فلسطين؟',
    answers: [
      AnswerModel(content: 'صحراء العريش', isTrue: false),
      AnswerModel(content: 'صحراء الجليل', isTrue: false),
      AnswerModel(content: 'صحراء النقب', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هي أخر مدينة في جنوب فلسطين؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
      AnswerModel(content: 'بئر السبع', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هي أقصى مدينة في شمال فلسطين؟',
    answers: [
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'جنين', isTrue: false),
      AnswerModel(content: 'دان', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هي أقصى مدينة في الغرب الفلسطيني؟',
    answers: [
      AnswerModel(content: 'طولكرم', isTrue: false),
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'غزة', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هو أعلى نقطة في فلسطين؟',
    answers: [
      AnswerModel(content: 'جبل جرزيم', isTrue: true),
      AnswerModel(content: 'جبل عيبال', isTrue: false),
      AnswerModel(content: 'جبل نيبو', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هو الرمز الهاتفي لفلسطين؟',
    answers: [
      AnswerModel(content: '+970', isTrue: true),
      AnswerModel(content: '+972', isTrue: false),
      AnswerModel(content: '+974', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي السلعة الزراعية الرئيسية في فلسطين؟',
    answers: [
      AnswerModel(content: 'الزيتون', isTrue: true),
      AnswerModel(content: 'العنب', isTrue: false),
      AnswerModel(content: 'القمح', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي الحدث الإسلامي الذي يرتبط بالمسجد الأقصى في القرآن؟',
    answers: [
      AnswerModel(content: 'الإسراء والمعراج', isTrue: true),
      AnswerModel(content: 'الهجرة', isTrue: false),
      AnswerModel(content: 'غزوة حنين', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هو اسم الصحابي الذي فتح بيت المقدس بعد فتح مكة؟',
    answers: [
      AnswerModel(content: 'خالد بن الوليد', isTrue: false),
      AnswerModel(content: 'عمر بن الخطاب', isTrue: true),
      AnswerModel(content: 'علي بن أبي طالب', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'في أي عام فتح صلاح الدين الأيوبي بيت المقدس؟',
    answers: [
      AnswerModel(content: '1099م', isTrue: false),
      AnswerModel(content: '1187م', isTrue: true),
      AnswerModel(content: '1291م', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي السنة التي فتح فيها المسلمون بيت المقدس؟',
    answers: [
      AnswerModel(content: '619م', isTrue: false),
      AnswerModel(content: '637م', isTrue: true),
      AnswerModel(content: '641م', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تقع في الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: true),
      AnswerModel(content: 'الرياض', isTrue: false),
      AnswerModel(content: 'بيروت', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المناطق تعتبر جزءًا من قطاع غزة؟',
    answers: [
      AnswerModel(content: 'خان يونس', isTrue: true),
      AnswerModel(content: 'جرش', isTrue: false),
      AnswerModel(content: 'أسوان', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه البحيرات تقع في فلسطين؟',
    answers: [
      AnswerModel(content: 'بحيرة طبريا', isTrue: true),
      AnswerModel(content: 'بحيرة ناصر', isTrue: false),
      AnswerModel(content: 'بحيرة فكتوريا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة التي تعتبر مهد المسيحية؟',
    answers: [
      AnswerModel(content: 'بيت لحم', isTrue: true),
      AnswerModel(content: 'الناصرة', isTrue: false),
      AnswerModel(content: 'القاهرة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه الجبال يقع في فلسطين؟',
    answers: [
      AnswerModel(content: 'جبل الجرمق', isTrue: true),
      AnswerModel(content: 'جبل سيناء', isTrue: false),
      AnswerModel(content: 'جبل الألب', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تقع على الساحل الفلسطيني للبحر المتوسط؟',
    answers: [
      AnswerModel(content: 'عكا', isTrue: true),
      AnswerModel(content: 'السويس', isTrue: false),
      AnswerModel(content: 'دمياط', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه البلدات تشتهر بالبرتقال الفلسطيني؟',
    answers: [
      AnswerModel(content: 'يافا', isTrue: true),
      AnswerModel(content: 'الإسماعيلية', isTrue: false),
      AnswerModel(content: 'مرسى مطروح', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه الصحاري تقع جنوب فلسطين؟',
    answers: [
      AnswerModel(content: 'صحراء النقب', isTrue: true),
      AnswerModel(content: 'صحراء ليبيا', isTrue: false),
      AnswerModel(content: 'صحراء الكوبي', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه البوابات تعتبر مدخل للمسجد الأقصى؟',
    answers: [
      AnswerModel(content: 'باب العمود', isTrue: true),
      AnswerModel(content: 'باب الخليل', isTrue: false),
      AnswerModel(content: 'باب النصر', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه الأنهار يجري في الأراضي الفلسطينية؟',
    answers: [
      AnswerModel(content: 'نهر الأردن', isTrue: true),
      AnswerModel(content: 'نهر النيل', isTrue: false),
      AnswerModel(content: 'نهر دجلة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن فلسطينية؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: true),
      AnswerModel(content: 'دمشق', isTrue: false),
      AnswerModel(content: 'الإسكندرية', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن ليست فلسطينية؟',
    answers: [
      AnswerModel(content: 'غزة', isTrue: false),
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'عمان', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه الدول تشترك في الحدود مع فلسطين؟',
    answers: [
      AnswerModel(content: 'مصر', isTrue: true),
      AnswerModel(content: 'العراق', isTrue: false),
      AnswerModel(content: 'السعودية', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هو أعلى جبل في فلسطين؟',
    answers: [
      AnswerModel(content: 'جبل الشيخ', isTrue: false),
      AnswerModel(content: 'جبل الكرمل', isTrue: false),
      AnswerModel(content: 'جبل الطور', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة التي تعتبر ميناء فلسطين الرئيسي على البحر المتوسط؟',
    answers: [
      AnswerModel(content: 'غزة', isTrue: false),
      AnswerModel(content: 'يافا', isTrue: true),
      AnswerModel(content: 'أريحا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تعد المركز الإداري للسلطة الفلسطينية؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: true),
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'أم الفحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة التي تشتهر بصناعة الصابون النابلسي التقليدي؟',
    answers: [
      AnswerModel(content: 'نابلس', isTrue: true),
      AnswerModel(content: 'اللد', isTrue: false),
      AnswerModel(content: 'طبريا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المناطق تقع في محافظة جنين؟',
    answers: [
      AnswerModel(content: 'قباطية', isTrue: true),
      AnswerModel(content: 'قلقيلية', isTrue: false),
      AnswerModel(content: 'الخضيرة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تعتبر العاصمة الثقافية لفلسطين؟',
    answers: [
      AnswerModel(content: 'القدس', isTrue: true),
      AnswerModel(content: 'الناصرة', isTrue: false),
      AnswerModel(content: 'إربد', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تقع شمال غرب الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'طولكرم', isTrue: true),
      AnswerModel(content: 'أريحا', isTrue: false),
      AnswerModel(content: 'السويداء', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه البلدات الفلسطينية تعرف ببوابة النقب؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: false),
      AnswerModel(content: 'بئر السبع', isTrue: true),
      AnswerModel(content: 'موديعين', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المناطق تعتبر أعلى نقطة في القدس؟',
    answers: [
      AnswerModel(content: 'جبل المشارف', isTrue: true),
      AnswerModel(content: 'جبل الزيتون', isTrue: false),
      AnswerModel(content: 'جبل الطور', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه القرى تعتبر من أقدم مواقع التجمع البشري في فلسطين؟',
    answers: [
      AnswerModel(content: 'أريحا', isTrue: true),
      AnswerModel(content: 'بيت ساحور', isTrue: false),
      AnswerModel(content: 'صفد', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن الفلسطينية تعتبر مركزًا للتجارة والأعمال؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: true),
      AnswerModel(content: 'حيفا', isTrue: false),
      AnswerModel(content: 'طبريا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تضم ميناءً قديمًا يعود تاريخه للعصر البرونزي؟',
    answers: [
      AnswerModel(content: 'عكا', isTrue: true),
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن لها موقع استراتيجي على ساحل البحر الأبيض المتوسط؟',
    answers: [
      AnswerModel(content: 'حيفا', isTrue: true),
      AnswerModel(content: 'الزرقاء', isTrue: false),
      AnswerModel(content: 'معان', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المناطق تعد من أكثر المناطق خصوبة في فلسطين؟',
    answers: [
      AnswerModel(content: 'مرج ابن عامر', isTrue: true),
      AnswerModel(content: 'صحراء النقب', isTrue: false),
      AnswerModel(content: 'جبال الخليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه البلدات الفلسطينية تقع على سفوح جبال القدس؟',
    answers: [
      AnswerModel(content: 'بيت جالا', isTrue: true),
      AnswerModel(content: 'أم الفحم', isTrue: false),
      AnswerModel(content: 'اللد', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المحافظات تقع في الشمال الشرقي من الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'طوباس', isTrue: true),
      AnswerModel(content: 'الناصرة', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تعتبر مركزًا للتعليم والدراسات العليا في فلسطين؟',
    answers: [
      AnswerModel(content: 'البيرة', isTrue: true),
      AnswerModel(content: 'جنين', isTrue: false),
      AnswerModel(content: 'أريحا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن الفلسطينية تشتهر بالتمور الفاخرة؟',
    answers: [
      AnswerModel(content: 'أريحا', isTrue: true),
      AnswerModel(content: 'الناصرة', isTrue: false),
      AnswerModel(content: 'رام الله', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه القرى تشتهر بالكروم وزراعة العنب؟',
    answers: [
      AnswerModel(content: 'حلحول', isTrue: true),
      AnswerModel(content: 'سلفيت', isTrue: false),
      AnswerModel(content: 'طولكرم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه البلدات الفلسطينية تقع في القسم الجنوبي من الجليل؟',
    answers: [
      AnswerModel(content: 'سخنين', isTrue: true),
      AnswerModel(content: 'دير البلح', isTrue: false),
      AnswerModel(content: 'الرملة', isTrue: false),
    ],
  ),
  QuestionModel(
    title:
        'أي من هذه المدن يمر بها الشارع الرئيسي الذي يربط الشمال بالجنوب في الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'نابلس', isTrue: true),
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تعتبر مركزًا للنشاط الثقافي والفني في فلسطين؟',
    answers: [
      AnswerModel(content: 'رام الله', isTrue: true),
      AnswerModel(content: 'بيت لحم', isTrue: false),
      AnswerModel(content: 'طولكرم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه القرى تشتهر بمهرجاناتها السنوية للزيتون؟',
    answers: [
      AnswerModel(content: 'جيوس', isTrue: false),
      AnswerModel(content: 'قلقيلية', isTrue: true),
      AnswerModel(content: 'أريحا', isTrue: false),
    ],
  ),
  QuestionModel(
    title:
        'أي من هذه المدن تعتبر مهد الحضارات القديمة وتحتوي على أطلال رومانية؟',
    answers: [
      AnswerModel(content: 'نابلس', isTrue: true),
      AnswerModel(content: 'حيفا', isTrue: false),
      AnswerModel(content: 'الناصرة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المحافظات تعتبر المركز الرئيسي لصناعة الفخار في فلسطين؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: true),
      AnswerModel(content: 'بيت لحم', isTrue: false),
      AnswerModel(content: 'القدس', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المناطق يعتبر من أخصب الأراضي الزراعية في فلسطين؟',
    answers: [
      AnswerModel(content: 'وادي الفارعة', isTrue: true),
      AnswerModel(content: 'صحراء النقب', isTrue: false),
      AnswerModel(content: 'البحر الميت', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن الفلسطينية تقع على سهول ساحلية؟',
    answers: [
      AnswerModel(content: 'الطيبة', isTrue: true),
      AnswerModel(content: 'جنين', isTrue: false),
      AnswerModel(content: 'سلفيت', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المحافظات تشتهر بكروم العنب وزراعة الزيتون؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: true),
      AnswerModel(content: 'طولكرم', isTrue: false),
      AnswerModel(content: 'أريحا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تقع على تلة عالية وتطل على الساحل الفلسطيني؟',
    answers: [
      AnswerModel(content: 'عسقلان', isTrue: true),
      AnswerModel(content: 'الناصرة', isTrue: false),
      AnswerModel(content: 'بئر السبع', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المناطق تعتبر قلب القدس التاريخي والديني؟',
    answers: [
      AnswerModel(content: 'البلدة القديمة', isTrue: true),
      AnswerModel(content: 'رام الله', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تعتبر مركزًا لصناعة الأحذية والجلود في فلسطين؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: true),
      AnswerModel(content: 'يافا', isTrue: false),
      AnswerModel(content: 'عكا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المحافظات تحتضن جزءًا من سهل مرج ابن عامر؟',
    answers: [
      AnswerModel(content: 'جنين', isTrue: true),
      AnswerModel(content: 'غزة', isTrue: false),
      AnswerModel(content: 'القدس', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي الألوان الموجودة في علم فلسطين؟',
    answers: [
      AnswerModel(content: 'أسود، أبيض، أخضر وأحمر', isTrue: true),
      AnswerModel(content: 'أحمر، أبيض، أزرق وأصفر', isTrue: false),
      AnswerModel(content: 'أخضر، أزرق، أحمر وأبيض', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'كم عدد الأشرطة الموجودة على علم فلسطين؟',
    answers: [
      AnswerModel(content: '2', isTrue: false),
      AnswerModel(content: '3', isTrue: true),
      AnswerModel(content: '4', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي شكل هندسي موجود على علم فلسطين؟',
    answers: [
      AnswerModel(content: 'مستطيل', isTrue: false),
      AnswerModel(content: 'مثلث', isTrue: true),
      AnswerModel(content: 'دائرة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'في أي جهة من علم فلسطين يقع المثلث؟',
    answers: [
      AnswerModel(content: 'الجهة اليمنى', isTrue: false),
      AnswerModel(content: 'الجهة العليا', isTrue: false),
      AnswerModel(content: 'الجهة اليسرى', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ماذا يرمز اللون الأسود في علم فلسطين؟',
    answers: [
      AnswerModel(content: 'العصر العباسي', isTrue: true),
      AnswerModel(content: 'النيل', isTrue: false),
      AnswerModel(content: 'الخصوبة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي لون يمثل العصر الأموي في علم فلسطين؟',
    answers: [
      AnswerModel(content: 'الأحمر', isTrue: false),
      AnswerModel(content: 'الأخضر', isTrue: false),
      AnswerModel(content: 'الأبيض', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'أي العصور التالية يرمز لها اللون الأخضر في علم فلسطين؟',
    answers: [
      AnswerModel(content: 'العصر العثماني', isTrue: false),
      AnswerModel(content: 'العصر الفاطمي', isTrue: true),
      AnswerModel(content: 'العصر الحديث', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ماذا يمثل اللون الأحمر في علم فلسطين؟',
    answers: [
      AnswerModel(content: 'الثورة والشهداء', isTrue: true),
      AnswerModel(content: 'الصحراء', isTrue: false),
      AnswerModel(content: 'السلام', isTrue: false),
    ],
  ),
  QuestionModel(
    title:
        'ما هو الترتيب الصحيح لألوان الأشرطة في علم فلسطين من الأعلى إلى الأسفل؟',
    answers: [
      AnswerModel(content: 'أسود، أبيض، أخضر', isTrue: true),
      AnswerModel(content: 'أخضر، أبيض، أسود', isTrue: false),
      AnswerModel(content: 'أبيض، أخضر، أسود', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي عام تم اعتماد علم فلسطين رسميًا؟',
    answers: [
      AnswerModel(content: '1964', isTrue: true),
      AnswerModel(content: '1948', isTrue: false),
      AnswerModel(content: '1993', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هو الحدث الإسلامي الهام الذي وقع في القدس؟',
    answers: [
      AnswerModel(content: 'الإسراء والمعراج', isTrue: true),
      AnswerModel(content: 'الهجرة النبوية', isTrue: false),
      AnswerModel(content: 'غزوة بدر', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'من هو الصحابي الذي فتح القدس؟',
    answers: [
      AnswerModel(content: 'خالد بن الوليد', isTrue: false),
      AnswerModel(content: 'صلاح الدين الأيوبي', isTrue: false),
      AnswerModel(content: 'عمر بن الخطاب', isTrue: true),
    ],
  ),
  QuestionModel(
    title:
        'ما اسم المسجد الذي يُعتقد أن النبي محمد صلى فيه مع الأنبياء في ليلة الإسراء؟',
    answers: [
      AnswerModel(content: 'المسجد الأقصى', isTrue: true),
      AnswerModel(content: 'مسجد قباء', isTrue: false),
      AnswerModel(content: 'مسجد النبوي', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي عام تم فيه فتح بيت المقدس على يد صلاح الدين الأيوبي؟',
    answers: [
      AnswerModel(content: '1187م', isTrue: true),
      AnswerModel(content: '1099م', isTrue: false),
      AnswerModel(content: '1291م', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هو اسم البوابة الرئيسية للمسجد الأقصى؟',
    answers: [
      AnswerModel(content: 'باب العمود', isTrue: false),
      AnswerModel(content: 'باب الأسباط', isTrue: true),
      AnswerModel(content: 'باب الخليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما اسم الصحابي الذي دفن في القدس؟',
    answers: [
      AnswerModel(content: 'عبادة بن الصامت', isTrue: true),
      AnswerModel(content: 'بلال بن رباح', isTrue: false),
      AnswerModel(content: 'معاذ بن جبل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما الاسم الآخر لمسجد الصخرة المشرفة؟',
    answers: [
      AnswerModel(content: 'قبة الصخرة', isTrue: true),
      AnswerModel(content: 'قبة يوسف', isTrue: false),
      AnswerModel(content: 'قبة النبي', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أين يقع مقام النبي موسى عليه السلام؟',
    answers: [
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'أريحا', isTrue: true),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة التي يوجد بها مقام النبي يونس عليه السلام؟',
    answers: [
      AnswerModel(content: 'غزة', isTrue: false),
      AnswerModel(content: 'حلحول', isTrue: true),
      AnswerModel(content: 'الخليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي السورة التي ذُكر فيها المسجد الأقصى؟',
    answers: [
      AnswerModel(content: 'سورة الإسراء', isTrue: true),
      AnswerModel(content: 'سورة الكهف', isTrue: false),
      AnswerModel(content: 'سورة يوسف', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'من هو الخليفة الذي بنى قبة الصخرة؟',
    answers: [
      AnswerModel(content: 'الوليد بن عبد الملك', isTrue: false),
      AnswerModel(content: 'عمر بن الخطاب', isTrue: false),
      AnswerModel(content: 'عبد الملك بن مروان', isTrue: true),
    ],
  ),
  QuestionModel(
    title:
        'ما اسم المعركة التي حرر فيها صلاح الدين الأيوبي بيت المقدس من الصليبيين؟',
    answers: [
      AnswerModel(content: 'معركة حطين', isTrue: true),
      AnswerModel(content: 'معركة عين جالوت', isTrue: false),
      AnswerModel(content: 'معركة القادسية', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أين يقع مسجد عمر بن الخطاب في فلسطين؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: true),
      AnswerModel(content: 'رام الله', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة التي عُرفت بأنها مدينة الأنبياء؟',
    answers: [
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'أريحا', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'أين يقع مقام النبي داود عليه السلام؟',
    answers: [
      AnswerModel(content: 'القدس', isTrue: true),
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title:
        'ما اسم الباب الذي يُعتقد أن المسيح عيسى بن مريم سيعود من خلاله في آخر الزمان؟',
    answers: [
      AnswerModel(content: 'باب العمود', isTrue: false),
      AnswerModel(content: 'باب الرحمة', isTrue: true),
      AnswerModel(content: 'باب الأسباط', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي السورة التي ذكرت بركة الأرض المقدسة (فلسطين)؟',
    answers: [
      AnswerModel(content: 'سورة الأنبياء', isTrue: false),
      AnswerModel(content: 'سورة المائدة', isTrue: true),
      AnswerModel(content: 'سورة الإسراء', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه البحار يحد فلسطين من الغرب؟',
    answers: [
      AnswerModel(content: 'البحر الأحمر', isTrue: false),
      AnswerModel(content: 'البحر الميت', isTrue: false),
      AnswerModel(content: 'البحر الأبيض المتوسط', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تضم كنيسة المهد؟',
    answers: [
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: true),
      AnswerModel(content: 'الناصرة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هو الاسم الذي يُطلق على الصحراء التي تقع في جنوب فلسطين؟',
    answers: [
      AnswerModel(content: 'صحراء الكرب', isTrue: false),
      AnswerModel(content: 'صحراء الربع الخالي', isTrue: false),
      AnswerModel(content: 'صحراء النقب', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هو الاسم الذي يُطلق على المنتخب الوطني الفلسطيني لكرة القدم؟',
    answers: [
      AnswerModel(content: 'النشامى', isTrue: false),
      AnswerModel(content: 'الفدائيون', isTrue: true),
      AnswerModel(content: 'الشهداء', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من الأندية الفلسطينية يُعتبر من أقدم الأندية في الشرق الأوسط؟',
    answers: [
      AnswerModel(content: 'نادي شباب الخليل', isTrue: false),
      AnswerModel(content: 'نادي ثقافي طولكرم', isTrue: false),
      AnswerModel(content: 'النادي الأهلي الفلسطيني', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'متى تأسس الاتحاد الفلسطيني لكرة القدم؟',
    answers: [
      AnswerModel(content: '1928', isTrue: true),
      AnswerModel(content: '1953', isTrue: false),
      AnswerModel(content: '1971', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما اسم البئر الموجود في المسجد الإبراهيمي بالخليل؟',
    answers: [
      AnswerModel(content: 'بئر زمزم', isTrue: false),
      AnswerModel(content: 'بئر النبي يونس', isTrue: false),
      AnswerModel(content: 'بئر الرمة', isTrue: true),
    ],
  ),
  QuestionModel(
    title:
        'ما اسم المسجد الذي يُعتقد أنه ثاني أقدم مسجد بُني في فلسطين بعد المسجد الأقصى؟',
    answers: [
      AnswerModel(content: 'مسجد الخليل', isTrue: false),
      AnswerModel(content: 'مسجد النبي صموئيل', isTrue: false),
      AnswerModel(content: 'مسجد الجزار في عكا', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'في أي مدينة فلسطينية يقع مقام النبي صالح؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: false),
      AnswerModel(content: 'نابلس', isTrue: true),
      AnswerModel(content: 'رام الله', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما اسم المتحف الذي يضم تاريخ وثقافة فلسطين في مدينة رام الله؟',
    answers: [
      AnswerModel(content: 'متحف القدس', isTrue: false),
      AnswerModel(content: 'متحف فلسطين الوطني', isTrue: true),
      AnswerModel(content: 'متحف التراث الفلسطيني', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة التي تضم أقدم ميناء في العالم؟',
    answers: [
      AnswerModel(content: 'يافا', isTrue: true),
      AnswerModel(content: 'غزة', isTrue: false),
      AnswerModel(content: 'عكا', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة الفلسطينية التي تعرف بأنها مدينة الشهداء؟',
    answers: [
      AnswerModel(content: 'جنين', isTrue: true),
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'خان يونس', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه الجبال يُعتبر الأعلى في الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'جبل الكرمل', isTrue: false),
      AnswerModel(content: 'جبل جرزيم', isTrue: true),
      AnswerModel(content: 'جبل الطور', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما اسم الميناء الفلسطيني الشهير الذي يقع في الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'ميناء يافا', isTrue: false),
      AnswerModel(content: 'ميناء غزة', isTrue: false),
      AnswerModel(content: 'ميناء حيفا', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'ما هو اسم الجبل الذي يقع في مدينة نابلس ويشتهر بقصصه التاريخية؟',
    answers: [
      AnswerModel(content: 'جبل عيبال', isTrue: true),
      AnswerModel(content: 'جبل الطور', isTrue: false),
      AnswerModel(content: 'جبل جرزيم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هو الاسم التاريخي لمدينة طولكرم؟',
    answers: [
      AnswerModel(content: 'تارميا', isTrue: true),
      AnswerModel(content: 'طولكرم القديمة', isTrue: false),
      AnswerModel(content: 'تولارما', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تعتبر مركزًا للأدب والشعر في فلسطين؟',
    answers: [
      AnswerModel(content: 'نابلس', isTrue: true),
      AnswerModel(content: 'الخليل', isTrue: false),
      AnswerModel(content: 'غزة', isTrue: false),
    ],
  ),
  QuestionModel(
    title:
        'ما هو اسم المحمية الطبيعية الفلسطينية التي تقع في الضفة الغربية وتشتهر بتنوعها البيولوجي؟',
    answers: [
      AnswerModel(content: 'محمية وادي القف', isTrue: true),
      AnswerModel(content: 'محمية الجرمق', isTrue: false),
      AnswerModel(content: 'محمية عين الفاشخة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن الفلسطينية تشتهر بالتصميم المعماري العربي القديم؟',
    answers: [
      AnswerModel(content: 'عكا', isTrue: true),
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'نابلس', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه القرى تعتبر مركزًا لإنتاج الفخار التقليدي في فلسطين؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: false),
      AnswerModel(content: 'الزبابدة', isTrue: true),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تعتبر موقعًا لأقدم كنيسة معروفة في العالم؟',
    answers: [
      AnswerModel(content: 'بيت لحم', isTrue: true),
      AnswerModel(content: 'القدس', isTrue: false),
      AnswerModel(content: 'نابلس', isTrue: false),
    ],
  ),QuestionModel(
    title: 'ما هي المدينة الفلسطينية التي تعرف بكونها مسقط رأس النبي إبراهيم؟',
    answers: [
      AnswerModel(content: 'الخليل', isTrue: true),
      AnswerModel(content: 'أريحا', isTrue: false),
      AnswerModel(content: 'بيت لحم', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تقع في القسم الشمالي الغربي من الضفة الغربية؟',
    answers: [
      AnswerModel(content: 'قلقيلية', isTrue: true),
      AnswerModel(content: 'أريحا', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'ما هي المدينة الفلسطينية التي تعرف بأنها مدينة البرتقال؟',
    answers: [
      AnswerModel(content: 'يافا', isTrue: true),
      AnswerModel(content: 'نابلس', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'أي من هذه المدن تشتهر بكونها مدينة الجدران القديمة والأبواب التاريخية؟',
    answers: [
      AnswerModel(content: 'عكا', isTrue: true),
      AnswerModel(content: 'غزة', isTrue: false),
      AnswerModel(content: 'الخليل', isTrue: false),
    ],
  ),

];
