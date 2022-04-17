// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserQuestion> _$userQuestionSerializer =
    new _$UserQuestionSerializer();
Serializer<SearchUsers> _$searchUsersSerializer = new _$SearchUsersSerializer();
Serializer<CheckAnswer> _$checkAnswerSerializer = new _$CheckAnswerSerializer();
Serializer<AnswerQuestions> _$answerQuestionsSerializer =
    new _$AnswerQuestionsSerializer();
Serializer<IndividualQuestions> _$individualQuestionsSerializer =
    new _$IndividualQuestionsSerializer();
Serializer<Topic> _$topicSerializer = new _$TopicSerializer();
Serializer<IndividualQuestion> _$individualQuestionSerializer =
    new _$IndividualQuestionSerializer();
Serializer<Questions> _$questionsSerializer = new _$QuestionsSerializer();
Serializer<Count> _$countSerializer = new _$CountSerializer();
Serializer<CheckCount> _$checkCountSerializer = new _$CheckCountSerializer();
Serializer<Question> _$questionSerializer = new _$QuestionSerializer();
Serializer<CreatePaymentIntent> _$createPaymentIntentSerializer =
    new _$CreatePaymentIntentSerializer();
Serializer<ReportQuestion> _$reportQuestionSerializer =
    new _$ReportQuestionSerializer();
Serializer<ResponsePaymentIntent> _$responsePaymentIntentSerializer =
    new _$ResponsePaymentIntentSerializer();
Serializer<Membership> _$membershipSerializer = new _$MembershipSerializer();
Serializer<MembershipRes> _$membershipResSerializer =
    new _$MembershipResSerializer();
Serializer<MembershipCheck> _$membershipCheckSerializer =
    new _$MembershipCheckSerializer();
Serializer<DirectQuestion> _$directQuestionSerializer =
    new _$DirectQuestionSerializer();
Serializer<CommentList> _$commentListSerializer = new _$CommentListSerializer();
Serializer<Comment> _$commentSerializer = new _$CommentSerializer();
Serializer<CreateComment> _$createCommentSerializer =
    new _$CreateCommentSerializer();

class _$UserQuestionSerializer implements StructuredSerializer<UserQuestion> {
  @override
  final Iterable<Type> types = const [UserQuestion, _$UserQuestion];
  @override
  final String wireName = 'UserQuestion';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserQuestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youFollowed;
    if (value != null) {
      result
        ..add('you_followed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  UserQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'you_followed':
          result.youFollowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchUsersSerializer implements StructuredSerializer<SearchUsers> {
  @override
  final Iterable<Type> types = const [SearchUsers, _$SearchUsers];
  @override
  final String wireName = 'SearchUsers';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UserQuestion)])));
    }
    return result;
  }

  @override
  SearchUsers deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UserQuestion)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CheckAnswerSerializer implements StructuredSerializer<CheckAnswer> {
  @override
  final Iterable<Type> types = const [CheckAnswer, _$CheckAnswer];
  @override
  final String wireName = 'CheckAnswer';

  @override
  Iterable<Object?> serialize(Serializers serializers, CheckAnswer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'can_ask_question',
      serializers.serialize(object.canAskQuestion,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  CheckAnswer deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckAnswerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'can_ask_question':
          result.canAskQuestion = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AnswerQuestionsSerializer
    implements StructuredSerializer<AnswerQuestions> {
  @override
  final Iterable<Type> types = const [AnswerQuestions, _$AnswerQuestions];
  @override
  final String wireName = 'AnswerQuestions';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnswerQuestions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AnswerQuestions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnswerQuestionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$IndividualQuestionsSerializer
    implements StructuredSerializer<IndividualQuestions> {
  @override
  final Iterable<Type> types = const [
    IndividualQuestions,
    _$IndividualQuestions
  ];
  @override
  final String wireName = 'IndividualQuestions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IndividualQuestions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(String)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IndividualQuestions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IndividualQuestionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'created_date':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$TopicSerializer implements StructuredSerializer<Topic> {
  @override
  final Iterable<Type> types = const [Topic, _$Topic];
  @override
  final String wireName = 'Topic';

  @override
  Iterable<Object?> serialize(Serializers serializers, Topic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'you_followed',
      serializers.serialize(object.youFollowed,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.followers;
    if (value != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.questions;
    if (value != null) {
      result
        ..add('questions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Questions)));
    }
    return result;
  }

  @override
  Topic deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'followers':
          result.followers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'you_followed':
          result.youFollowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'questions':
          result.questions.replace(serializers.deserialize(value,
              specifiedType: const FullType(Questions))! as Questions);
          break;
      }
    }

    return result.build();
  }
}

class _$IndividualQuestionSerializer
    implements StructuredSerializer<IndividualQuestion> {
  @override
  final Iterable<Type> types = const [IndividualQuestion, _$IndividualQuestion];
  @override
  final String wireName = 'IndividualQuestion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IndividualQuestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(String)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(UserQuestion)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'comment_count',
      serializers.serialize(object.comment, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answerer;
    if (value != null) {
      result
        ..add('answerer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserQuestion)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answeredDate;
    if (value != null) {
      result
        ..add('answered_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IndividualQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IndividualQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserQuestion))! as UserQuestion);
          break;
        case 'answerer':
          result.answerer.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserQuestion))! as UserQuestion);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'comment_count':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_date':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answered_date':
          result.answeredDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$QuestionsSerializer implements StructuredSerializer<Questions> {
  @override
  final Iterable<Type> types = const [Questions, _$Questions];
  @override
  final String wireName = 'Questions';

  @override
  Iterable<Object?> serialize(Serializers serializers, Questions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(IndividualQuestion)])));
    }
    return result;
  }

  @override
  Questions deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(IndividualQuestion)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CountSerializer implements StructuredSerializer<Count> {
  @override
  final Iterable<Type> types = const [Count, _$Count];
  @override
  final String wireName = 'Count';

  @override
  Iterable<Object?> serialize(Serializers serializers, Count object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Count deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckCountSerializer implements StructuredSerializer<CheckCount> {
  @override
  final Iterable<Type> types = const [CheckCount, _$CheckCount];
  @override
  final String wireName = 'CheckCount';

  @override
  Iterable<Object?> serialize(Serializers serializers, CheckCount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'free_count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CheckCount deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckCountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'free_count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$QuestionSerializer implements StructuredSerializer<Question> {
  @override
  final Iterable<Type> types = const [Question, _$Question];
  @override
  final String wireName = 'Question';

  @override
  Iterable<Object?> serialize(Serializers serializers, Question object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.question;
    if (value != null) {
      result
        ..add('question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Question deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CreatePaymentIntentSerializer
    implements StructuredSerializer<CreatePaymentIntent> {
  @override
  final Iterable<Type> types = const [
    CreatePaymentIntent,
    _$CreatePaymentIntent
  ];
  @override
  final String wireName = 'CreatePaymentIntent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CreatePaymentIntent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'number_of_question',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CreatePaymentIntent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatePaymentIntentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number_of_question':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReportQuestionSerializer
    implements StructuredSerializer<ReportQuestion> {
  @override
  final Iterable<Type> types = const [ReportQuestion, _$ReportQuestion];
  @override
  final String wireName = 'ReportQuestion';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReportQuestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'report_type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'report_for',
      serializers.serialize(object.reportFor,
          specifiedType: const FullType(String)),
      'object',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ReportQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'report_type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'report_for':
          result.reportFor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'object':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ResponsePaymentIntentSerializer
    implements StructuredSerializer<ResponsePaymentIntent> {
  @override
  final Iterable<Type> types = const [
    ResponsePaymentIntent,
    _$ResponsePaymentIntent
  ];
  @override
  final String wireName = 'ResponsePaymentIntent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ResponsePaymentIntent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'detail',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ResponsePaymentIntent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponsePaymentIntentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'detail':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MembershipSerializer implements StructuredSerializer<Membership> {
  @override
  final Iterable<Type> types = const [Membership, _$Membership];
  @override
  final String wireName = 'Membership';

  @override
  Iterable<Object?> serialize(Serializers serializers, Membership object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'membership',
      serializers.serialize(object.membership,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Membership deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MembershipBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'membership':
          result.membership = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MembershipResSerializer implements StructuredSerializer<MembershipRes> {
  @override
  final Iterable<Type> types = const [MembershipRes, _$MembershipRes];
  @override
  final String wireName = 'MembershipRes';

  @override
  Iterable<Object?> serialize(Serializers serializers, MembershipRes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'client_secret',
      serializers.serialize(object.clientSecret,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MembershipRes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MembershipResBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MembershipCheckSerializer
    implements StructuredSerializer<MembershipCheck> {
  @override
  final Iterable<Type> types = const [MembershipCheck, _$MembershipCheck];
  @override
  final String wireName = 'MembershipCheck';

  @override
  Iterable<Object?> serialize(Serializers serializers, MembershipCheck object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'client_secret',
      serializers.serialize(object.clientSecret,
          specifiedType: const FullType(String)),
      'membership',
      serializers.serialize(object.membership,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MembershipCheck deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MembershipCheckBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'membership':
          result.membership = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DirectQuestionSerializer
    implements StructuredSerializer<DirectQuestion> {
  @override
  final Iterable<Type> types = const [DirectQuestion, _$DirectQuestion];
  @override
  final String wireName = 'DirectQuestion';

  @override
  Iterable<Object?> serialize(Serializers serializers, DirectQuestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'given_to',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.clientSecret;
    if (value != null) {
      result
        ..add('client_secret')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DirectQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DirectQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'given_to':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommentListSerializer implements StructuredSerializer<CommentList> {
  @override
  final Iterable<Type> types = const [CommentList, _$CommentList];
  @override
  final String wireName = 'CommentList';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Comment)])));
    }
    return result;
  }

  @override
  CommentList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object?> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(int)),
      'is_my_comment',
      serializers.serialize(object.isMy, specifiedType: const FullType(bool)),
      'created_user',
      serializers.serialize(object.owner,
          specifiedType: const FullType(UserQuestion)),
    ];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_datetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_my_comment':
          result.isMy = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_datetime':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_user':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserQuestion))! as UserQuestion);
          break;
      }
    }

    return result.build();
  }
}

class _$CreateCommentSerializer implements StructuredSerializer<CreateComment> {
  @override
  final Iterable<Type> types = const [CreateComment, _$CreateComment];
  @override
  final String wireName = 'CreateComment';

  @override
  Iterable<Object?> serialize(Serializers serializers, CreateComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CreateComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserQuestion extends UserQuestion {
  @override
  final int? id;
  @override
  final String username;
  @override
  final String? fullName;
  @override
  final String? avatar;
  @override
  final String email;
  @override
  final bool? youFollowed;

  factory _$UserQuestion([void Function(UserQuestionBuilder)? updates]) =>
      (new UserQuestionBuilder()..update(updates)).build();

  _$UserQuestion._(
      {this.id,
      required this.username,
      this.fullName,
      this.avatar,
      required this.email,
      this.youFollowed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(username, 'UserQuestion', 'username');
    BuiltValueNullFieldError.checkNotNull(email, 'UserQuestion', 'email');
  }

  @override
  UserQuestion rebuild(void Function(UserQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserQuestionBuilder toBuilder() => new UserQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserQuestion &&
        id == other.id &&
        username == other.username &&
        fullName == other.fullName &&
        avatar == other.avatar &&
        email == other.email &&
        youFollowed == other.youFollowed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), username.hashCode),
                    fullName.hashCode),
                avatar.hashCode),
            email.hashCode),
        youFollowed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserQuestion')
          ..add('id', id)
          ..add('username', username)
          ..add('fullName', fullName)
          ..add('avatar', avatar)
          ..add('email', email)
          ..add('youFollowed', youFollowed))
        .toString();
  }
}

class UserQuestionBuilder
    implements Builder<UserQuestion, UserQuestionBuilder> {
  _$UserQuestion? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _youFollowed;
  bool? get youFollowed => _$this._youFollowed;
  set youFollowed(bool? youFollowed) => _$this._youFollowed = youFollowed;

  UserQuestionBuilder();

  UserQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _fullName = $v.fullName;
      _avatar = $v.avatar;
      _email = $v.email;
      _youFollowed = $v.youFollowed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserQuestion;
  }

  @override
  void update(void Function(UserQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserQuestion build() {
    final _$result = _$v ??
        new _$UserQuestion._(
            id: id,
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'UserQuestion', 'username'),
            fullName: fullName,
            avatar: avatar,
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'UserQuestion', 'email'),
            youFollowed: youFollowed);
    replace(_$result);
    return _$result;
  }
}

class _$SearchUsers extends SearchUsers {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<UserQuestion>? results;

  factory _$SearchUsers([void Function(SearchUsersBuilder)? updates]) =>
      (new SearchUsersBuilder()..update(updates)).build();

  _$SearchUsers._({required this.count, this.next, this.previous, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'SearchUsers', 'count');
  }

  @override
  SearchUsers rebuild(void Function(SearchUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchUsersBuilder toBuilder() => new SearchUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchUsers &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchUsers')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class SearchUsersBuilder implements Builder<SearchUsers, SearchUsersBuilder> {
  _$SearchUsers? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<UserQuestion>? _results;
  ListBuilder<UserQuestion> get results =>
      _$this._results ??= new ListBuilder<UserQuestion>();
  set results(ListBuilder<UserQuestion>? results) => _$this._results = results;

  SearchUsersBuilder();

  SearchUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchUsers;
  }

  @override
  void update(void Function(SearchUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchUsers build() {
    _$SearchUsers _$result;
    try {
      _$result = _$v ??
          new _$SearchUsers._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, 'SearchUsers', 'count'),
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CheckAnswer extends CheckAnswer {
  @override
  final bool canAskQuestion;

  factory _$CheckAnswer([void Function(CheckAnswerBuilder)? updates]) =>
      (new CheckAnswerBuilder()..update(updates)).build();

  _$CheckAnswer._({required this.canAskQuestion}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        canAskQuestion, 'CheckAnswer', 'canAskQuestion');
  }

  @override
  CheckAnswer rebuild(void Function(CheckAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckAnswerBuilder toBuilder() => new CheckAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckAnswer && canAskQuestion == other.canAskQuestion;
  }

  @override
  int get hashCode {
    return $jf($jc(0, canAskQuestion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckAnswer')
          ..add('canAskQuestion', canAskQuestion))
        .toString();
  }
}

class CheckAnswerBuilder implements Builder<CheckAnswer, CheckAnswerBuilder> {
  _$CheckAnswer? _$v;

  bool? _canAskQuestion;
  bool? get canAskQuestion => _$this._canAskQuestion;
  set canAskQuestion(bool? canAskQuestion) =>
      _$this._canAskQuestion = canAskQuestion;

  CheckAnswerBuilder();

  CheckAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _canAskQuestion = $v.canAskQuestion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckAnswer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckAnswer;
  }

  @override
  void update(void Function(CheckAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckAnswer build() {
    final _$result = _$v ??
        new _$CheckAnswer._(
            canAskQuestion: BuiltValueNullFieldError.checkNotNull(
                canAskQuestion, 'CheckAnswer', 'canAskQuestion'));
    replace(_$result);
    return _$result;
  }
}

class _$AnswerQuestions extends AnswerQuestions {
  @override
  final String? answer;

  factory _$AnswerQuestions([void Function(AnswerQuestionsBuilder)? updates]) =>
      (new AnswerQuestionsBuilder()..update(updates)).build();

  _$AnswerQuestions._({this.answer}) : super._();

  @override
  AnswerQuestions rebuild(void Function(AnswerQuestionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerQuestionsBuilder toBuilder() =>
      new AnswerQuestionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerQuestions && answer == other.answer;
  }

  @override
  int get hashCode {
    return $jf($jc(0, answer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnswerQuestions')
          ..add('answer', answer))
        .toString();
  }
}

class AnswerQuestionsBuilder
    implements Builder<AnswerQuestions, AnswerQuestionsBuilder> {
  _$AnswerQuestions? _$v;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  AnswerQuestionsBuilder();

  AnswerQuestionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _answer = $v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerQuestions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswerQuestions;
  }

  @override
  void update(void Function(AnswerQuestionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnswerQuestions build() {
    final _$result = _$v ?? new _$AnswerQuestions._(answer: answer);
    replace(_$result);
    return _$result;
  }
}

class _$IndividualQuestions extends IndividualQuestions {
  @override
  final int? id;
  @override
  final String question;
  @override
  final String? answer;
  @override
  final BuiltList<int> categories;
  @override
  final String? createdAt;

  factory _$IndividualQuestions(
          [void Function(IndividualQuestionsBuilder)? updates]) =>
      (new IndividualQuestionsBuilder()..update(updates)).build();

  _$IndividualQuestions._(
      {this.id,
      required this.question,
      this.answer,
      required this.categories,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        question, 'IndividualQuestions', 'question');
    BuiltValueNullFieldError.checkNotNull(
        categories, 'IndividualQuestions', 'categories');
  }

  @override
  IndividualQuestions rebuild(
          void Function(IndividualQuestionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndividualQuestionsBuilder toBuilder() =>
      new IndividualQuestionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndividualQuestions &&
        id == other.id &&
        question == other.question &&
        answer == other.answer &&
        categories == other.categories &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), question.hashCode), answer.hashCode),
            categories.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IndividualQuestions')
          ..add('id', id)
          ..add('question', question)
          ..add('answer', answer)
          ..add('categories', categories)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class IndividualQuestionsBuilder
    implements Builder<IndividualQuestions, IndividualQuestionsBuilder> {
  _$IndividualQuestions? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  ListBuilder<int>? _categories;
  ListBuilder<int> get categories =>
      _$this._categories ??= new ListBuilder<int>();
  set categories(ListBuilder<int>? categories) =>
      _$this._categories = categories;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  IndividualQuestionsBuilder();

  IndividualQuestionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _answer = $v.answer;
      _categories = $v.categories.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndividualQuestions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndividualQuestions;
  }

  @override
  void update(void Function(IndividualQuestionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IndividualQuestions build() {
    _$IndividualQuestions _$result;
    try {
      _$result = _$v ??
          new _$IndividualQuestions._(
              id: id,
              question: BuiltValueNullFieldError.checkNotNull(
                  question, 'IndividualQuestions', 'question'),
              answer: answer,
              categories: categories.build(),
              createdAt: createdAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IndividualQuestions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Topic extends Topic {
  @override
  final int id;
  @override
  final String? name;
  @override
  final int? followers;
  @override
  final bool youFollowed;
  @override
  final Questions? questions;

  factory _$Topic([void Function(TopicBuilder)? updates]) =>
      (new TopicBuilder()..update(updates)).build();

  _$Topic._(
      {required this.id,
      this.name,
      this.followers,
      required this.youFollowed,
      this.questions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Topic', 'id');
    BuiltValueNullFieldError.checkNotNull(youFollowed, 'Topic', 'youFollowed');
  }

  @override
  Topic rebuild(void Function(TopicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicBuilder toBuilder() => new TopicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Topic &&
        id == other.id &&
        name == other.name &&
        followers == other.followers &&
        youFollowed == other.youFollowed &&
        questions == other.questions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), followers.hashCode),
            youFollowed.hashCode),
        questions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Topic')
          ..add('id', id)
          ..add('name', name)
          ..add('followers', followers)
          ..add('youFollowed', youFollowed)
          ..add('questions', questions))
        .toString();
  }
}

class TopicBuilder implements Builder<Topic, TopicBuilder> {
  _$Topic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _followers;
  int? get followers => _$this._followers;
  set followers(int? followers) => _$this._followers = followers;

  bool? _youFollowed;
  bool? get youFollowed => _$this._youFollowed;
  set youFollowed(bool? youFollowed) => _$this._youFollowed = youFollowed;

  QuestionsBuilder? _questions;
  QuestionsBuilder get questions =>
      _$this._questions ??= new QuestionsBuilder();
  set questions(QuestionsBuilder? questions) => _$this._questions = questions;

  TopicBuilder();

  TopicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _followers = $v.followers;
      _youFollowed = $v.youFollowed;
      _questions = $v.questions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Topic other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Topic;
  }

  @override
  void update(void Function(TopicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Topic build() {
    _$Topic _$result;
    try {
      _$result = _$v ??
          new _$Topic._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Topic', 'id'),
              name: name,
              followers: followers,
              youFollowed: BuiltValueNullFieldError.checkNotNull(
                  youFollowed, 'Topic', 'youFollowed'),
              questions: _questions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questions';
        _questions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Topic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$IndividualQuestion extends IndividualQuestion {
  @override
  final int? id;
  @override
  final String question;
  @override
  final String? answer;
  @override
  final UserQuestion owner;
  @override
  final UserQuestion? answerer;
  @override
  final BuiltList<int> categories;
  @override
  final int comment;
  @override
  final String? createdAt;
  @override
  final String? answeredDate;

  factory _$IndividualQuestion(
          [void Function(IndividualQuestionBuilder)? updates]) =>
      (new IndividualQuestionBuilder()..update(updates)).build();

  _$IndividualQuestion._(
      {this.id,
      required this.question,
      this.answer,
      required this.owner,
      this.answerer,
      required this.categories,
      required this.comment,
      this.createdAt,
      this.answeredDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        question, 'IndividualQuestion', 'question');
    BuiltValueNullFieldError.checkNotNull(owner, 'IndividualQuestion', 'owner');
    BuiltValueNullFieldError.checkNotNull(
        categories, 'IndividualQuestion', 'categories');
    BuiltValueNullFieldError.checkNotNull(
        comment, 'IndividualQuestion', 'comment');
  }

  @override
  IndividualQuestion rebuild(
          void Function(IndividualQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndividualQuestionBuilder toBuilder() =>
      new IndividualQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndividualQuestion &&
        id == other.id &&
        question == other.question &&
        answer == other.answer &&
        owner == other.owner &&
        answerer == other.answerer &&
        categories == other.categories &&
        comment == other.comment &&
        createdAt == other.createdAt &&
        answeredDate == other.answeredDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), question.hashCode),
                                answer.hashCode),
                            owner.hashCode),
                        answerer.hashCode),
                    categories.hashCode),
                comment.hashCode),
            createdAt.hashCode),
        answeredDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IndividualQuestion')
          ..add('id', id)
          ..add('question', question)
          ..add('answer', answer)
          ..add('owner', owner)
          ..add('answerer', answerer)
          ..add('categories', categories)
          ..add('comment', comment)
          ..add('createdAt', createdAt)
          ..add('answeredDate', answeredDate))
        .toString();
  }
}

class IndividualQuestionBuilder
    implements Builder<IndividualQuestion, IndividualQuestionBuilder> {
  _$IndividualQuestion? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  UserQuestionBuilder? _owner;
  UserQuestionBuilder get owner => _$this._owner ??= new UserQuestionBuilder();
  set owner(UserQuestionBuilder? owner) => _$this._owner = owner;

  UserQuestionBuilder? _answerer;
  UserQuestionBuilder get answerer =>
      _$this._answerer ??= new UserQuestionBuilder();
  set answerer(UserQuestionBuilder? answerer) => _$this._answerer = answerer;

  ListBuilder<int>? _categories;
  ListBuilder<int> get categories =>
      _$this._categories ??= new ListBuilder<int>();
  set categories(ListBuilder<int>? categories) =>
      _$this._categories = categories;

  int? _comment;
  int? get comment => _$this._comment;
  set comment(int? comment) => _$this._comment = comment;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _answeredDate;
  String? get answeredDate => _$this._answeredDate;
  set answeredDate(String? answeredDate) => _$this._answeredDate = answeredDate;

  IndividualQuestionBuilder();

  IndividualQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _answer = $v.answer;
      _owner = $v.owner.toBuilder();
      _answerer = $v.answerer?.toBuilder();
      _categories = $v.categories.toBuilder();
      _comment = $v.comment;
      _createdAt = $v.createdAt;
      _answeredDate = $v.answeredDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndividualQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndividualQuestion;
  }

  @override
  void update(void Function(IndividualQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IndividualQuestion build() {
    _$IndividualQuestion _$result;
    try {
      _$result = _$v ??
          new _$IndividualQuestion._(
              id: id,
              question: BuiltValueNullFieldError.checkNotNull(
                  question, 'IndividualQuestion', 'question'),
              answer: answer,
              owner: owner.build(),
              answerer: _answerer?.build(),
              categories: categories.build(),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment, 'IndividualQuestion', 'comment'),
              createdAt: createdAt,
              answeredDate: answeredDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
        _$failedField = 'answerer';
        _answerer?.build();
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IndividualQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Questions extends Questions {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<IndividualQuestion>? results;

  factory _$Questions([void Function(QuestionsBuilder)? updates]) =>
      (new QuestionsBuilder()..update(updates)).build();

  _$Questions._({required this.count, this.next, this.previous, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'Questions', 'count');
  }

  @override
  Questions rebuild(void Function(QuestionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsBuilder toBuilder() => new QuestionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Questions &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Questions')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class QuestionsBuilder implements Builder<Questions, QuestionsBuilder> {
  _$Questions? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<IndividualQuestion>? _results;
  ListBuilder<IndividualQuestion> get results =>
      _$this._results ??= new ListBuilder<IndividualQuestion>();
  set results(ListBuilder<IndividualQuestion>? results) =>
      _$this._results = results;

  QuestionsBuilder();

  QuestionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Questions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Questions;
  }

  @override
  void update(void Function(QuestionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Questions build() {
    _$Questions _$result;
    try {
      _$result = _$v ??
          new _$Questions._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, 'Questions', 'count'),
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Questions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Count extends Count {
  @override
  final int count;

  factory _$Count([void Function(CountBuilder)? updates]) =>
      (new CountBuilder()..update(updates)).build();

  _$Count._({required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'Count', 'count');
  }

  @override
  Count rebuild(void Function(CountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountBuilder toBuilder() => new CountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Count && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Count')..add('count', count))
        .toString();
  }
}

class CountBuilder implements Builder<Count, CountBuilder> {
  _$Count? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  CountBuilder();

  CountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Count other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Count;
  }

  @override
  void update(void Function(CountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Count build() {
    final _$result = _$v ??
        new _$Count._(
            count:
                BuiltValueNullFieldError.checkNotNull(count, 'Count', 'count'));
    replace(_$result);
    return _$result;
  }
}

class _$CheckCount extends CheckCount {
  @override
  final int count;

  factory _$CheckCount([void Function(CheckCountBuilder)? updates]) =>
      (new CheckCountBuilder()..update(updates)).build();

  _$CheckCount._({required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'CheckCount', 'count');
  }

  @override
  CheckCount rebuild(void Function(CheckCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckCountBuilder toBuilder() => new CheckCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckCount && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckCount')..add('count', count))
        .toString();
  }
}

class CheckCountBuilder implements Builder<CheckCount, CheckCountBuilder> {
  _$CheckCount? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  CheckCountBuilder();

  CheckCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckCount;
  }

  @override
  void update(void Function(CheckCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckCount build() {
    final _$result = _$v ??
        new _$CheckCount._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'CheckCount', 'count'));
    replace(_$result);
    return _$result;
  }
}

class _$Question extends Question {
  @override
  final String? question;

  factory _$Question([void Function(QuestionBuilder)? updates]) =>
      (new QuestionBuilder()..update(updates)).build();

  _$Question._({this.question}) : super._();

  @override
  Question rebuild(void Function(QuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionBuilder toBuilder() => new QuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question && question == other.question;
  }

  @override
  int get hashCode {
    return $jf($jc(0, question.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Question')..add('question', question))
        .toString();
  }
}

class QuestionBuilder implements Builder<Question, QuestionBuilder> {
  _$Question? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  QuestionBuilder();

  QuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Question other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Question;
  }

  @override
  void update(void Function(QuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Question build() {
    final _$result = _$v ?? new _$Question._(question: question);
    replace(_$result);
    return _$result;
  }
}

class _$CreatePaymentIntent extends CreatePaymentIntent {
  @override
  final int count;

  factory _$CreatePaymentIntent(
          [void Function(CreatePaymentIntentBuilder)? updates]) =>
      (new CreatePaymentIntentBuilder()..update(updates)).build();

  _$CreatePaymentIntent._({required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        count, 'CreatePaymentIntent', 'count');
  }

  @override
  CreatePaymentIntent rebuild(
          void Function(CreatePaymentIntentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePaymentIntentBuilder toBuilder() =>
      new CreatePaymentIntentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePaymentIntent && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatePaymentIntent')
          ..add('count', count))
        .toString();
  }
}

class CreatePaymentIntentBuilder
    implements Builder<CreatePaymentIntent, CreatePaymentIntentBuilder> {
  _$CreatePaymentIntent? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  CreatePaymentIntentBuilder();

  CreatePaymentIntentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePaymentIntent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePaymentIntent;
  }

  @override
  void update(void Function(CreatePaymentIntentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatePaymentIntent build() {
    final _$result = _$v ??
        new _$CreatePaymentIntent._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'CreatePaymentIntent', 'count'));
    replace(_$result);
    return _$result;
  }
}

class _$ReportQuestion extends ReportQuestion {
  @override
  final String type;
  @override
  final String reportFor;
  @override
  final int id;

  factory _$ReportQuestion([void Function(ReportQuestionBuilder)? updates]) =>
      (new ReportQuestionBuilder()..update(updates)).build();

  _$ReportQuestion._(
      {required this.type, required this.reportFor, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, 'ReportQuestion', 'type');
    BuiltValueNullFieldError.checkNotNull(
        reportFor, 'ReportQuestion', 'reportFor');
    BuiltValueNullFieldError.checkNotNull(id, 'ReportQuestion', 'id');
  }

  @override
  ReportQuestion rebuild(void Function(ReportQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportQuestionBuilder toBuilder() =>
      new ReportQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportQuestion &&
        type == other.type &&
        reportFor == other.reportFor &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, type.hashCode), reportFor.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReportQuestion')
          ..add('type', type)
          ..add('reportFor', reportFor)
          ..add('id', id))
        .toString();
  }
}

class ReportQuestionBuilder
    implements Builder<ReportQuestion, ReportQuestionBuilder> {
  _$ReportQuestion? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _reportFor;
  String? get reportFor => _$this._reportFor;
  set reportFor(String? reportFor) => _$this._reportFor = reportFor;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ReportQuestionBuilder();

  ReportQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _reportFor = $v.reportFor;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportQuestion;
  }

  @override
  void update(void Function(ReportQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReportQuestion build() {
    final _$result = _$v ??
        new _$ReportQuestion._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'ReportQuestion', 'type'),
            reportFor: BuiltValueNullFieldError.checkNotNull(
                reportFor, 'ReportQuestion', 'reportFor'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'ReportQuestion', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$ResponsePaymentIntent extends ResponsePaymentIntent {
  @override
  final String key;

  factory _$ResponsePaymentIntent(
          [void Function(ResponsePaymentIntentBuilder)? updates]) =>
      (new ResponsePaymentIntentBuilder()..update(updates)).build();

  _$ResponsePaymentIntent._({required this.key}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, 'ResponsePaymentIntent', 'key');
  }

  @override
  ResponsePaymentIntent rebuild(
          void Function(ResponsePaymentIntentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponsePaymentIntentBuilder toBuilder() =>
      new ResponsePaymentIntentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponsePaymentIntent && key == other.key;
  }

  @override
  int get hashCode {
    return $jf($jc(0, key.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResponsePaymentIntent')
          ..add('key', key))
        .toString();
  }
}

class ResponsePaymentIntentBuilder
    implements Builder<ResponsePaymentIntent, ResponsePaymentIntentBuilder> {
  _$ResponsePaymentIntent? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  ResponsePaymentIntentBuilder();

  ResponsePaymentIntentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponsePaymentIntent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponsePaymentIntent;
  }

  @override
  void update(void Function(ResponsePaymentIntentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResponsePaymentIntent build() {
    final _$result = _$v ??
        new _$ResponsePaymentIntent._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, 'ResponsePaymentIntent', 'key'));
    replace(_$result);
    return _$result;
  }
}

class _$Membership extends Membership {
  @override
  final int membership;

  factory _$Membership([void Function(MembershipBuilder)? updates]) =>
      (new MembershipBuilder()..update(updates)).build();

  _$Membership._({required this.membership}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        membership, 'Membership', 'membership');
  }

  @override
  Membership rebuild(void Function(MembershipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MembershipBuilder toBuilder() => new MembershipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Membership && membership == other.membership;
  }

  @override
  int get hashCode {
    return $jf($jc(0, membership.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Membership')
          ..add('membership', membership))
        .toString();
  }
}

class MembershipBuilder implements Builder<Membership, MembershipBuilder> {
  _$Membership? _$v;

  int? _membership;
  int? get membership => _$this._membership;
  set membership(int? membership) => _$this._membership = membership;

  MembershipBuilder();

  MembershipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _membership = $v.membership;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Membership other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Membership;
  }

  @override
  void update(void Function(MembershipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Membership build() {
    final _$result = _$v ??
        new _$Membership._(
            membership: BuiltValueNullFieldError.checkNotNull(
                membership, 'Membership', 'membership'));
    replace(_$result);
    return _$result;
  }
}

class _$MembershipRes extends MembershipRes {
  @override
  final String clientSecret;

  factory _$MembershipRes([void Function(MembershipResBuilder)? updates]) =>
      (new MembershipResBuilder()..update(updates)).build();

  _$MembershipRes._({required this.clientSecret}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientSecret, 'MembershipRes', 'clientSecret');
  }

  @override
  MembershipRes rebuild(void Function(MembershipResBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MembershipResBuilder toBuilder() => new MembershipResBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MembershipRes && clientSecret == other.clientSecret;
  }

  @override
  int get hashCode {
    return $jf($jc(0, clientSecret.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MembershipRes')
          ..add('clientSecret', clientSecret))
        .toString();
  }
}

class MembershipResBuilder
    implements Builder<MembershipRes, MembershipResBuilder> {
  _$MembershipRes? _$v;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  MembershipResBuilder();

  MembershipResBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientSecret = $v.clientSecret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MembershipRes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MembershipRes;
  }

  @override
  void update(void Function(MembershipResBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MembershipRes build() {
    final _$result = _$v ??
        new _$MembershipRes._(
            clientSecret: BuiltValueNullFieldError.checkNotNull(
                clientSecret, 'MembershipRes', 'clientSecret'));
    replace(_$result);
    return _$result;
  }
}

class _$MembershipCheck extends MembershipCheck {
  @override
  final String clientSecret;
  @override
  final int membership;

  factory _$MembershipCheck([void Function(MembershipCheckBuilder)? updates]) =>
      (new MembershipCheckBuilder()..update(updates)).build();

  _$MembershipCheck._({required this.clientSecret, required this.membership})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientSecret, 'MembershipCheck', 'clientSecret');
    BuiltValueNullFieldError.checkNotNull(
        membership, 'MembershipCheck', 'membership');
  }

  @override
  MembershipCheck rebuild(void Function(MembershipCheckBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MembershipCheckBuilder toBuilder() =>
      new MembershipCheckBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MembershipCheck &&
        clientSecret == other.clientSecret &&
        membership == other.membership;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, clientSecret.hashCode), membership.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MembershipCheck')
          ..add('clientSecret', clientSecret)
          ..add('membership', membership))
        .toString();
  }
}

class MembershipCheckBuilder
    implements Builder<MembershipCheck, MembershipCheckBuilder> {
  _$MembershipCheck? _$v;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  int? _membership;
  int? get membership => _$this._membership;
  set membership(int? membership) => _$this._membership = membership;

  MembershipCheckBuilder();

  MembershipCheckBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientSecret = $v.clientSecret;
      _membership = $v.membership;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MembershipCheck other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MembershipCheck;
  }

  @override
  void update(void Function(MembershipCheckBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MembershipCheck build() {
    final _$result = _$v ??
        new _$MembershipCheck._(
            clientSecret: BuiltValueNullFieldError.checkNotNull(
                clientSecret, 'MembershipCheck', 'clientSecret'),
            membership: BuiltValueNullFieldError.checkNotNull(
                membership, 'MembershipCheck', 'membership'));
    replace(_$result);
    return _$result;
  }
}

class _$DirectQuestion extends DirectQuestion {
  @override
  final String? clientSecret;
  @override
  final int userId;
  @override
  final String question;

  factory _$DirectQuestion([void Function(DirectQuestionBuilder)? updates]) =>
      (new DirectQuestionBuilder()..update(updates)).build();

  _$DirectQuestion._(
      {this.clientSecret, required this.userId, required this.question})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'DirectQuestion', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        question, 'DirectQuestion', 'question');
  }

  @override
  DirectQuestion rebuild(void Function(DirectQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectQuestionBuilder toBuilder() =>
      new DirectQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectQuestion &&
        clientSecret == other.clientSecret &&
        userId == other.userId &&
        question == other.question;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, clientSecret.hashCode), userId.hashCode),
        question.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DirectQuestion')
          ..add('clientSecret', clientSecret)
          ..add('userId', userId)
          ..add('question', question))
        .toString();
  }
}

class DirectQuestionBuilder
    implements Builder<DirectQuestion, DirectQuestionBuilder> {
  _$DirectQuestion? _$v;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  DirectQuestionBuilder();

  DirectQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientSecret = $v.clientSecret;
      _userId = $v.userId;
      _question = $v.question;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DirectQuestion;
  }

  @override
  void update(void Function(DirectQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DirectQuestion build() {
    final _$result = _$v ??
        new _$DirectQuestion._(
            clientSecret: clientSecret,
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'DirectQuestion', 'userId'),
            question: BuiltValueNullFieldError.checkNotNull(
                question, 'DirectQuestion', 'question'));
    replace(_$result);
    return _$result;
  }
}

class _$CommentList extends CommentList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Comment>? results;

  factory _$CommentList([void Function(CommentListBuilder)? updates]) =>
      (new CommentListBuilder()..update(updates)).build();

  _$CommentList._({required this.count, this.next, this.previous, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'CommentList', 'count');
  }

  @override
  CommentList rebuild(void Function(CommentListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentListBuilder toBuilder() => new CommentListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentList &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class CommentListBuilder implements Builder<CommentList, CommentListBuilder> {
  _$CommentList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Comment>? _results;
  ListBuilder<Comment> get results =>
      _$this._results ??= new ListBuilder<Comment>();
  set results(ListBuilder<Comment>? results) => _$this._results = results;

  CommentListBuilder();

  CommentListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentList;
  }

  @override
  void update(void Function(CommentListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentList build() {
    _$CommentList _$result;
    try {
      _$result = _$v ??
          new _$CommentList._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, 'CommentList', 'count'),
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommentList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Comment extends Comment {
  @override
  final int id;
  @override
  final int question;
  @override
  final String? content;
  @override
  final bool isMy;
  @override
  final String? createdAt;
  @override
  final UserQuestion owner;

  factory _$Comment([void Function(CommentBuilder)? updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._(
      {required this.id,
      required this.question,
      this.content,
      required this.isMy,
      this.createdAt,
      required this.owner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Comment', 'id');
    BuiltValueNullFieldError.checkNotNull(question, 'Comment', 'question');
    BuiltValueNullFieldError.checkNotNull(isMy, 'Comment', 'isMy');
    BuiltValueNullFieldError.checkNotNull(owner, 'Comment', 'owner');
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        question == other.question &&
        content == other.content &&
        isMy == other.isMy &&
        createdAt == other.createdAt &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), question.hashCode),
                    content.hashCode),
                isMy.hashCode),
            createdAt.hashCode),
        owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('question', question)
          ..add('content', content)
          ..add('isMy', isMy)
          ..add('createdAt', createdAt)
          ..add('owner', owner))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _question;
  int? get question => _$this._question;
  set question(int? question) => _$this._question = question;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  bool? _isMy;
  bool? get isMy => _$this._isMy;
  set isMy(bool? isMy) => _$this._isMy = isMy;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  UserQuestionBuilder? _owner;
  UserQuestionBuilder get owner => _$this._owner ??= new UserQuestionBuilder();
  set owner(UserQuestionBuilder? owner) => _$this._owner = owner;

  CommentBuilder();

  CommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _content = $v.content;
      _isMy = $v.isMy;
      _createdAt = $v.createdAt;
      _owner = $v.owner.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    _$Comment _$result;
    try {
      _$result = _$v ??
          new _$Comment._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Comment', 'id'),
              question: BuiltValueNullFieldError.checkNotNull(
                  question, 'Comment', 'question'),
              content: content,
              isMy: BuiltValueNullFieldError.checkNotNull(
                  isMy, 'Comment', 'isMy'),
              createdAt: createdAt,
              owner: owner.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Comment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateComment extends CreateComment {
  @override
  final int question;
  @override
  final String? content;

  factory _$CreateComment([void Function(CreateCommentBuilder)? updates]) =>
      (new CreateCommentBuilder()..update(updates)).build();

  _$CreateComment._({required this.question, this.content}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        question, 'CreateComment', 'question');
  }

  @override
  CreateComment rebuild(void Function(CreateCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommentBuilder toBuilder() => new CreateCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateComment &&
        question == other.question &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, question.hashCode), content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateComment')
          ..add('question', question)
          ..add('content', content))
        .toString();
  }
}

class CreateCommentBuilder
    implements Builder<CreateComment, CreateCommentBuilder> {
  _$CreateComment? _$v;

  int? _question;
  int? get question => _$this._question;
  set question(int? question) => _$this._question = question;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  CreateCommentBuilder();

  CreateCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateComment;
  }

  @override
  void update(void Function(CreateCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateComment build() {
    final _$result = _$v ??
        new _$CreateComment._(
            question: BuiltValueNullFieldError.checkNotNull(
                question, 'CreateComment', 'question'),
            content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
