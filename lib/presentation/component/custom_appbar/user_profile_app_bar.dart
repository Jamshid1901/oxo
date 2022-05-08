import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/infrastructure/models/followers/followers_model.dart';
import 'package:oxo/infrastructure/shared_variables.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_info_row.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_mini_button.dart';
import 'package:oxo/presentation/component/custom_appbar/user_profile_app_bar_stack.dart';
import 'package:oxo/presentation/component/shimmer/profile_shimmer.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

import '../custom_button.dart';

class UserProfileSliverAppbar extends StatelessWidget {
  const UserProfileSliverAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.isLoading!
                ? SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: colors.white,
              expandedHeight: ConstVariables.calculateAppbarHeight(
                  ConstVariables.isLinkExist, ConstVariables.isBioExist),
              collapsedHeight: 32.h,
              pinned: true,
              toolbarHeight: 32.h,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(44.h),
                  child: const DefaultAppbarBottom()),
              flexibleSpace: const ShimmerProfile(),
            )
                : state.exception.isNotEmpty
                ? SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: colors.white,
              expandedHeight: ConstVariables.calculateAppbarHeight(
                  ConstVariables.isLinkExist,
                  ConstVariables.isBioExist),
              collapsedHeight: 32.h,
              pinned: true,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(44.h),
                  child: const DefaultAppbarBottom()),
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                  child: Text(state.exception),
                ),
              ),
              toolbarHeight: 32.h,
            )
                : SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: colors.white,
              expandedHeight: ConstVariables.calculateAppbarHeight(
                  ConstVariables.isLinkExist,
                  ConstVariables.isBioExist),
              collapsedHeight: 32.h,
              pinned: true,
              toolbarHeight: 32.h,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(44.h),
                  child: const DefaultAppbarBottom()),
              flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UserProfileAppbarStack(
                        avatar: state.avatarFile ?? '',
                        backgroundImage: state.backgroundFile ?? '',
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.userName ?? '',
                            style: fonts.headline6.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          state.isVerified ?? false
                              ? SvgPicture.asset(
                            icons.verified,
                            height: 18.h,
                            width: 18.w,
                          )
                              : const SizedBox(),
                        ],
                      ),
                      (state.bio != null)
                          ? Padding(
                        padding: const EdgeInsets.fromLTRB(
                            16, 12, 16, 0),
                        child: Text(
                          '${state.bio} ',
                          style: fonts.subtitle1.copyWith(
                              color: colors.lightTextBody),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                          : const SizedBox(),
                      (state.link != null)
                          ? Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          '${state.link}',
                          style: fonts.caption.copyWith(
                              fontSize: 13, color: colors.primary),
                        ),
                      )
                          : const SizedBox(),
                      Container(
                        width: 150.w,
                        padding:
                        const EdgeInsets.only(top: 8, bottom: 12),
                        child: state.isButtonLoading! ? CustomButton(
                          isDisabled: true,
                          verticalPadding: 8,
                          onPressed: (){ },title: "follow".tr(),) :  state.isFollowed! ? ProfileMiniButton(
                          horizontalPadding: 0,
                          title: 'unfollow',
                          onTap: () {
                            final unFollowDeleteModel = UnFollowPostModel(
                                  (l) => l..followingUser=state.id,
                            );
                            context
                                .read<ProfileBloc>()
                                .add(ProfileEvent.unFollow(unFollowPostModel: unFollowDeleteModel, hasUnFollow: true, isFollowed: true, isUsersList: false));
                          },
                        ) : CustomButton(
                          verticalPadding: 8,
                          onPressed: (){
                            final unFollowDeleteModel = UnFollowPostModel(
                                  (l) => l..followingUser=state.id,
                            );
                            context
                                .read<ProfileBloc>()
                                .add(ProfileEvent.unFollow(unFollowPostModel: unFollowDeleteModel, hasUnFollow: false, isFollowed: true, isUsersList: false));
                          },title: "follow".tr(),),
                      ),
                      ProfileInfoRow(
                        id: state.id ?? 0,
                        followerCount: state.followerCount ?? 0,
                        friendsCount: state.friendsCount ?? 0,
                        hostedCount: state.hostedCount ?? 0,
                      ),
                      SizedBox(
                        height: 50.h,
                      )
                    ],
                  )),
            );
          },
        );
      },
    );
  }
}

class DefaultAppbarBottom extends StatelessWidget {
  const DefaultAppbarBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Container(
          color: colors.white,
          child:
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  child: Text(
                    'activities'.tr(),
                    style: fonts.subtitle1,
                  ))
        );
      },
    );
  }
}
