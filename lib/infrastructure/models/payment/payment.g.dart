// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Payment> _$paymentSerializer = new _$PaymentSerializer();
Serializer<PaymentListModel> _$paymentListModelSerializer =
    new _$PaymentListModelSerializer();
Serializer<PaymentResult> _$paymentResultSerializer =
    new _$PaymentResultSerializer();
Serializer<CheckAccount> _$checkAccountSerializer =
    new _$CheckAccountSerializer();
Serializer<Country> _$countrySerializer = new _$CountrySerializer();
Serializer<Link> _$linkSerializer = new _$LinkSerializer();

class _$PaymentSerializer implements StructuredSerializer<Payment> {
  @override
  final Iterable<Type> types = const [Payment, _$Payment];
  @override
  final String wireName = 'Payment';

  @override
  Iterable<Object?> serialize(Serializers serializers, Payment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'card_type',
      serializers.serialize(object.cardType,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cvc;
    if (value != null) {
      result
        ..add('cvc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expYear;
    if (value != null) {
      result
        ..add('exp_year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expMonth;
    if (value != null) {
      result
        ..add('exp_month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Payment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cvc':
          result.cvc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exp_year':
          result.expYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'exp_month':
          result.expMonth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentListModelSerializer
    implements StructuredSerializer<PaymentListModel> {
  @override
  final Iterable<Type> types = const [PaymentListModel, _$PaymentListModel];
  @override
  final String wireName = 'PaymentListModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(PaymentResult)])));
    }
    return result;
  }

  @override
  PaymentListModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentListModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(PaymentResult)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentResultSerializer implements StructuredSerializer<PaymentResult> {
  @override
  final Iterable<Type> types = const [PaymentResult, _$PaymentResult];
  @override
  final String wireName = 'PaymentResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expYear;
    if (value != null) {
      result
        ..add('exp_year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expMonth;
    if (value != null) {
      result
        ..add('exp_month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isDefault;
    if (value != null) {
      result
        ..add('is_default')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cardType;
    if (value != null) {
      result
        ..add('card_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PaymentResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exp_year':
          result.expYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'exp_month':
          result.expMonth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'is_default':
          result.isDefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'card_type':
          result.cardType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckAccountSerializer implements StructuredSerializer<CheckAccount> {
  @override
  final Iterable<Type> types = const [CheckAccount, _$CheckAccount];
  @override
  final String wireName = 'CheckAccount';

  @override
  Iterable<Object?> serialize(Serializers serializers, CheckAccount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  CheckAccount deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckAccountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$CountrySerializer implements StructuredSerializer<Country> {
  @override
  final Iterable<Type> types = const [Country, _$Country];
  @override
  final String wireName = 'Country';

  @override
  Iterable<Object?> serialize(Serializers serializers, Country object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Country deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LinkSerializer implements StructuredSerializer<Link> {
  @override
  final Iterable<Type> types = const [Link, _$Link];
  @override
  final String wireName = 'Link';

  @override
  Iterable<Object?> serialize(Serializers serializers, Link object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Link deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Payment extends Payment {
  @override
  final String? number;
  @override
  final String? cvc;
  @override
  final int? expYear;
  @override
  final int? expMonth;
  @override
  final String cardType;

  factory _$Payment([void Function(PaymentBuilder)? updates]) =>
      (new PaymentBuilder()..update(updates)).build();

  _$Payment._(
      {this.number,
      this.cvc,
      this.expYear,
      this.expMonth,
      required this.cardType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(cardType, 'Payment', 'cardType');
  }

  @override
  Payment rebuild(void Function(PaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentBuilder toBuilder() => new PaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Payment &&
        number == other.number &&
        cvc == other.cvc &&
        expYear == other.expYear &&
        expMonth == other.expMonth &&
        cardType == other.cardType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, number.hashCode), cvc.hashCode), expYear.hashCode),
            expMonth.hashCode),
        cardType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Payment')
          ..add('number', number)
          ..add('cvc', cvc)
          ..add('expYear', expYear)
          ..add('expMonth', expMonth)
          ..add('cardType', cardType))
        .toString();
  }
}

class PaymentBuilder implements Builder<Payment, PaymentBuilder> {
  _$Payment? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _cvc;
  String? get cvc => _$this._cvc;
  set cvc(String? cvc) => _$this._cvc = cvc;

  int? _expYear;
  int? get expYear => _$this._expYear;
  set expYear(int? expYear) => _$this._expYear = expYear;

  int? _expMonth;
  int? get expMonth => _$this._expMonth;
  set expMonth(int? expMonth) => _$this._expMonth = expMonth;

  String? _cardType;
  String? get cardType => _$this._cardType;
  set cardType(String? cardType) => _$this._cardType = cardType;

  PaymentBuilder();

  PaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _cvc = $v.cvc;
      _expYear = $v.expYear;
      _expMonth = $v.expMonth;
      _cardType = $v.cardType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Payment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Payment;
  }

  @override
  void update(void Function(PaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Payment build() {
    final _$result = _$v ??
        new _$Payment._(
            number: number,
            cvc: cvc,
            expYear: expYear,
            expMonth: expMonth,
            cardType: BuiltValueNullFieldError.checkNotNull(
                cardType, 'Payment', 'cardType'));
    replace(_$result);
    return _$result;
  }
}

class _$PaymentListModel extends PaymentListModel {
  @override
  final int? count;
  @override
  final BuiltList<PaymentResult?>? results;

  factory _$PaymentListModel(
          [void Function(PaymentListModelBuilder)? updates]) =>
      (new PaymentListModelBuilder()..update(updates)).build();

  _$PaymentListModel._({this.count, this.results}) : super._();

  @override
  PaymentListModel rebuild(void Function(PaymentListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentListModelBuilder toBuilder() =>
      new PaymentListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentListModel &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentListModel')
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class PaymentListModelBuilder
    implements Builder<PaymentListModel, PaymentListModelBuilder> {
  _$PaymentListModel? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<PaymentResult?>? _results;
  ListBuilder<PaymentResult?> get results =>
      _$this._results ??= new ListBuilder<PaymentResult?>();
  set results(ListBuilder<PaymentResult?>? results) =>
      _$this._results = results;

  PaymentListModelBuilder();

  PaymentListModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentListModel;
  }

  @override
  void update(void Function(PaymentListModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentListModel build() {
    _$PaymentListModel _$result;
    try {
      _$result = _$v ??
          new _$PaymentListModel._(count: count, results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PaymentListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PaymentResult extends PaymentResult {
  @override
  final int? id;
  @override
  final String? brand;
  @override
  final String? number;
  @override
  final int? expYear;
  @override
  final int? expMonth;
  @override
  final bool? isDefault;
  @override
  final String? cardType;

  factory _$PaymentResult([void Function(PaymentResultBuilder)? updates]) =>
      (new PaymentResultBuilder()..update(updates)).build();

  _$PaymentResult._(
      {this.id,
      this.brand,
      this.number,
      this.expYear,
      this.expMonth,
      this.isDefault,
      this.cardType})
      : super._();

  @override
  PaymentResult rebuild(void Function(PaymentResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentResultBuilder toBuilder() => new PaymentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentResult &&
        id == other.id &&
        brand == other.brand &&
        number == other.number &&
        expYear == other.expYear &&
        expMonth == other.expMonth &&
        isDefault == other.isDefault &&
        cardType == other.cardType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), brand.hashCode),
                        number.hashCode),
                    expYear.hashCode),
                expMonth.hashCode),
            isDefault.hashCode),
        cardType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentResult')
          ..add('id', id)
          ..add('brand', brand)
          ..add('number', number)
          ..add('expYear', expYear)
          ..add('expMonth', expMonth)
          ..add('isDefault', isDefault)
          ..add('cardType', cardType))
        .toString();
  }
}

class PaymentResultBuilder
    implements Builder<PaymentResult, PaymentResultBuilder> {
  _$PaymentResult? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  int? _expYear;
  int? get expYear => _$this._expYear;
  set expYear(int? expYear) => _$this._expYear = expYear;

  int? _expMonth;
  int? get expMonth => _$this._expMonth;
  set expMonth(int? expMonth) => _$this._expMonth = expMonth;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  String? _cardType;
  String? get cardType => _$this._cardType;
  set cardType(String? cardType) => _$this._cardType = cardType;

  PaymentResultBuilder();

  PaymentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _brand = $v.brand;
      _number = $v.number;
      _expYear = $v.expYear;
      _expMonth = $v.expMonth;
      _isDefault = $v.isDefault;
      _cardType = $v.cardType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentResult;
  }

  @override
  void update(void Function(PaymentResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentResult build() {
    final _$result = _$v ??
        new _$PaymentResult._(
            id: id,
            brand: brand,
            number: number,
            expYear: expYear,
            expMonth: expMonth,
            isDefault: isDefault,
            cardType: cardType);
    replace(_$result);
    return _$result;
  }
}

class _$CheckAccount extends CheckAccount {
  @override
  final bool? status;

  factory _$CheckAccount([void Function(CheckAccountBuilder)? updates]) =>
      (new CheckAccountBuilder()..update(updates)).build();

  _$CheckAccount._({this.status}) : super._();

  @override
  CheckAccount rebuild(void Function(CheckAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckAccountBuilder toBuilder() => new CheckAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckAccount && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckAccount')..add('status', status))
        .toString();
  }
}

class CheckAccountBuilder
    implements Builder<CheckAccount, CheckAccountBuilder> {
  _$CheckAccount? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  CheckAccountBuilder();

  CheckAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckAccount;
  }

  @override
  void update(void Function(CheckAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckAccount build() {
    final _$result = _$v ?? new _$CheckAccount._(status: status);
    replace(_$result);
    return _$result;
  }
}

class _$Country extends Country {
  @override
  final String? country;

  factory _$Country([void Function(CountryBuilder)? updates]) =>
      (new CountryBuilder()..update(updates)).build();

  _$Country._({this.country}) : super._();

  @override
  Country rebuild(void Function(CountryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryBuilder toBuilder() => new CountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Country && country == other.country;
  }

  @override
  int get hashCode {
    return $jf($jc(0, country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Country')..add('country', country))
        .toString();
  }
}

class CountryBuilder implements Builder<Country, CountryBuilder> {
  _$Country? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  CountryBuilder();

  CountryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Country other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Country;
  }

  @override
  void update(void Function(CountryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Country build() {
    final _$result = _$v ?? new _$Country._(country: country);
    replace(_$result);
    return _$result;
  }
}

class _$Link extends Link {
  @override
  final String? link;

  factory _$Link([void Function(LinkBuilder)? updates]) =>
      (new LinkBuilder()..update(updates)).build();

  _$Link._({this.link}) : super._();

  @override
  Link rebuild(void Function(LinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkBuilder toBuilder() => new LinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Link && link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(0, link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Link')..add('link', link)).toString();
  }
}

class LinkBuilder implements Builder<Link, LinkBuilder> {
  _$Link? _$v;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  LinkBuilder();

  LinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Link other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Link;
  }

  @override
  void update(void Function(LinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Link build() {
    final _$result = _$v ?? new _$Link._(link: link);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
