import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/domain/profile/image_upload_types.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/models/profile/profile.dart';
import 'package:oxo/infrastructure/shared_variables.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_info_row.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_mini_button.dart';
import 'package:oxo/presentation/component/shimmer/profile_shimmer.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

import 'custom_appbar_stack.dart';

class SliverAppbarCustom extends StatelessWidget {
  const SliverAppbarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state.exception == 'success') {
              Navigator.pushAndRemoveUntil(context,
                  Routes.getMainRoute(context, index: 2), (route) => false);
            }
          },
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
                            CustomAppbarStack(
                              onTapUploadBackgroundPhoto: () {
                                context.read<ProfileBloc>().add(
                                    const ProfileEvent.uploadProfilePhoto(
                                        ImageUploadTypes.backgroundPhoto));
                              },
                              onTapUploadAvatar: () {
                                context.read<ProfileBloc>().add(
                                    const ProfileEvent.uploadProfilePhoto(
                                        ImageUploadTypes.avatarPhoto));
                              },
                              onTapDeleteBackgroundPhoto: () {
                                ProfileM profileM = ProfileM(
                                    userName: state.userName!,
                                    bio: state.bio,
                                    link: state.link,
                                    avatarM: state.avatarId,
                                    backgroundM: null);
                                context.read<ProfileBloc>().add(
                                    ProfileEvent.deleteProfilePhoto(
                                        profileM: profileM));
                              },
                              onTapDeleteAvatar: () {
                                ProfileM profileM = ProfileM(
                                    userName: state.userName!,
                                    bio: state.bio,
                                    link: state.link,
                                    avatarM: null,
                                    backgroundM: state.backgroundId);
                                context.read<ProfileBloc>().add(
                                    ProfileEvent.deleteProfilePhoto(
                                        profileM: profileM));
                              },
                              avatar: state.avatarFile ?? '',
                              backgroundImage: state.backgroundFile ?? '',
                            ),
                            const SizedBox(
                              height: 56,
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
                                    child: TextButton(
                                      onPressed: () {
                                            },
                                      child: Text(
                                        '${state.link}',
                                        style: fonts.caption.copyWith(
                                            fontSize: 13, color: colors.primary),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                            Container(
                              width: 150.w,
                              padding:
                                  const EdgeInsets.only(top: 8, bottom: 12),
                              child: ProfileMiniButton(
                                horizontalPadding: 0,
                                title: 'edit_profile',
                                onTap: () {
                                  ProfileModel info1 = ProfileModel((v) => v
                                    ..id = state.id
                                    ..userName = state.userName
                                    ..profileAvatarModel.id = state.avatarId
                                    ..profileAvatarModel.file = state.avatarFile
                                    ..profileBackgroundModel.id =
                                        state.backgroundId
                                    ..profileBackgroundModel.file =
                                        state.backgroundFile
                                    ..link = state.link
                                    ..bio = state.bio
                                    ..hostedCount = state.hostedCount
                                    ..friendsCount = state.friendsCount
                                    ..followerCount = state.followerCount
                                    ..typeUser = state.typeUser
                                    ..isVerified = state.isVerified);
                                  Navigator.push(
                                      context,
                                      Routes.getEditProfileRoute(
                                          context, info1));
                                },
                              ),
                            ),
                            ProfileInfoRow(
                              id: state.id ?? 0,
                              followerCount: state.followerCount ?? 0,
                              friendsCount: state.friendsCount ?? 0,
                              hostedCount: state.hostedCount ?? 0,
                            ),
                            const SizedBox(
                              height: 42,
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
          child: TabBar(
            indicatorColor: colors.primary,
            tabs: [
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  child: Text(
                    'activities'.tr(),
                    style: fonts.subtitle1,
                  )),
              Center(
                  child: Text(
                'tickets'.tr(),
                style: fonts.subtitle1,
              )),
            ],
          ),
        );
      },
    );
  }
}
