import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'question.g.dart';


abstract class UserQuestion
    implements Built<UserQuestion, UserQuestionBuilder> {
  int? get id;

  String get username;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  String? get avatar;

  String get email;

  @BuiltValueField(wireName: 'you_followed')
  bool? get youFollowed;

  UserQuestion._();
  factory UserQuestion([Function(UserQuestionBuilder b) updates]) =
  _$UserQuestion;

  static Serializer<UserQuestion> get serializer =>
      _$userQuestionSerializer;
}

abstract class SearchUsers
    implements Built<SearchUsers, SearchUsersBuilder> {

  int get count;

  String? get next;

  String? get previous;

  BuiltList<UserQuestion>? get results;

  SearchUsers._();
  factory SearchUsers([Function(SearchUsersBuilder b) updates]) =
  _$SearchUsers;

  static Serializer<SearchUsers> get serializer =>
      _$searchUsersSerializer;
}



abstract class CheckAnswer
    implements Built<CheckAnswer, CheckAnswerBuilder> {

  @BuiltValueField(wireName: 'can_ask_question')
  bool get canAskQuestion;

  CheckAnswer._();
  factory CheckAnswer([Function(CheckAnswerBuilder b) updates]) =
  _$CheckAnswer;

  static Serializer<CheckAnswer> get serializer =>
      _$checkAnswerSerializer;
}


abstract class AnswerQuestions
    implements Built<AnswerQuestions, AnswerQuestionsBuilder> {

  String? get answer;

  AnswerQuestions._();
  factory AnswerQuestions([Function(AnswerQuestionsBuilder b) updates]) =
  _$AnswerQuestions;

  static Serializer<AnswerQuestions> get serializer =>
      _$answerQuestionsSerializer;
}

abstract class IndividualQuestions
    implements Built<IndividualQuestions, IndividualQuestionsBuilder> {
  int? get id;

  String get question;

  String? get answer;

  BuiltList<int> get categories;

  @BuiltValueField(wireName: 'created_date')
  String? get createdAt;

  IndividualQuestions._();
  factory IndividualQuestions([Function(IndividualQuestionsBuilder b) updates]) =
  _$IndividualQuestions;

  static Serializer<IndividualQuestions> get serializer =>
      _$individualQuestionsSerializer;
}


abstract class Topic implements Built<Topic, TopicBuilder> {
  int get id;

  String? get name;

  int? get followers;

  @BuiltValueField(wireName: 'you_followed')
  bool get youFollowed;

  Questions? get questions;

  Topic._();
  factory Topic([Function(TopicBuilder b) updates]) = _$Topic;

  static Serializer<Topic> get serializer => _$topicSerializer;
}

abstract class IndividualQuestion
    implements Built<IndividualQuestion, IndividualQuestionBuilder> {
  int? get id;

  String get question;

  String? get answer;

  UserQuestion get owner;

  UserQuestion? get answerer;

  BuiltList<int> get categories;

  @BuiltValueField(wireName: 'comment_count')
  int get comment;

  @BuiltValueField(wireName: 'created_date')
  String? get createdAt;

  @BuiltValueField(wireName: 'answered_date')
  String? get answeredDate;

  IndividualQuestion._();
  factory IndividualQuestion([Function(IndividualQuestionBuilder b) updates]) =
      _$IndividualQuestion;

  static Serializer<IndividualQuestion> get serializer =>
      _$individualQuestionSerializer;
}

abstract class Questions implements Built<Questions, QuestionsBuilder> {
  int get count;

  String? get next;

  String? get previous;

  BuiltList<IndividualQuestion>? get results;

  Questions._();
  factory Questions([Function(QuestionsBuilder b) updates]) = _$Questions;

  static Serializer<Questions> get serializer => _$questionsSerializer;
}

abstract class Count implements Built<Count, CountBuilder> {
  int get count;

  Count._();
  factory Count([Function(CountBuilder b) updates]) = _$Count;

  static Serializer<Count> get serializer => _$countSerializer;
}

abstract class CheckCount implements Built<CheckCount, CheckCountBuilder> {
  @BuiltValueField(wireName: 'free_count')
  int get count;

  CheckCount._();
  factory CheckCount([Function(CheckCountBuilder b) updates]) = _$CheckCount;

  static Serializer<CheckCount> get serializer => _$checkCountSerializer;
}

abstract class Question implements Built<Question, QuestionBuilder> {
  String? get question;

  Question._();
  factory Question([Function(QuestionBuilder b) updates]) = _$Question;

  static Serializer<Question> get serializer => _$questionSerializer;
}

abstract class CreatePaymentIntent implements Built<CreatePaymentIntent, CreatePaymentIntentBuilder> {

  @BuiltValueField(wireName: 'number_of_question')
  int get count;

  CreatePaymentIntent._();
  factory CreatePaymentIntent([Function(CreatePaymentIntentBuilder b) updates]) = _$CreatePaymentIntent;

  static Serializer<CreatePaymentIntent> get serializer => _$createPaymentIntentSerializer;
}

abstract class ReportQuestion implements Built<ReportQuestion, ReportQuestionBuilder> {

  @BuiltValueField(wireName: 'report_type')
  String get type;

  @BuiltValueField(wireName: 'report_for')
  String get reportFor;

  @BuiltValueField(wireName: 'object')
  int get id;

  ReportQuestion._();
  factory ReportQuestion([Function(ReportQuestionBuilder b) updates]) = _$ReportQuestion;

  static Serializer<ReportQuestion> get serializer => _$reportQuestionSerializer;
}

abstract class ResponsePaymentIntent implements Built<ResponsePaymentIntent, ResponsePaymentIntentBuilder> {

  @BuiltValueField(wireName: 'detail')
  String get key;

  ResponsePaymentIntent._();
  factory ResponsePaymentIntent([Function(ResponsePaymentIntentBuilder b) updates]) = _$ResponsePaymentIntent;

  static Serializer<ResponsePaymentIntent> get serializer => _$responsePaymentIntentSerializer;
}


abstract class Membership implements Built<Membership, MembershipBuilder> {

  int get membership;

  Membership._();
  factory Membership([Function(MembershipBuilder b) updates]) = _$Membership;

  static Serializer<Membership> get serializer => _$membershipSerializer;
}

abstract class MembershipRes implements Built<MembershipRes, MembershipResBuilder> {

  @BuiltValueField(wireName: 'client_secret')
  String get clientSecret;

  MembershipRes._();
  factory MembershipRes([Function(MembershipResBuilder b) updates]) = _$MembershipRes;

  static Serializer<MembershipRes> get serializer => _$membershipResSerializer;
}

abstract class MembershipCheck implements Built<MembershipCheck, MembershipCheckBuilder> {

  @BuiltValueField(wireName: 'client_secret')
  String get clientSecret;

  int get membership;

  MembershipCheck._();
  factory MembershipCheck([Function(MembershipCheckBuilder b) updates]) = _$MembershipCheck;

  static Serializer<MembershipCheck> get serializer => _$membershipCheckSerializer;
}

abstract class DirectQuestion implements Built<DirectQuestion, DirectQuestionBuilder> {

  @BuiltValueField(wireName: 'client_secret')
  String? get clientSecret;

  @BuiltValueField(wireName: 'given_to')
  int get userId;

  String get question;

  DirectQuestion._();
  factory DirectQuestion([Function(DirectQuestionBuilder b) updates]) = _$DirectQuestion;

  static Serializer<DirectQuestion> get serializer => _$directQuestionSerializer;
}

abstract class CommentList implements Built<CommentList, CommentListBuilder> {

  int get count;

  String? get next;

  String? get previous;

  BuiltList<Comment>? get results;

  CommentList._();
  factory CommentList([Function(CommentListBuilder b) updates]) = _$CommentList;

  static Serializer<CommentList> get serializer => _$commentListSerializer;
}

abstract class Comment implements Built<Comment, CommentBuilder> {

  int get id;

  int get question;

  String? get content;

  @BuiltValueField(wireName: 'is_my_comment')
  bool  get isMy;

  @BuiltValueField(wireName: 'created_datetime')
  String? get createdAt;

  @BuiltValueField(wireName: 'created_user')
  UserQuestion get owner;

  Comment._();
  factory Comment([Function(CommentBuilder b) updates]) = _$Comment;

  static Serializer<Comment> get serializer => _$commentSerializer;
}

abstract class CreateComment implements Built<CreateComment, CreateCommentBuilder> {

  int get question;

  String? get content;

  CreateComment._();
  factory CreateComment([Function(CreateCommentBuilder b) updates]) = _$CreateComment;

  static Serializer<CreateComment> get serializer => _$createCommentSerializer;
}
