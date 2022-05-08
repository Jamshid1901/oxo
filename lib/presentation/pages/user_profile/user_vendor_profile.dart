import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/presentation/component/animated_size_and_fade.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_info_row.dart';
import 'package:oxo/presentation/component/custom_appbar/profile_mini_button.dart';
import 'package:oxo/presentation/component/profile_image.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:intl/intl.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

import '../../../infrastructure/models/followers/followers_model.dart';
import '../../component/custom_button.dart';
import '../../routes/routes.dart';

class UserVendorProfile extends StatefulWidget {
  const UserVendorProfile({Key? key, required this.userId}) : super(key: key);
  final int userId;

  @override
  State<UserVendorProfile> createState() => _UserVendorProfileState();
}

class _UserVendorProfileState extends State<UserVendorProfile> {

  bool isTimingsOpen = true;
  bool isAmenitiesOpen = true;
  bool isLocationsOpen = true;
  bool isGuidelinesOpen = true;

  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController1 = ScrollController();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return  DefaultTabController(
          length: 2,
          child: Container(
            color: colors.backgroundColor,
            child: SnappingSheet(
              child: BlocBuilder<ProfileBloc, ProfileState>(
  builder: (context, state) {
    return SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CachedNetworkImage(
                          height: 150,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          alignment: Alignment.center,
                          imageUrl: '${state.backgroundFile}',
                          placeholder: (context, url) => const SizedBox(),
                          errorWidget: (context, url, error) => Image(
                            image: AssetImage(icons.profileBackgroundDefaultImage),
                            height: 150,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),

                        Positioned(
                          width: 96,
                          height: 96,
                          top: 102,
                          left: MediaQuery.of(context).size.width/2 -48,
                          child: CircularProfileImage(
                            fit: BoxFit.cover,
                            height: 96,
                            width: 96,
                            imageUrl: '${state.avatarFile}',
                          ),
                        ),
                        Positioned(
                            left: 22.w,
                            bottom: 16.h,
                            child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: colors.strokeDartMode,
                                          blurRadius: 10,
                                          spreadRadius: 4)
                                    ],
                                    border: Border.all(color: colors.strokeDartMode),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      icons.rateStar,
                                      width: 24.w,
                                      height: 24.h,
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Text(
                                      '4.5',
                                      style: fonts.headline4.copyWith(color: colors.white),
                                    )
                                  ],
                                ))),
                        Positioned(
                            left: 22.w,
                            top: 24.h,
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: colors.strokeDartMode,
                                          blurRadius: 8,
                                          spreadRadius: 4)
                                    ],
                                    border: Border.all(color: colors.strokeDartMode),
                                  ),
                                  child: SvgPicture.asset(
                                    icons.leftArrow,
                                    width: 24.w,
                                    height: 24.h,
                                    color: colors.white,
                                  )),
                            )),

                      ],
                    ),
                    const SizedBox(
                      height: 56,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        state.companyName != null ?
                        Text(
                          state.companyName ?? '',
                          style: fonts.headline6.copyWith(
                            fontSize: 18,
                          ),
                        )
                            : const SizedBox(),
                        SizedBox(width: 8.w),
                        state.isVerified ?? false
                            ? SvgPicture.asset(
                          icons.verified,
                          height: 18.h,
                          width: 18.w,
                        )
                            : const SizedBox(),
                      ],
                    ),
                    SizedBox(height: 8.h,),
                    Text(
                      '@${state.userName}',
                      style: fonts.bodyText2.copyWith(
                        color:colors.primary,
                      ),
                    ),
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
                    (state.bio != null)
                        ? Padding(
                      padding: const EdgeInsets.fromLTRB(
                          16, 12, 16, 0),
                      child: Text(
                        '${state.bio} ',
                        style: fonts.subtitle1.copyWith(
                            color: colors.lightTextBody),
                        textAlign: TextAlign.center,
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                        : const SizedBox(),

                    Column(
                      children: [
                        AnimatedSizeAndFade(
                          child: isTimingsOpen ?
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                isTimingsOpen = !isTimingsOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(
                                children: [
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                                Row(children: [
                                  const SizedBox(width: 16,),
                                  Text('timings'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                  const Spacer(),
                                  SvgPicture.asset(icons.arrowUp),
                                  const SizedBox(width: 16,),

                                ],),

                              ],),
                            ),
                          )
                              :GestureDetector(
                            onTap: (){
                              setState(() {
                                isTimingsOpen = !isTimingsOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(
                                children: [
                                  const Divider(indent: 16, endIndent: 16,height: 24),
                                  Row(children: [
                                    const SizedBox(width: 16,),
                                    Text('timings'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                    const Spacer(),
                                    SvgPicture.asset(icons.arrowDown),
                                    const SizedBox(width: 16,),

                                  ],)
                                ],),
                            ),
                          ),
                        ),
                        AnimatedSizeAndFade(
                          child: isAmenitiesOpen ?
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                isAmenitiesOpen = !isAmenitiesOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(children: [
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                                Row(children: [
                                  const SizedBox(width: 16,),
                                  Text('amenities'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                  const Spacer(),
                                  SvgPicture.asset(icons.arrowUp),
                                  const SizedBox(width: 16,),

                                ],),

                              ],),
                            ),
                          )
                              : GestureDetector(
                            onTap: (){
                              setState(() {
                                isAmenitiesOpen = !isAmenitiesOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(children: [
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                                Row(children: [
                                  const SizedBox(width: 16,),

                                  Text('amenities'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                  const Spacer(),
                                  SvgPicture.asset(icons.arrowDown),
                                  const SizedBox(width: 16,),

                                ],)
                              ],),
                            ),
                          ),
                        ),
                        AnimatedSizeAndFade(
                          child: isLocationsOpen
                              ? GestureDetector(
                            onTap: (){
                              setState(() {
                                isLocationsOpen = !isLocationsOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(children: [
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                                Row(children: [
                                  const SizedBox(width: 16,),
                                  Text('other_locations'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                  const Spacer(),
                                  SvgPicture.asset(icons.arrowUp),
                                  const SizedBox(width: 16,),

                                ],),
                               Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('no_other_locations'.tr(), style: fonts.bodyText1,),
                                ),
                              ],),
                            ),
                          )
                              : GestureDetector(
                            onTap: (){
                              setState(() {
                                isLocationsOpen = !isLocationsOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(children: [
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                                Row(children: [
                                  const SizedBox(width: 16,),
                                  Text('other_locations'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                  const Spacer(),
                                  SvgPicture.asset(icons.arrowDown),
                                  const SizedBox(width: 16,),

                                ],)
                              ],),
                            ),
                          ),
                        ),
                        AnimatedSizeAndFade(
                          child: isGuidelinesOpen
                              ? GestureDetector(
                            onTap: (){
                              setState(() {
                                isGuidelinesOpen = !isGuidelinesOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(children: [
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                                Row(children: [
                                  const SizedBox(width: 16,),
                                  Text('host_guidelines'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                  const Spacer(),
                                  SvgPicture.asset(icons.arrowUp),
                                  const SizedBox(width: 16,),

                                ],),
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                              ],),
                            ),
                          )
                              : GestureDetector(
                            onTap: (){
                              setState(() {
                                isGuidelinesOpen = !isGuidelinesOpen;
                              });
                            },
                            child: Container(
                              color: colors.transparent,
                              child: Column(children: [
                                const Divider(indent: 16, endIndent: 16,height: 24,),
                                Row(children: [
                                  const SizedBox(width: 16,),
                                  Text('host_guidelines'.tr(),style: fonts.subtitle1.copyWith(color: colors.lightTextBody),),
                                  const Spacer(),
                                  SvgPicture.asset(icons.arrowDown),
                                  const SizedBox(width: 16,),

                                ],)
                              ],),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 56,
                    )
                  ],
                ),
              );
  },
),
              grabbingHeight: 64,
              grabbing: Container(
                color: colors.white,
                child: TabBar(
                  indicatorColor: colors.primary,
                  tabs: [
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        child: Text(
                          'activities'.tr(),
                          style: fonts.subtitle1,
                        )),
                    Center(
                        child: Text(
                          'events'.tr(),
                          style: fonts.subtitle1,
                        )),
                  ],
                ),
              ),
              sheetBelow: SnappingSheetContent(
                childScrollController: _scrollController,
                draggable: true,
                child: Container(
                  color: colors.white,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [

                    ],

                  ),),
              ),
            ),
          ),
        );

      },
    );
  }
}

class GuidelinesInfoRow extends StatelessWidget {
  const GuidelinesInfoRow({
    Key? key,required this.title, required this.info,
  }) : super(key: key);

  final String title;
  final String? info;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                child: Text(title.tr(),
                  style: fonts.bodyText1.copyWith(color: colors.lightTextBody),
                  maxLines: 14,
                ),
              ), Expanded(
                child: Text(info ?? '',
                  style: fonts.bodyText1.copyWith(color: colors.lightTextBody),
                  maxLines: 14,
                ),
              ),
            ],
          ),
        ) ;
      },

    );
  }
}

class TimingsItem extends StatelessWidget {
  const TimingsItem({
    Key? key, required this.title, required this.time, required this.isHoliday,
  }) : super(key: key);

  final String title;
  final String? time;
  final bool? isHoliday;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, OxoTheme controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
          child: Row(
            children: [
              Text( title, style: fonts.bodyText1.copyWith(color: colors.lightBodySubBodyText),),
              const Spacer(),
              isHoliday?? false
                  ? Container(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 12),
                  decoration: BoxDecoration(
                      color: colors.secondaryVariant.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text('closed'.tr(),style: fonts.bodyText1.copyWith(color: colors.lightTextBody) ))
                  :  Container(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 12),
                  decoration: BoxDecoration(
                      color: colors.primaryShadow,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text('$time', style: fonts.bodyText1.copyWith(color: colors.primaryVariant),))
            ],
          ),
        ) ;
      },
    );
  }
}
