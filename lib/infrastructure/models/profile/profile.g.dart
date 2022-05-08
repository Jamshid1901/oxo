// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfileModel> _$profileModelSerializer =
    new _$ProfileModelSerializer();

class _$ProfileModelSerializer implements StructuredSerializer<ProfileModel> {
  @override
  final Iterable<Type> types = const [ProfileModel, _$ProfileModel];
  @override
  final String wireName = 'ProfileModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProfileModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.userName;
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
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('is_verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.follow;
    if (value != null) {
      result
        ..add('follow')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.typeUser;
    if (value != null) {
      result
        ..add('type_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('company_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyPhone;
    if (value != null) {
      result
        ..add('company_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyEin;
    if (value != null) {
      result
        ..add('company_ein')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isHimself;
    if (value != null) {
      result
        ..add('is_himself')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.followerCount;
    if (value != null) {
      result
        ..add('follower_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.friendsCount;
    if (value != null) {
      result
        ..add('friends_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hostedCount;
    if (value != null) {
      result
        ..add('hosted')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.profileAvatarModel;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProfileAvatarModel)));
    }
    value = object.profileBackgroundModel;
    if (value != null) {
      result
        ..add('background_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProfileBackgroundModel)));
    }
    return result;
  }

  @override
  ProfileModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'username':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_verified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'follow':
          result.follow = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type_user':
          result.typeUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company_name':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company_phone':
          result.companyPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company_ein':
          result.companyEin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_himself':
          result.isHimself = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'follower_count':
          result.followerCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'friends_count':
          result.friendsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hosted':
          result.hostedCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avatar':
          result.profileAvatarModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProfileAvatarModel))!
              as ProfileAvatarModel);
          break;
        case 'background_photo':
          result.profileBackgroundModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProfileBackgroundModel))!
              as ProfileBackgroundModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileModel extends ProfileModel {
  @override
  final int id;
  @override
  final String? userName;
  @override
  final String? bio;
  @override
  final String? link;
  @override
  final bool? isVerified;
  @override
  final bool? follow;
  @override
  final String? typeUser;
  @override
  final String? companyName;
  @override
  final String? companyPhone;
  @override
  final String? companyEin;
  @override
  final bool? isHimself;
  @override
  final int? followerCount;
  @override
  final int? friendsCount;
  @override
  final int? hostedCount;
  @override
  final ProfileAvatarModel? profileAvatarModel;
  @override
  final ProfileBackgroundModel? profileBackgroundModel;

  factory _$ProfileModel([void Function(ProfileModelBuilder)? updates]) =>
      (new ProfileModelBuilder()..update(updates)).build();

  _$ProfileModel._(
      {required this.id,
      this.userName,
      this.bio,
      this.link,
      this.isVerified,
      this.follow,
      this.typeUser,
      this.companyName,
      this.companyPhone,
      this.companyEin,
      this.isHimself,
      this.followerCount,
      this.friendsCount,
      this.hostedCount,
      this.profileAvatarModel,
      this.profileBackgroundModel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ProfileModel', 'id');
  }

  @override
  ProfileModel rebuild(void Function(ProfileModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileModelBuilder toBuilder() => new ProfileModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileModel &&
        id == other.id &&
        userName == other.userName &&
        bio == other.bio &&
        link == other.link &&
        isVerified == other.isVerified &&
        follow == other.follow &&
        typeUser == other.typeUser &&
        companyName == other.companyName &&
        companyPhone == other.companyPhone &&
        companyEin == other.companyEin &&
        isHimself == other.isHimself &&
        followerCount == other.followerCount &&
        friendsCount == other.friendsCount &&
        hostedCount == other.hostedCount &&
        profileAvatarModel == other.profileAvatarModel &&
        profileBackgroundModel == other.profileBackgroundModel;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    id
                                                                        .hashCode),
                                                                userName
                                                                    .hashCode),
                                                            bio.hashCode),
                                                        link.hashCode),
                                                    isVerified.hashCode),
                                                follow.hashCode),
                                            typeUser.hashCode),
                                        companyName.hashCode),
                                    companyPhone.hashCode),
                                companyEin.hashCode),
                            isHimself.hashCode),
                        followerCount.hashCode),
                    friendsCount.hashCode),
                hostedCount.hashCode),
            profileAvatarModel.hashCode),
        profileBackgroundModel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileModel')
          ..add('id', id)
          ..add('userName', userName)
          ..add('bio', bio)
          ..add('link', link)
          ..add('isVerified', isVerified)
          ..add('follow', follow)
          ..add('typeUser', typeUser)
          ..add('companyName', companyName)
          ..add('companyPhone', companyPhone)
          ..add('companyEin', companyEin)
          ..add('isHimself', isHimself)
          ..add('followerCount', followerCount)
          ..add('friendsCount', friendsCount)
          ..add('hostedCount', hostedCount)
          ..add('profileAvatarModel', profileAvatarModel)
          ..add('profileBackgroundModel', profileBackgroundModel))
        .toString();
  }
}

class ProfileModelBuilder
    implements Builder<ProfileModel, ProfileModelBuilder> {
  _$ProfileModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  bool? _follow;
  bool? get follow => _$this._follow;
  set follow(bool? follow) => _$this._follow = follow;

  String? _typeUser;
  String? get typeUser => _$this._typeUser;
  set typeUser(String? typeUser) => _$this._typeUser = typeUser;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _companyPhone;
  String? get companyPhone => _$this._companyPhone;
  set companyPhone(String? companyPhone) => _$this._companyPhone = companyPhone;

  String? _companyEin;
  String? get companyEin => _$this._companyEin;
  set companyEin(String? companyEin) => _$this._companyEin = companyEin;

  bool? _isHimself;
  bool? get isHimself => _$this._isHimself;
  set isHimself(bool? isHimself) => _$this._isHimself = isHimself;

  int? _followerCount;
  int? get followerCount => _$this._followerCount;
  set followerCount(int? followerCount) =>
      _$this._followerCount = followerCount;

  int? _friendsCount;
  int? get friendsCount => _$this._friendsCount;
  set friendsCount(int? friendsCount) => _$this._friendsCount = friendsCount;

  int? _hostedCount;
  int? get hostedCount => _$this._hostedCount;
  set hostedCount(int? hostedCount) => _$this._hostedCount = hostedCount;

  ProfileAvatarModelBuilder? _profileAvatarModel;
  ProfileAvatarModelBuilder get profileAvatarModel =>
      _$this._profileAvatarModel ??= new ProfileAvatarModelBuilder();
  set profileAvatarModel(ProfileAvatarModelBuilder? profileAvatarModel) =>
      _$this._profileAvatarModel = profileAvatarModel;

  ProfileBackgroundModelBuilder? _profileBackgroundModel;
  ProfileBackgroundModelBuilder get profileBackgroundModel =>
      _$this._profileBackgroundModel ??= new ProfileBackgroundModelBuilder();
  set profileBackgroundModel(
          ProfileBackgroundModelBuilder? profileBackgroundModel) =>
      _$this._profileBackgroundModel = profileBackgroundModel;

  ProfileModelBuilder();

  ProfileModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userName = $v.userName;
      _bio = $v.bio;
      _link = $v.link;
      _isVerified = $v.isVerified;
      _follow = $v.follow;
      _typeUser = $v.typeUser;
      _companyName = $v.companyName;
      _companyPhone = $v.companyPhone;
      _companyEin = $v.companyEin;
      _isHimself = $v.isHimself;
      _followerCount = $v.followerCount;
      _friendsCount = $v.friendsCount;
      _hostedCount = $v.hostedCount;
      _profileAvatarModel = $v.profileAvatarModel?.toBuilder();
      _profileBackgroundModel = $v.profileBackgroundModel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileModel;
  }

  @override
  void update(void Function(ProfileModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileModel build() {
    _$ProfileModel _$result;
    try {
      _$result = _$v ??
          new _$ProfileModel._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'ProfileModel', 'id'),
              userName: userName,
              bio: bio,
              link: link,
              isVerified: isVerified,
              follow: follow,
              typeUser: typeUser,
              companyName: companyName,
              companyPhone: companyPhone,
              companyEin: companyEin,
              isHimself: isHimself,
              followerCount: followerCount,
              friendsCount: friendsCount,
              hostedCount: hostedCount,
              profileAvatarModel: _profileAvatarModel?.build(),
              profileBackgroundModel: _profileBackgroundModel?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profileAvatarModel';
        _profileAvatarModel?.build();
        _$failedField = 'profileBackgroundModel';
        _profileBackgroundModel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProfileModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
