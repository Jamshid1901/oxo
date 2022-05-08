
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'user_search_history.g.dart';

abstract class UserSearchHistoryModel implements Built<UserSearchHistoryModel, UserSearchHistoryModelBuilder>{

  int? get count;
  BuiltList<UserSearchHistoryResultModel?>? get results;


  UserSearchHistoryModel._();

  factory UserSearchHistoryModel([Function(UserSearchHistoryModelBuilder b) updates]) = _$UserSearchHistoryModel;

  static Serializer<UserSearchHistoryModel> get serializer => _$userSearchHistoryModelSerializer;


}

abstract class UserSearchHistoryResultModel implements Built<UserSearchHistoryResultModel, UserSearchHistoryResultModelBuilder>{

  int? get id;

  String? get  text;


  UserSearchHistoryResultModel._();

  factory UserSearchHistoryResultModel([Function(UserSearchHistoryResultModelBuilder b) updates]) = _$UserSearchHistoryResultModel;

  static Serializer<UserSearchHistoryResultModel> get serializer => _$userSearchHistoryResultModelSerializer;


}

abstract class UserSearchHistoryPostModel implements Built<UserSearchHistoryPostModel, UserSearchHistoryPostModelBuilder>{

  String? get  text;


  UserSearchHistoryPostModel._();

  factory UserSearchHistoryPostModel([Function(UserSearchHistoryPostModelBuilder b) updates]) = _$UserSearchHistoryPostModel;

  static Serializer<UserSearchHistoryPostModel> get serializer => _$userSearchHistoryPostModelSerializer;


}