// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Profile> _$profileSerializer = new _$ProfileSerializer();
Serializer<Follow> _$followSerializer = new _$FollowSerializer();
Serializer<SignOut> _$signOutSerializer = new _$SignOutSerializer();
Serializer<EditUsername> _$editUsernameSerializer =
    new _$EditUsernameSerializer();
Serializer<ResetPassword> _$resetPasswordSerializer =
    new _$ResetPasswordSerializer();
Serializer<ForgetPasswordConfirm> _$forgetPasswordConfirmSerializer =
    new _$ForgetPasswordConfirmSerializer();
Serializer<SetRate> _$setRateSerializer = new _$SetRateSerializer();
Serializer<Links> _$linksSerializer = new _$LinksSerializer();
Serializer<Verification> _$verificationSerializer =
    new _$VerificationSerializer();
Serializer<ChangeProfile> _$changeProfileSerializer =
    new _$ChangeProfileSerializer();
Serializer<UploadFile> _$uploadFileSerializer = new _$UploadFileSerializer();
Serializer<ChooseFileModel> _$chooseFileModelSerializer =
    new _$ChooseFileModelSerializer();
Serializer<AccountStatusModel> _$accountStatusModelSerializer =
    new _$AccountStatusModelSerializer();
Serializer<OnboardModel> _$onboardModelSerializer =
    new _$OnboardModelSerializer();
Serializer<AddCardModel> _$addCardModelSerializer =
    new _$AddCardModelSerializer();
Serializer<CardModel> _$cardModelSerializer = new _$CardModelSerializer();
Serializer<CardList> _$cardListSerializer = new _$CardListSerializer();
Serializer<BuyDirectQ> _$buyDirectQSerializer = new _$BuyDirectQSerializer();
Serializer<UserBlock> _$userBlockSerializer = new _$UserBlockSerializer();
Serializer<ReportCategory> _$reportCategorySerializer =
    new _$ReportCategorySerializer();
Serializer<GetCategory> _$getCategorySerializer = new _$GetCategorySerializer();
Serializer<ReportUser> _$reportUserSerializer = new _$ReportUserSerializer();

class _$ProfileSerializer implements StructuredSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];
  @override
  final String wireName = 'Profile';

  @override
  Iterable<Object?> serialize(Serializers serializers, Profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'following',
      serializers.serialize(object.following,
          specifiedType: const FullType(int)),
      'followers',
      serializers.serialize(object.followers,
          specifiedType: const FullType(int)),
      'is_verified',
      serializers.serialize(object.isVerified,
          specifiedType: const FullType(bool)),
      'you_followed',
      serializers.serialize(object.youFollowed,
          specifiedType: const FullType(bool)),
      'is_himself',
      serializers.serialize(object.isHimself,
          specifiedType: const FullType(bool)),
      'has_membership',
      serializers.serialize(object.isMembership,
          specifiedType: const FullType(bool)),
      'direct_question_rate',
      serializers.serialize(object.rate, specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Profile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBuilder();

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
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'following':
          result.following = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'followers':
          result.followers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_verified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'you_followed':
          result.youFollowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_himself':
          result.isHimself = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_membership':
          result.isMembership = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'direct_question_rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FollowSerializer implements StructuredSerializer<Follow> {
  @override
  final Iterable<Type> types = const [Follow, _$Follow];
  @override
  final String wireName = 'Follow';

  @override
  Iterable<Object?> serialize(Serializers serializers, Follow object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.followId;
    if (value != null) {
      result
        ..add('followed_to')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Follow deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FollowBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'followed_to':
          result.followId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$SignOutSerializer implements StructuredSerializer<SignOut> {
  @override
  final Iterable<Type> types = const [SignOut, _$SignOut];
  @override
  final String wireName = 'SignOut';

  @override
  Iterable<Object?> serialize(Serializers serializers, SignOut object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fcmToken;
    if (value != null) {
      result
        ..add('firebase_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignOut deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignOutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firebase_token':
          result.fcmToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$EditUsernameSerializer implements StructuredSerializer<EditUsername> {
  @override
  final Iterable<Type> types = const [EditUsername, _$EditUsername];
  @override
  final String wireName = 'EditUsername';

  @override
  Iterable<Object?> serialize(Serializers serializers, EditUsername object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EditUsername deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EditUsernameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ResetPasswordSerializer implements StructuredSerializer<ResetPassword> {
  @override
  final Iterable<Type> types = const [ResetPassword, _$ResetPassword];
  @override
  final String wireName = 'ResetPassword';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResetPassword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.oldPassword;
    if (value != null) {
      result
        ..add('old_password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newPassword;
    if (value != null) {
      result
        ..add('new_password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ResetPassword deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResetPasswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'old_password':
          result.oldPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'new_password':
          result.newPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ForgetPasswordConfirmSerializer
    implements StructuredSerializer<ForgetPasswordConfirm> {
  @override
  final Iterable<Type> types = const [
    ForgetPasswordConfirm,
    _$ForgetPasswordConfirm
  ];
  @override
  final String wireName = 'ForgetPasswordConfirm';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ForgetPasswordConfirm object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newPassword;
    if (value != null) {
      result
        ..add('new_password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ForgetPasswordConfirm deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForgetPasswordConfirmBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'new_password':
          result.newPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SetRateSerializer implements StructuredSerializer<SetRate> {
  @override
  final Iterable<Type> types = const [SetRate, _$SetRate];
  @override
  final String wireName = 'SetRate';

  @override
  Iterable<Object?> serialize(Serializers serializers, SetRate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  SetRate deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SetRateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LinksSerializer implements StructuredSerializer<Links> {
  @override
  final Iterable<Type> types = const [Links, _$Links];
  @override
  final String wireName = 'Links';

  @override
  Iterable<Object?> serialize(Serializers serializers, Links object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Links deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$VerificationSerializer implements StructuredSerializer<Verification> {
  @override
  final Iterable<Type> types = const [Verification, _$Verification];
  @override
  final String wireName = 'Verification';

  @override
  Iterable<Object?> serialize(Serializers serializers, Verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Links)])));
    }
    return result;
  }

  @override
  Verification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'document':
          result.document = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Links)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ChangeProfileSerializer implements StructuredSerializer<ChangeProfile> {
  @override
  final Iterable<Type> types = const [ChangeProfile, _$ChangeProfile];
  @override
  final String wireName = 'ChangeProfile';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChangeProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChangeProfile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChangeProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'detail':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UploadFileSerializer implements StructuredSerializer<UploadFile> {
  @override
  final Iterable<Type> types = const [UploadFile, _$UploadFile];
  @override
  final String wireName = 'UploadFile';

  @override
  Iterable<Object?> serialize(Serializers serializers, UploadFile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('document_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(File)));
    }
    return result;
  }

  @override
  UploadFile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UploadFileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'document_type':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(File)) as File?;
          break;
      }
    }

    return result.build();
  }
}

class _$ChooseFileModelSerializer
    implements StructuredSerializer<ChooseFileModel> {
  @override
  final Iterable<Type> types = const [ChooseFileModel, _$ChooseFileModel];
  @override
  final String wireName = 'ChooseFileModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChooseFileModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('document_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChooseFileModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChooseFileModelBuilder();

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
        case 'document_type':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountStatusModelSerializer
    implements StructuredSerializer<AccountStatusModel> {
  @override
  final Iterable<Type> types = const [AccountStatusModel, _$AccountStatusModel];
  @override
  final String wireName = 'AccountStatusModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AccountStatusModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('is_onboarding_completed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AccountStatusModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountStatusModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_onboarding_completed':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$OnboardModelSerializer implements StructuredSerializer<OnboardModel> {
  @override
  final Iterable<Type> types = const [OnboardModel, _$OnboardModel];
  @override
  final String wireName = 'OnboardModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, OnboardModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'detail',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  OnboardModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OnboardModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'detail':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddCardModelSerializer implements StructuredSerializer<AddCardModel> {
  @override
  final Iterable<Type> types = const [AddCardModel, _$AddCardModel];
  @override
  final String wireName = 'AddCardModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddCardModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'number',
      serializers.serialize(object.number,
          specifiedType: const FullType(String)),
      'cvc',
      serializers.serialize(object.cvc, specifiedType: const FullType(String)),
      'exp_month',
      serializers.serialize(object.month,
          specifiedType: const FullType(String)),
      'exp_year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
      'card_name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'transaction_type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AddCardModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddCardModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cvc':
          result.cvc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exp_month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exp_year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction_type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CardModelSerializer implements StructuredSerializer<CardModel> {
  @override
  final Iterable<Type> types = const [CardModel, _$CardModel];
  @override
  final String wireName = 'CardModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CardModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'last4',
      serializers.serialize(object.number,
          specifiedType: const FullType(String)),
      'brand',
      serializers.serialize(object.brand,
          specifiedType: const FullType(String)),
      'default_payment_card',
      serializers.serialize(object.defaultCard,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  CardModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardModelBuilder();

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
        case 'last4':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'default_payment_card':
          result.defaultCard = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CardListSerializer implements StructuredSerializer<CardList> {
  @override
  final Iterable<Type> types = const [CardList, _$CardList];
  @override
  final String wireName = 'CardList';

  @override
  Iterable<Object?> serialize(Serializers serializers, CardList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cards;
    if (value != null) {
      result
        ..add('cards')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CardModel)])));
    }
    return result;
  }

  @override
  CardList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CardListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cards':
          result.cards.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CardModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuyDirectQSerializer implements StructuredSerializer<BuyDirectQ> {
  @override
  final Iterable<Type> types = const [BuyDirectQ, _$BuyDirectQ];
  @override
  final String wireName = 'BuyDirectQ';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuyDirectQ object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BuyDirectQ deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuyDirectQBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserBlockSerializer implements StructuredSerializer<UserBlock> {
  @override
  final Iterable<Type> types = const [UserBlock, _$UserBlock];
  @override
  final String wireName = 'UserBlock';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserBlock object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'blocked_user',
      serializers.serialize(object.user, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  UserBlock deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBlockBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'blocked_user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReportCategorySerializer
    implements StructuredSerializer<ReportCategory> {
  @override
  final Iterable<Type> types = const [ReportCategory, _$ReportCategory];
  @override
  final String wireName = 'ReportCategory';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReportCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ReportCategory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportCategoryBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetCategorySerializer implements StructuredSerializer<GetCategory> {
  @override
  final Iterable<Type> types = const [GetCategory, _$GetCategory];
  @override
  final String wireName = 'GetCategory';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ReportCategory)])));
    }
    return result;
  }

  @override
  GetCategory deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetCategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReportCategory)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReportUserSerializer implements StructuredSerializer<ReportUser> {
  @override
  final Iterable<Type> types = const [ReportUser, _$ReportUser];
  @override
  final String wireName = 'ReportUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReportUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reported_user',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(int)),
      'reason',
      serializers.serialize(object.reason,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ReportUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reported_user':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Profile extends Profile {
  @override
  final int id;
  @override
  final String username;
  @override
  final String? fullName;
  @override
  final String? avatar;
  @override
  final String? bio;
  @override
  final int following;
  @override
  final int followers;
  @override
  final bool isVerified;
  @override
  final bool youFollowed;
  @override
  final bool isHimself;
  @override
  final bool isMembership;
  @override
  final String rate;

  factory _$Profile([void Function(ProfileBuilder)? updates]) =>
      (new ProfileBuilder()..update(updates)).build();

  _$Profile._(
      {required this.id,
      required this.username,
      this.fullName,
      this.avatar,
      this.bio,
      required this.following,
      required this.followers,
      required this.isVerified,
      required this.youFollowed,
      required this.isHimself,
      required this.isMembership,
      required this.rate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Profile', 'id');
    BuiltValueNullFieldError.checkNotNull(username, 'Profile', 'username');
    BuiltValueNullFieldError.checkNotNull(following, 'Profile', 'following');
    BuiltValueNullFieldError.checkNotNull(followers, 'Profile', 'followers');
    BuiltValueNullFieldError.checkNotNull(isVerified, 'Profile', 'isVerified');
    BuiltValueNullFieldError.checkNotNull(
        youFollowed, 'Profile', 'youFollowed');
    BuiltValueNullFieldError.checkNotNull(isHimself, 'Profile', 'isHimself');
    BuiltValueNullFieldError.checkNotNull(
        isMembership, 'Profile', 'isMembership');
    BuiltValueNullFieldError.checkNotNull(rate, 'Profile', 'rate');
  }

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        id == other.id &&
        username == other.username &&
        fullName == other.fullName &&
        avatar == other.avatar &&
        bio == other.bio &&
        following == other.following &&
        followers == other.followers &&
        isVerified == other.isVerified &&
        youFollowed == other.youFollowed &&
        isHimself == other.isHimself &&
        isMembership == other.isMembership &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                username.hashCode),
                                            fullName.hashCode),
                                        avatar.hashCode),
                                    bio.hashCode),
                                following.hashCode),
                            followers.hashCode),
                        isVerified.hashCode),
                    youFollowed.hashCode),
                isHimself.hashCode),
            isMembership.hashCode),
        rate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Profile')
          ..add('id', id)
          ..add('username', username)
          ..add('fullName', fullName)
          ..add('avatar', avatar)
          ..add('bio', bio)
          ..add('following', following)
          ..add('followers', followers)
          ..add('isVerified', isVerified)
          ..add('youFollowed', youFollowed)
          ..add('isHimself', isHimself)
          ..add('isMembership', isMembership)
          ..add('rate', rate))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile? _$v;

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

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  int? _following;
  int? get following => _$this._following;
  set following(int? following) => _$this._following = following;

  int? _followers;
  int? get followers => _$this._followers;
  set followers(int? followers) => _$this._followers = followers;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  bool? _youFollowed;
  bool? get youFollowed => _$this._youFollowed;
  set youFollowed(bool? youFollowed) => _$this._youFollowed = youFollowed;

  bool? _isHimself;
  bool? get isHimself => _$this._isHimself;
  set isHimself(bool? isHimself) => _$this._isHimself = isHimself;

  bool? _isMembership;
  bool? get isMembership => _$this._isMembership;
  set isMembership(bool? isMembership) => _$this._isMembership = isMembership;

  String? _rate;
  String? get rate => _$this._rate;
  set rate(String? rate) => _$this._rate = rate;

  ProfileBuilder();

  ProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _fullName = $v.fullName;
      _avatar = $v.avatar;
      _bio = $v.bio;
      _following = $v.following;
      _followers = $v.followers;
      _isVerified = $v.isVerified;
      _youFollowed = $v.youFollowed;
      _isHimself = $v.isHimself;
      _isMembership = $v.isMembership;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Profile build() {
    final _$result = _$v ??
        new _$Profile._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Profile', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'Profile', 'username'),
            fullName: fullName,
            avatar: avatar,
            bio: bio,
            following: BuiltValueNullFieldError.checkNotNull(
                following, 'Profile', 'following'),
            followers: BuiltValueNullFieldError.checkNotNull(
                followers, 'Profile', 'followers'),
            isVerified: BuiltValueNullFieldError.checkNotNull(
                isVerified, 'Profile', 'isVerified'),
            youFollowed: BuiltValueNullFieldError.checkNotNull(
                youFollowed, 'Profile', 'youFollowed'),
            isHimself: BuiltValueNullFieldError.checkNotNull(
                isHimself, 'Profile', 'isHimself'),
            isMembership: BuiltValueNullFieldError.checkNotNull(
                isMembership, 'Profile', 'isMembership'),
            rate:
                BuiltValueNullFieldError.checkNotNull(rate, 'Profile', 'rate'));
    replace(_$result);
    return _$result;
  }
}

class _$Follow extends Follow {
  @override
  final int? followId;

  factory _$Follow([void Function(FollowBuilder)? updates]) =>
      (new FollowBuilder()..update(updates)).build();

  _$Follow._({this.followId}) : super._();

  @override
  Follow rebuild(void Function(FollowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FollowBuilder toBuilder() => new FollowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Follow && followId == other.followId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, followId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Follow')..add('followId', followId))
        .toString();
  }
}

class FollowBuilder implements Builder<Follow, FollowBuilder> {
  _$Follow? _$v;

  int? _followId;
  int? get followId => _$this._followId;
  set followId(int? followId) => _$this._followId = followId;

  FollowBuilder();

  FollowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _followId = $v.followId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Follow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Follow;
  }

  @override
  void update(void Function(FollowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Follow build() {
    final _$result = _$v ?? new _$Follow._(followId: followId);
    replace(_$result);
    return _$result;
  }
}

class _$SignOut extends SignOut {
  @override
  final String? fcmToken;

  factory _$SignOut([void Function(SignOutBuilder)? updates]) =>
      (new SignOutBuilder()..update(updates)).build();

  _$SignOut._({this.fcmToken}) : super._();

  @override
  SignOut rebuild(void Function(SignOutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignOutBuilder toBuilder() => new SignOutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignOut && fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, fcmToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignOut')..add('fcmToken', fcmToken))
        .toString();
  }
}

class SignOutBuilder implements Builder<SignOut, SignOutBuilder> {
  _$SignOut? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  SignOutBuilder();

  SignOutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignOut other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignOut;
  }

  @override
  void update(void Function(SignOutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignOut build() {
    final _$result = _$v ?? new _$SignOut._(fcmToken: fcmToken);
    replace(_$result);
    return _$result;
  }
}

class _$EditUsername extends EditUsername {
  @override
  final String? username;
  @override
  final String? bio;
  @override
  final String? fullName;

  factory _$EditUsername([void Function(EditUsernameBuilder)? updates]) =>
      (new EditUsernameBuilder()..update(updates)).build();

  _$EditUsername._({this.username, this.bio, this.fullName}) : super._();

  @override
  EditUsername rebuild(void Function(EditUsernameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditUsernameBuilder toBuilder() => new EditUsernameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditUsername &&
        username == other.username &&
        bio == other.bio &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, username.hashCode), bio.hashCode), fullName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditUsername')
          ..add('username', username)
          ..add('bio', bio)
          ..add('fullName', fullName))
        .toString();
  }
}

class EditUsernameBuilder
    implements Builder<EditUsername, EditUsernameBuilder> {
  _$EditUsername? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  EditUsernameBuilder();

  EditUsernameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _bio = $v.bio;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditUsername other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditUsername;
  }

  @override
  void update(void Function(EditUsernameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditUsername build() {
    final _$result = _$v ??
        new _$EditUsername._(username: username, bio: bio, fullName: fullName);
    replace(_$result);
    return _$result;
  }
}

class _$ResetPassword extends ResetPassword {
  @override
  final String? oldPassword;
  @override
  final String? newPassword;

  factory _$ResetPassword([void Function(ResetPasswordBuilder)? updates]) =>
      (new ResetPasswordBuilder()..update(updates)).build();

  _$ResetPassword._({this.oldPassword, this.newPassword}) : super._();

  @override
  ResetPassword rebuild(void Function(ResetPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPasswordBuilder toBuilder() => new ResetPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPassword &&
        oldPassword == other.oldPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, oldPassword.hashCode), newPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResetPassword')
          ..add('oldPassword', oldPassword)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class ResetPasswordBuilder
    implements Builder<ResetPassword, ResetPasswordBuilder> {
  _$ResetPassword? _$v;

  String? _oldPassword;
  String? get oldPassword => _$this._oldPassword;
  set oldPassword(String? oldPassword) => _$this._oldPassword = oldPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  ResetPasswordBuilder();

  ResetPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oldPassword = $v.oldPassword;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetPassword;
  }

  @override
  void update(void Function(ResetPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResetPassword build() {
    final _$result = _$v ??
        new _$ResetPassword._(
            oldPassword: oldPassword, newPassword: newPassword);
    replace(_$result);
    return _$result;
  }
}

class _$ForgetPasswordConfirm extends ForgetPasswordConfirm {
  @override
  final String? code;
  @override
  final String? newPassword;

  factory _$ForgetPasswordConfirm(
          [void Function(ForgetPasswordConfirmBuilder)? updates]) =>
      (new ForgetPasswordConfirmBuilder()..update(updates)).build();

  _$ForgetPasswordConfirm._({this.code, this.newPassword}) : super._();

  @override
  ForgetPasswordConfirm rebuild(
          void Function(ForgetPasswordConfirmBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgetPasswordConfirmBuilder toBuilder() =>
      new ForgetPasswordConfirmBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgetPasswordConfirm &&
        code == other.code &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), newPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForgetPasswordConfirm')
          ..add('code', code)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class ForgetPasswordConfirmBuilder
    implements Builder<ForgetPasswordConfirm, ForgetPasswordConfirmBuilder> {
  _$ForgetPasswordConfirm? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  ForgetPasswordConfirmBuilder();

  ForgetPasswordConfirmBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgetPasswordConfirm other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgetPasswordConfirm;
  }

  @override
  void update(void Function(ForgetPasswordConfirmBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForgetPasswordConfirm build() {
    final _$result = _$v ??
        new _$ForgetPasswordConfirm._(code: code, newPassword: newPassword);
    replace(_$result);
    return _$result;
  }
}

class _$SetRate extends SetRate {
  @override
  final double rate;

  factory _$SetRate([void Function(SetRateBuilder)? updates]) =>
      (new SetRateBuilder()..update(updates)).build();

  _$SetRate._({required this.rate}) : super._() {
    BuiltValueNullFieldError.checkNotNull(rate, 'SetRate', 'rate');
  }

  @override
  SetRate rebuild(void Function(SetRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetRateBuilder toBuilder() => new SetRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetRate && rate == other.rate;
  }

  @override
  int get hashCode {
    return $jf($jc(0, rate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetRate')..add('rate', rate))
        .toString();
  }
}

class SetRateBuilder implements Builder<SetRate, SetRateBuilder> {
  _$SetRate? _$v;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  SetRateBuilder();

  SetRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetRate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetRate;
  }

  @override
  void update(void Function(SetRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetRate build() {
    final _$result = _$v ??
        new _$SetRate._(
            rate:
                BuiltValueNullFieldError.checkNotNull(rate, 'SetRate', 'rate'));
    replace(_$result);
    return _$result;
  }
}

class _$Links extends Links {
  @override
  final String? type;
  @override
  final String? url;

  factory _$Links([void Function(LinksBuilder)? updates]) =>
      (new LinksBuilder()..update(updates)).build();

  _$Links._({this.type, this.url}) : super._();

  @override
  Links rebuild(void Function(LinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinksBuilder toBuilder() => new LinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Links && type == other.type && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Links')
          ..add('type', type)
          ..add('url', url))
        .toString();
  }
}

class LinksBuilder implements Builder<Links, LinksBuilder> {
  _$Links? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  LinksBuilder();

  LinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Links other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Links;
  }

  @override
  void update(void Function(LinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Links build() {
    final _$result = _$v ?? new _$Links._(type: type, url: url);
    replace(_$result);
    return _$result;
  }
}

class _$Verification extends Verification {
  @override
  final int document;
  @override
  final BuiltList<Links>? link;

  factory _$Verification([void Function(VerificationBuilder)? updates]) =>
      (new VerificationBuilder()..update(updates)).build();

  _$Verification._({required this.document, this.link}) : super._() {
    BuiltValueNullFieldError.checkNotNull(document, 'Verification', 'document');
  }

  @override
  Verification rebuild(void Function(VerificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerificationBuilder toBuilder() => new VerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Verification &&
        document == other.document &&
        link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, document.hashCode), link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Verification')
          ..add('document', document)
          ..add('link', link))
        .toString();
  }
}

class VerificationBuilder
    implements Builder<Verification, VerificationBuilder> {
  _$Verification? _$v;

  int? _document;
  int? get document => _$this._document;
  set document(int? document) => _$this._document = document;

  ListBuilder<Links>? _link;
  ListBuilder<Links> get link => _$this._link ??= new ListBuilder<Links>();
  set link(ListBuilder<Links>? link) => _$this._link = link;

  VerificationBuilder();

  VerificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _document = $v.document;
      _link = $v.link?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Verification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Verification;
  }

  @override
  void update(void Function(VerificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Verification build() {
    _$Verification _$result;
    try {
      _$result = _$v ??
          new _$Verification._(
              document: BuiltValueNullFieldError.checkNotNull(
                  document, 'Verification', 'document'),
              link: _link?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'link';
        _link?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Verification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ChangeProfile extends ChangeProfile {
  @override
  final String? image;

  factory _$ChangeProfile([void Function(ChangeProfileBuilder)? updates]) =>
      (new ChangeProfileBuilder()..update(updates)).build();

  _$ChangeProfile._({this.image}) : super._();

  @override
  ChangeProfile rebuild(void Function(ChangeProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeProfileBuilder toBuilder() => new ChangeProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeProfile && image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(0, image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeProfile')..add('image', image))
        .toString();
  }
}

class ChangeProfileBuilder
    implements Builder<ChangeProfile, ChangeProfileBuilder> {
  _$ChangeProfile? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ChangeProfileBuilder();

  ChangeProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeProfile;
  }

  @override
  void update(void Function(ChangeProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeProfile build() {
    final _$result = _$v ?? new _$ChangeProfile._(image: image);
    replace(_$result);
    return _$result;
  }
}

class _$UploadFile extends UploadFile {
  @override
  final String? image;
  @override
  final File? file;

  factory _$UploadFile([void Function(UploadFileBuilder)? updates]) =>
      (new UploadFileBuilder()..update(updates)).build();

  _$UploadFile._({this.image, this.file}) : super._();

  @override
  UploadFile rebuild(void Function(UploadFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadFileBuilder toBuilder() => new UploadFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadFile && image == other.image && file == other.file;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, image.hashCode), file.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UploadFile')
          ..add('image', image)
          ..add('file', file))
        .toString();
  }
}

class UploadFileBuilder implements Builder<UploadFile, UploadFileBuilder> {
  _$UploadFile? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  File? _file;
  File? get file => _$this._file;
  set file(File? file) => _$this._file = file;

  UploadFileBuilder();

  UploadFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadFile;
  }

  @override
  void update(void Function(UploadFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UploadFile build() {
    final _$result = _$v ?? new _$UploadFile._(image: image, file: file);
    replace(_$result);
    return _$result;
  }
}

class _$ChooseFileModel extends ChooseFileModel {
  @override
  final int? id;
  @override
  final String? image;

  factory _$ChooseFileModel([void Function(ChooseFileModelBuilder)? updates]) =>
      (new ChooseFileModelBuilder()..update(updates)).build();

  _$ChooseFileModel._({this.id, this.image}) : super._();

  @override
  ChooseFileModel rebuild(void Function(ChooseFileModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChooseFileModelBuilder toBuilder() =>
      new ChooseFileModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChooseFileModel && id == other.id && image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChooseFileModel')
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class ChooseFileModelBuilder
    implements Builder<ChooseFileModel, ChooseFileModelBuilder> {
  _$ChooseFileModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ChooseFileModelBuilder();

  ChooseFileModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChooseFileModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChooseFileModel;
  }

  @override
  void update(void Function(ChooseFileModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChooseFileModel build() {
    final _$result = _$v ?? new _$ChooseFileModel._(id: id, image: image);
    replace(_$result);
    return _$result;
  }
}

class _$AccountStatusModel extends AccountStatusModel {
  @override
  final bool? status;

  factory _$AccountStatusModel(
          [void Function(AccountStatusModelBuilder)? updates]) =>
      (new AccountStatusModelBuilder()..update(updates)).build();

  _$AccountStatusModel._({this.status}) : super._();

  @override
  AccountStatusModel rebuild(
          void Function(AccountStatusModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountStatusModelBuilder toBuilder() =>
      new AccountStatusModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountStatusModel && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountStatusModel')
          ..add('status', status))
        .toString();
  }
}

class AccountStatusModelBuilder
    implements Builder<AccountStatusModel, AccountStatusModelBuilder> {
  _$AccountStatusModel? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  AccountStatusModelBuilder();

  AccountStatusModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountStatusModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountStatusModel;
  }

  @override
  void update(void Function(AccountStatusModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountStatusModel build() {
    final _$result = _$v ?? new _$AccountStatusModel._(status: status);
    replace(_$result);
    return _$result;
  }
}

class _$OnboardModel extends OnboardModel {
  @override
  final String link;

  factory _$OnboardModel([void Function(OnboardModelBuilder)? updates]) =>
      (new OnboardModelBuilder()..update(updates)).build();

  _$OnboardModel._({required this.link}) : super._() {
    BuiltValueNullFieldError.checkNotNull(link, 'OnboardModel', 'link');
  }

  @override
  OnboardModel rebuild(void Function(OnboardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnboardModelBuilder toBuilder() => new OnboardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnboardModel && link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(0, link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnboardModel')..add('link', link))
        .toString();
  }
}

class OnboardModelBuilder
    implements Builder<OnboardModel, OnboardModelBuilder> {
  _$OnboardModel? _$v;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  OnboardModelBuilder();

  OnboardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnboardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnboardModel;
  }

  @override
  void update(void Function(OnboardModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnboardModel build() {
    final _$result = _$v ??
        new _$OnboardModel._(
            link: BuiltValueNullFieldError.checkNotNull(
                link, 'OnboardModel', 'link'));
    replace(_$result);
    return _$result;
  }
}

class _$AddCardModel extends AddCardModel {
  @override
  final String number;
  @override
  final String cvc;
  @override
  final String month;
  @override
  final String year;
  @override
  final String name;
  @override
  final String type;

  factory _$AddCardModel([void Function(AddCardModelBuilder)? updates]) =>
      (new AddCardModelBuilder()..update(updates)).build();

  _$AddCardModel._(
      {required this.number,
      required this.cvc,
      required this.month,
      required this.year,
      required this.name,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(number, 'AddCardModel', 'number');
    BuiltValueNullFieldError.checkNotNull(cvc, 'AddCardModel', 'cvc');
    BuiltValueNullFieldError.checkNotNull(month, 'AddCardModel', 'month');
    BuiltValueNullFieldError.checkNotNull(year, 'AddCardModel', 'year');
    BuiltValueNullFieldError.checkNotNull(name, 'AddCardModel', 'name');
    BuiltValueNullFieldError.checkNotNull(type, 'AddCardModel', 'type');
  }

  @override
  AddCardModel rebuild(void Function(AddCardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddCardModelBuilder toBuilder() => new AddCardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddCardModel &&
        number == other.number &&
        cvc == other.cvc &&
        month == other.month &&
        year == other.year &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, number.hashCode), cvc.hashCode), month.hashCode),
                year.hashCode),
            name.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddCardModel')
          ..add('number', number)
          ..add('cvc', cvc)
          ..add('month', month)
          ..add('year', year)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class AddCardModelBuilder
    implements Builder<AddCardModel, AddCardModelBuilder> {
  _$AddCardModel? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _cvc;
  String? get cvc => _$this._cvc;
  set cvc(String? cvc) => _$this._cvc = cvc;

  String? _month;
  String? get month => _$this._month;
  set month(String? month) => _$this._month = month;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  AddCardModelBuilder();

  AddCardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _cvc = $v.cvc;
      _month = $v.month;
      _year = $v.year;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddCardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddCardModel;
  }

  @override
  void update(void Function(AddCardModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddCardModel build() {
    final _$result = _$v ??
        new _$AddCardModel._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'AddCardModel', 'number'),
            cvc: BuiltValueNullFieldError.checkNotNull(
                cvc, 'AddCardModel', 'cvc'),
            month: BuiltValueNullFieldError.checkNotNull(
                month, 'AddCardModel', 'month'),
            year: BuiltValueNullFieldError.checkNotNull(
                year, 'AddCardModel', 'year'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'AddCardModel', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'AddCardModel', 'type'));
    replace(_$result);
    return _$result;
  }
}

class _$CardModel extends CardModel {
  @override
  final int id;
  @override
  final String number;
  @override
  final String brand;
  @override
  final bool defaultCard;

  factory _$CardModel([void Function(CardModelBuilder)? updates]) =>
      (new CardModelBuilder()..update(updates)).build();

  _$CardModel._(
      {required this.id,
      required this.number,
      required this.brand,
      required this.defaultCard})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CardModel', 'id');
    BuiltValueNullFieldError.checkNotNull(number, 'CardModel', 'number');
    BuiltValueNullFieldError.checkNotNull(brand, 'CardModel', 'brand');
    BuiltValueNullFieldError.checkNotNull(
        defaultCard, 'CardModel', 'defaultCard');
  }

  @override
  CardModel rebuild(void Function(CardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardModelBuilder toBuilder() => new CardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CardModel &&
        id == other.id &&
        number == other.number &&
        brand == other.brand &&
        defaultCard == other.defaultCard;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), number.hashCode), brand.hashCode),
        defaultCard.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CardModel')
          ..add('id', id)
          ..add('number', number)
          ..add('brand', brand)
          ..add('defaultCard', defaultCard))
        .toString();
  }
}

class CardModelBuilder implements Builder<CardModel, CardModelBuilder> {
  _$CardModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  bool? _defaultCard;
  bool? get defaultCard => _$this._defaultCard;
  set defaultCard(bool? defaultCard) => _$this._defaultCard = defaultCard;

  CardModelBuilder();

  CardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _number = $v.number;
      _brand = $v.brand;
      _defaultCard = $v.defaultCard;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CardModel;
  }

  @override
  void update(void Function(CardModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CardModel build() {
    final _$result = _$v ??
        new _$CardModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'CardModel', 'id'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'CardModel', 'number'),
            brand: BuiltValueNullFieldError.checkNotNull(
                brand, 'CardModel', 'brand'),
            defaultCard: BuiltValueNullFieldError.checkNotNull(
                defaultCard, 'CardModel', 'defaultCard'));
    replace(_$result);
    return _$result;
  }
}

class _$CardList extends CardList {
  @override
  final BuiltList<CardModel>? cards;

  factory _$CardList([void Function(CardListBuilder)? updates]) =>
      (new CardListBuilder()..update(updates)).build();

  _$CardList._({this.cards}) : super._();

  @override
  CardList rebuild(void Function(CardListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CardListBuilder toBuilder() => new CardListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CardList && cards == other.cards;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cards.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CardList')..add('cards', cards))
        .toString();
  }
}

class CardListBuilder implements Builder<CardList, CardListBuilder> {
  _$CardList? _$v;

  ListBuilder<CardModel>? _cards;
  ListBuilder<CardModel> get cards =>
      _$this._cards ??= new ListBuilder<CardModel>();
  set cards(ListBuilder<CardModel>? cards) => _$this._cards = cards;

  CardListBuilder();

  CardListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cards = $v.cards?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CardList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CardList;
  }

  @override
  void update(void Function(CardListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CardList build() {
    _$CardList _$result;
    try {
      _$result = _$v ?? new _$CardList._(cards: _cards?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cards';
        _cards?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CardList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuyDirectQ extends BuyDirectQ {
  @override
  final int user;

  factory _$BuyDirectQ([void Function(BuyDirectQBuilder)? updates]) =>
      (new BuyDirectQBuilder()..update(updates)).build();

  _$BuyDirectQ._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(user, 'BuyDirectQ', 'user');
  }

  @override
  BuyDirectQ rebuild(void Function(BuyDirectQBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuyDirectQBuilder toBuilder() => new BuyDirectQBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuyDirectQ && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuyDirectQ')..add('user', user))
        .toString();
  }
}

class BuyDirectQBuilder implements Builder<BuyDirectQ, BuyDirectQBuilder> {
  _$BuyDirectQ? _$v;

  int? _user;
  int? get user => _$this._user;
  set user(int? user) => _$this._user = user;

  BuyDirectQBuilder();

  BuyDirectQBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuyDirectQ other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuyDirectQ;
  }

  @override
  void update(void Function(BuyDirectQBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuyDirectQ build() {
    final _$result = _$v ??
        new _$BuyDirectQ._(
            user: BuiltValueNullFieldError.checkNotNull(
                user, 'BuyDirectQ', 'user'));
    replace(_$result);
    return _$result;
  }
}

class _$UserBlock extends UserBlock {
  @override
  final int user;

  factory _$UserBlock([void Function(UserBlockBuilder)? updates]) =>
      (new UserBlockBuilder()..update(updates)).build();

  _$UserBlock._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(user, 'UserBlock', 'user');
  }

  @override
  UserBlock rebuild(void Function(UserBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBlockBuilder toBuilder() => new UserBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBlock && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserBlock')..add('user', user))
        .toString();
  }
}

class UserBlockBuilder implements Builder<UserBlock, UserBlockBuilder> {
  _$UserBlock? _$v;

  int? _user;
  int? get user => _$this._user;
  set user(int? user) => _$this._user = user;

  UserBlockBuilder();

  UserBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBlock other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBlock;
  }

  @override
  void update(void Function(UserBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserBlock build() {
    final _$result = _$v ??
        new _$UserBlock._(
            user: BuiltValueNullFieldError.checkNotNull(
                user, 'UserBlock', 'user'));
    replace(_$result);
    return _$result;
  }
}

class _$ReportCategory extends ReportCategory {
  @override
  final int id;
  @override
  final String title;

  factory _$ReportCategory([void Function(ReportCategoryBuilder)? updates]) =>
      (new ReportCategoryBuilder()..update(updates)).build();

  _$ReportCategory._({required this.id, required this.title}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ReportCategory', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'ReportCategory', 'title');
  }

  @override
  ReportCategory rebuild(void Function(ReportCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportCategoryBuilder toBuilder() =>
      new ReportCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportCategory && id == other.id && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReportCategory')
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class ReportCategoryBuilder
    implements Builder<ReportCategory, ReportCategoryBuilder> {
  _$ReportCategory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ReportCategoryBuilder();

  ReportCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportCategory;
  }

  @override
  void update(void Function(ReportCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReportCategory build() {
    final _$result = _$v ??
        new _$ReportCategory._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'ReportCategory', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'ReportCategory', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$GetCategory extends GetCategory {
  @override
  final BuiltList<ReportCategory>? results;

  factory _$GetCategory([void Function(GetCategoryBuilder)? updates]) =>
      (new GetCategoryBuilder()..update(updates)).build();

  _$GetCategory._({this.results}) : super._();

  @override
  GetCategory rebuild(void Function(GetCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCategoryBuilder toBuilder() => new GetCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCategory && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCategory')..add('results', results))
        .toString();
  }
}

class GetCategoryBuilder implements Builder<GetCategory, GetCategoryBuilder> {
  _$GetCategory? _$v;

  ListBuilder<ReportCategory>? _results;
  ListBuilder<ReportCategory> get results =>
      _$this._results ??= new ListBuilder<ReportCategory>();
  set results(ListBuilder<ReportCategory>? results) =>
      _$this._results = results;

  GetCategoryBuilder();

  GetCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCategory;
  }

  @override
  void update(void Function(GetCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCategory build() {
    _$GetCategory _$result;
    try {
      _$result = _$v ?? new _$GetCategory._(results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetCategory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ReportUser extends ReportUser {
  @override
  final int id;
  @override
  final int category;
  @override
  final String reason;

  factory _$ReportUser([void Function(ReportUserBuilder)? updates]) =>
      (new ReportUserBuilder()..update(updates)).build();

  _$ReportUser._(
      {required this.id, required this.category, required this.reason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ReportUser', 'id');
    BuiltValueNullFieldError.checkNotNull(category, 'ReportUser', 'category');
    BuiltValueNullFieldError.checkNotNull(reason, 'ReportUser', 'reason');
  }

  @override
  ReportUser rebuild(void Function(ReportUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportUserBuilder toBuilder() => new ReportUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportUser &&
        id == other.id &&
        category == other.category &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), category.hashCode), reason.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReportUser')
          ..add('id', id)
          ..add('category', category)
          ..add('reason', reason))
        .toString();
  }
}

class ReportUserBuilder implements Builder<ReportUser, ReportUserBuilder> {
  _$ReportUser? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _category;
  int? get category => _$this._category;
  set category(int? category) => _$this._category = category;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ReportUserBuilder();

  ReportUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportUser;
  }

  @override
  void update(void Function(ReportUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReportUser build() {
    final _$result = _$v ??
        new _$ReportUser._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'ReportUser', 'id'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, 'ReportUser', 'category'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, 'ReportUser', 'reason'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
