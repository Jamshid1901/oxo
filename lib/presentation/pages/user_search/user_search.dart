import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/infrastructure/models/followers/followers_model.dart';
import 'package:oxo/infrastructure/models/profile/user_search_history.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_mini_button.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/profile_image.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../routes/routes.dart';

class UserSearchPage extends StatefulWidget {
  const UserSearchPage({Key? key}) : super(key: key);

  @override
  State<UserSearchPage> createState() => _UserSearchPageState();
}

class _UserSearchPageState extends State<UserSearchPage> {
  Timer? _timer;
  TextEditingController? _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context_, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Scaffold(
            backgroundColor: colors.backgroundColor,
            body: SafeArea(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          color: colors.strokeDashed,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 90.w,
                          child: CustomTextField(
                            validator: (s){},
                            controller: _textEditingController,
                            onChanged: (v) {
                              if (_timer != null) _timer!.cancel();
                              _timer =
                                  Timer(const Duration(milliseconds: 500), () {
                                context.read<ProfileBloc>().add(
                                    ProfileEvent.getUsersList(
                                        search: v, page: 1));
                              });
                            },
                            hintText: "search".tr(),
                            suffixIcon: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: SvgPicture.asset(icons.search)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 76.h),
                      child: BlocBuilder<ProfileBloc, ProfileState>(
                          builder: (context, state) {
                        if (state.isLoading!) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return _textEditingController!.text.isEmpty
                              ? ListView.builder(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  itemCount: state.userSearchHistoryList.isEmpty
                                      ? 0
                                      : state.userSearchHistoryList.length + 1,
                                  itemBuilder: (context, index) => index == 0
                                      ? ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          trailing: TextButton(
                                              onPressed: () { context.read<ProfileBloc>().add(
                                                  ProfileEvent.clearUserSearchHistory());},
                                              child: Text(
                                                "clear all",
                                                textAlign: TextAlign.end,
                                                style: fonts.subtitle1.copyWith(
                                                    color: colors.lightTextBody,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              )),
                                        )
                                      : ListTile(
                                          onTap: () {
                                            String newText = state
                                                .userSearchHistoryList[
                                                    index - 1]!
                                                .text!;
                                            setState(() {
                                              _textEditingController!.text =
                                                  state
                                                      .userSearchHistoryList[
                                                          index - 1]!
                                                      .text!;
                                              _textEditingController!.value =
                                                  _textEditingController!.value
                                                      .copyWith(
                                                text: newText,
                                                selection: TextSelection(
                                                    baseOffset: newText.length,
                                                    extentOffset:
                                                        newText.length),
                                                composing: TextRange.empty,
                                              );
                                            });
                                            context.read<ProfileBloc>().add(
                                                ProfileEvent.getUsersList(
                                                    search: state
                                                        .userSearchHistoryList[
                                                            index - 1]!
                                                        .text!,
                                                    page: 1));
                                          },
                                          contentPadding: EdgeInsets.zero,
                                          trailing: IconButton(
                                            icon: SvgPicture.asset(
                                              icons.close,
                                              color: colors.strokeDashed,
                                            ),
                                            onPressed: () {
                                              context.read<ProfileBloc>().add(ProfileEvent.deleteUserSearchHistory(id: state
                                                  .userSearchHistoryList[
                                              index - 1]!
                                                  .id!));
                                            },
                                          ),
                                          title: Text(
                                            state
                                                .userSearchHistoryList[
                                                    index - 1]!
                                                .text!,
                                            style: fonts.subtitle1,
                                          ),
                                        ))
                              : state.usersList.isNotEmpty
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: state.usersList.length,
                                      itemBuilder: (context, index) => Card(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 4, horizontal: 16),
                                            child: ListTile(
                                                onTap: () async {
                                                  final userSearchHistoryPostModel =
                                                      UserSearchHistoryPostModel(
                                                          (l) => l
                                                            ..text = state
                                                                .usersList[
                                                                    index]!
                                                                .username);
                                                  context
                                                      .read<ProfileBloc>()
                                                      .add(ProfileEvent
                                                          .postUserSearchHistory(
                                                              search:
                                                                  userSearchHistoryPostModel));
                                                  Navigator.push(
                                                      context,
                                                     await Routes.userProfileRoute(
                                                          context,
                                                          state
                                                              .usersList[index]!
                                                              .id!));
                                                },
                                                contentPadding:
                                                    const EdgeInsets.all(8),
                                                leading: SizedBox(
                                                  height: 56,
                                                  width: 56,
                                                  child: CircularProfileImage(
                                                    fit: BoxFit.cover,
                                                    height: 56,
                                                    width: 56,
                                                    imageUrl:
                                                        state.usersList[index]!
                                                                    .avatar ==
                                                                null
                                                            ? ""
                                                            : state
                                                                    .usersList[
                                                                        index]!
                                                                    .avatar!
                                                                    .file ??
                                                                "",
                                                  ),
                                                ),
                                                title: Text(
                                                  state.usersList[index]!
                                                          .username ??
                                                      "",
                                                  style: fonts.subtitle1
                                                      .copyWith(
                                                          fontSize: 16.sp),
                                                ),
                                                trailing: SizedBox(
                                                  width: 80.w,
                                                  height: 36.h,
                                                  child: state.usersList[index]!.isHimself! ? const SizedBox():
                                                  state.usersList[index]!
                                                              .follow!
                                                          ? ProfileMiniButton(
                                                              horizontalPadding:
                                                                  0,
                                                              title: 'unfollow',
                                                              onTap: () {
                                                                final unFollowDeleteModel =
                                                                    UnFollowPostModel(
                                                                  (l) => l
                                                                    ..followingUser = state
                                                                        .usersList[
                                                                            index]!
                                                                        .id,
                                                                );
                                                                context.read<ProfileBloc>().add(ProfileEvent.unFollow(
                                                                    isUsersList:
                                                                        true,
                                                                    unFollowPostModel:
                                                                        unFollowDeleteModel,
                                                                    hasUnFollow:
                                                                        true,
                                                                    isFollowed:
                                                                        false));
                                                              },
                                                            )
                                                          : CustomButton(
                                                              verticalPadding:
                                                                  8,
                                                              onPressed: () {
                                                                final unFollowDeleteModel =
                                                                    UnFollowPostModel(
                                                                  (l) => l
                                                                    ..followingUser = state
                                                                        .usersList[
                                                                            index]!
                                                                        .id,
                                                                );
                                                                context.read<ProfileBloc>().add(ProfileEvent.unFollow(
                                                                    isUsersList:
                                                                        true,
                                                                    unFollowPostModel:
                                                                        unFollowDeleteModel,
                                                                    hasUnFollow:
                                                                        false,
                                                                    isFollowed:
                                                                        false));
                                                              },
                                                              title:
                                                                  "follow".tr(),
                                                            ),
                                                )),
                                          ))
                                  : const SizedBox();
                        }
                      }))
                ],
              ),
            ));
      },
    );
  }
}
