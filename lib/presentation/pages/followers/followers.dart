import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/infrastructure/models/followers/followers_model.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_mini_button.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/component/profile_image.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../routes/routes.dart';

class FollowersPage extends StatefulWidget {
  final int id;
  final bool hasFriends;

  const FollowersPage({Key? key, required this.id, required this.hasFriends})
      : super(key: key);

  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<FollowersPage> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context_, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Scaffold(
            backgroundColor: colors.backgroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(56.h),
              child: OrdinaryAppbar(
                title: widget.hasFriends ? 'friends'.tr() : 'followers'.tr(),
              ),
            ),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.h),
                  child: CustomTextField(
                    validator: (s){},
                    hintText: "search".tr(),
                    suffixIcon: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: SvgPicture.asset(icons.search)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 76.h),
                    child: BlocBuilder<ProfileBloc, ProfileState>(
                        builder: (context, state) {
                          if(state.isLoading!){
                            return  const Center(child: CircularProgressIndicator(),);
                          }else {
                            return state.followersList.isNotEmpty
                                ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: state.followersList.length,
                                itemBuilder: (context, index) =>
                                    ListTile(
                                      onTap: ()async{
                                          Navigator.push(context,
                                             await Routes.userProfileRoute(context,
                                                  state.followersList[index]!
                                                      .id!));
                                      },
                                        contentPadding: const EdgeInsets
                                            .symmetric(
                                            vertical: 8, horizontal: 16),
                                        leading: SizedBox(
                                          height: 56,
                                          width: 56,
                                          child: CircularProfileImage(
                                            fit: BoxFit.cover,
                                            height: 56,
                                            width: 56,
                                            imageUrl:
                                            state.followersList[index]!
                                                .avatar ==
                                                null
                                                ? ""
                                                : state.followersList[index]!
                                                .avatar!.file ??
                                                "",
                                          ),
                                        ),
                                        title: Text(
                                          state.followersList[index]!
                                              .username ?? "",
                                          style: fonts.subtitle1
                                              .copyWith(fontSize: 16.sp),
                                        ),
                                        trailing: Visibility(
                                            visible: !widget.hasFriends,
                                            child: SizedBox(
                                              width: 80.w,
                                              height: 36.h,
                                              child: state.followersList[index]!.isHimself! ? const SizedBox(): state.followersList[index]!
                                                  .follow!
                                                  ? ProfileMiniButton(
                                                horizontalPadding: 0,
                                                title: 'unfollow',
                                                onTap: () {
                                                  final unFollowDeleteModel =
                                                  UnFollowPostModel(
                                                        (l) =>
                                                    l
                                                      ..followingUser = state
                                                          .followersList[
                                                      index]!
                                                          .id,
                                                  );
                                                  context
                                                      .read<ProfileBloc>()
                                                      .add(
                                                      ProfileEvent.unFollow(
                                                        isUsersList: false,
                                                          unFollowPostModel:
                                                          unFollowDeleteModel,
                                                          hasUnFollow: true,
                                                          isFollowed:
                                                          false));
                                                },
                                              )
                                                  : CustomButton(
                                                verticalPadding: 8,
                                                onPressed: () {
                                                  final unFollowDeleteModel =
                                                  UnFollowPostModel(
                                                        (l) =>
                                                    l
                                                      ..followingUser = state
                                                          .followersList[
                                                      index]!
                                                          .id,
                                                  );
                                                  context.read<ProfileBloc>().add(
                                                      ProfileEvent.unFollow(
                                                        isUsersList: false,
                                                          unFollowPostModel:
                                                          unFollowDeleteModel,
                                                          hasUnFollow:
                                                          false,
                                                          isFollowed:
                                                          false));
                                                },
                                                title: "follow".tr(),
                                              ),
                                            )))
                            )
                                : Center(
                              child: Text(
                                'No Followers for now',
                                style: fonts.bodyText2,
                              ),
                            );
                          }
                    }))
              ],
            ));
      },
    );
  }
}
