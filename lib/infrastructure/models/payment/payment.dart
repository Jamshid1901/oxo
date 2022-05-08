import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'payment.g.dart';

abstract class Payment implements Built<Payment, PaymentBuilder> {
  String? get number;

  String? get cvc;

  @BuiltValueField(wireName: 'exp_year')
  int? get expYear;

  @BuiltValueField(wireName: 'exp_month')
  int? get expMonth;

  @BuiltValueField(wireName: 'card_type')
  String get cardType;

  Payment._();
  factory Payment([Function(PaymentBuilder b) updates]) = _$Payment;

  static Serializer<Payment> get serializer => _$paymentSerializer;
}

abstract class PaymentListModel implements Built<PaymentListModel, PaymentListModelBuilder> {
  int? get count;
  BuiltList<PaymentResult?>? get results;

  PaymentListModel._();
  factory PaymentListModel([Function(PaymentListModelBuilder b) updates]) = _$PaymentListModel;

  static Serializer<PaymentListModel> get serializer => _$paymentListModelSerializer;
}


abstract class PaymentResult implements Built<PaymentResult, PaymentResultBuilder> {
  int? get id;

  String? get brand;

  String? get number;

  @BuiltValueField(wireName: 'exp_year')
  int? get expYear;

  @BuiltValueField(wireName: 'exp_month')
  int? get expMonth;

  @BuiltValueField(wireName: 'is_default')
  bool? get isDefault;

  @BuiltValueField(wireName: 'card_type')
  String? get cardType;

  PaymentResult._();
  factory PaymentResult([Function(PaymentResultBuilder b) updates]) = _$PaymentResult;

  static Serializer<PaymentResult> get serializer => _$paymentResultSerializer;
}

abstract class CheckAccount implements Built<CheckAccount, CheckAccountBuilder> {
  bool? get status;

  CheckAccount._();
  factory CheckAccount([Function(CheckAccountBuilder b) updates]) = _$CheckAccount;

  static Serializer<CheckAccount> get serializer => _$checkAccountSerializer;
}

abstract class Country implements Built<Country, CountryBuilder> {
  String? get country;

  Country._();
  factory Country([Function(CountryBuilder b) updates]) = _$Country;

  static Serializer<Country> get serializer => _$countrySerializer;
}

abstract class Link implements Built<Link, LinkBuilder> {
  String? get link;

  Link._();
  factory Link([Function(LinkBuilder b) updates]) = _$Link;

  static Serializer<Link> get serializer => _$linkSerializer;
}