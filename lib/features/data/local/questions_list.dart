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
    title: '1when start palestine ?',
    answers: [
      AnswerModel( content: '1944', isTrue: false),
      AnswerModel(content: '1954', isTrue: false),
      AnswerModel( content: '1974', isTrue: true),
    ],
  ),
  QuestionModel(
    title: 'قامت عملية يوم ٧ أكتوبر ٢٠٢٣ ضد العدو وأربكت صفوفه ما إسم هذه العملية ؟',
    answers: [
      AnswerModel(content: 'جنود فلسطين', isTrue: false),
      AnswerModel( content: 'طوفان الأقصي', isTrue: true),
      AnswerModel(content: 'أحرار غزة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'قامت عملية يوم ٧ أكتوبر ٢٠٢٣ ضد العدو وأربكت صفوفه ما إسم هذه العملية ؟',
    answers: [
      AnswerModel(content: 'جنود فلسطين', isTrue: false),
      AnswerModel( content: 'طوفان الأقصي', isTrue: true),
      AnswerModel(content: 'أحرار غزة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'قامت عملية يوم ٧ أكتوبر ٢٠٢٣ ضد العدو وأربكت صفوفه ما إسم هذه العملية ؟',
    answers: [
      AnswerModel(content: 'جنود فلسطين', isTrue: false),
      AnswerModel( content: 'طوفان الأقصي', isTrue: true),
      AnswerModel(content: 'أحرار غزة', isTrue: false),
    ],
  ),
  QuestionModel(
    title: 'قامت عملية يوم ٧ أكتوبر ٢٠٢٣ ضد العدو وأربكت صفوفه ما إسم هذه العملية ؟',
    answers: [
      AnswerModel(content: 'جنود فلسطين', isTrue: false),
      AnswerModel( content: 'طوفان الأقصي', isTrue: true),
      AnswerModel(content: 'أحرار غزة', isTrue: false),
    ],
  ),

  QuestionModel(
    title: '3when start palestine ?',
    answers: [
      AnswerModel( content: '1944', isTrue: false),
      AnswerModel(content: '1954', isTrue: false),
      AnswerModel( content: '1974', isTrue: true),
    ],
  ),
  QuestionModel(
    title: '4when start3 palestine ?',
    answers: [
      AnswerModel(content: '1944', isTrue: false),
      AnswerModel( content: '1954', isTrue: true),
      AnswerModel(content: '1974', isTrue: false),
    ],
  ),
  QuestionModel(
    title: '5when start palestine ?',
    answers: [
      AnswerModel( content: '1944', isTrue: false),
      AnswerModel(content: '1954', isTrue: false),
      AnswerModel( content: '1974', isTrue: true),
    ],
  ),
  QuestionModel(
    title: '6when start3 palestine ?',
    answers: [
      AnswerModel(content: '1944', isTrue: false),
      AnswerModel( content: '1954', isTrue: true),
      AnswerModel(content: '1974', isTrue: false),
    ],
  ),
];
