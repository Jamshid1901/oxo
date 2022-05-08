import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';


//TODO: add logic follower count K M

class ProfileInfoRow extends StatelessWidget {

  final int id;
  final int friendsCount;
  final int followerCount;
  final int hostedCount;

  const ProfileInfoRow({
    Key? key,
    required this.id,
    required this.friendsCount,
    required this.followerCount,
    required this.hostedCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: colors.stoke))),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileInfoItem(title: '$followerCount', subTitle: 'followers', onTap: (){
                  Navigator.push(context,
                      Routes.getFollowersRoute(context, id, false));
                },),
                VerticalDivider(color: colors.stoke,thickness: 2,),
                ProfileInfoItem(title: '$friendsCount', subTitle: 'friends', onTap: (){Navigator.push(context,
                    Routes.getFollowersRoute(context, id, true));},),
                VerticalDivider(color: colors.stoke,thickness: 2,),
                ProfileInfoItem(title: '$hostedCount',subTitle: 'hosted', onTap: (){},),
              ],),
          ),
        );
      },
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  final String title;
  final String subTitle;
final GestureTapCallback onTap;
  const ProfileInfoItem({
    Key? key,
    required this.title,
    required this.subTitle, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            color: colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: fonts.headline4,
                ),
                Text(
                  subTitle.tr(),
                  style:
                  fonts.subtitle1.copyWith(color: colors.lightBodySubBodyText),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),),
        )
        ;
      },
    );
  }
}
