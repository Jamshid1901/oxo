import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';
import 'package:oxo/infrastructure/services/firebase.dart';
import 'package:oxo/presentation/pages/home/main_page.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../routes/routes.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/infrastructure/grid_apis.dart';
import 'package:oxo/infrastructure/repositories/profile_repo.dart';
import 'package:oxo/infrastructure/services/prefs.dart';
import 'package:oxo/presentation/pages/profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.index = 0}) : super(key: key);

  final int index;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  PersistentTabController? _controller;


  List<Widget> _buildScreens() {
    return [
      const MainPage(),
      const MainPage(),
      RepositoryProvider(
        create: (context) => ProfileRepository(
            context.read<PreferenceService>(),
            ProfileService.create(),
            FollowersService.create()),
        child: BlocProvider(
          create: (context) => ProfileBloc(context.read<ProfileRepository>(),
              ImageUploadRepo(ImageUploadService.create()))
            ..add(const ProfileEvent.getProfile()),
          child: BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {
            if (state.exception == 'success') {
              Navigator.pushAndRemoveUntil(context,
                  Routes.getMainRoute(context, index: 2), (route) => false);
            }
          }, builder: (context, state) {
            return const ProfilePage();
          }),
        ),
      ),
      const MainPage(),
      const MainPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          IconSet.create.oxoHome,
          color:  Style.primary,
          width: 24,
        ),
        inactiveIcon:  SvgPicture.asset(
          IconSet.create.oxoHome,
          color: Style.icon,
          width: 24,
        ),
        title: ("Home"),
        activeColorPrimary: Style.primary,
        inactiveColorPrimary: Style.icon,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          IconSet.create.oxoChat,
          color: Style.primary,
          width: 24,
        ),
        inactiveIcon:  SvgPicture.asset(
          IconSet.create.oxoChat,
          color: Style.icon,
          width: 24,
        ),
        title: ("Xabarlar"),
        activeColorPrimary: Style.primary,
        inactiveColorPrimary: Style.icon,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          IconSet.create.oxoEvent,
          width: 24,
        ),
        title: ("E’lon berish"),
        activeColorPrimary: Style.primary,
        inactiveColorPrimary: Style.icon,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          IconSet.create.oxoLike,
          color:  Style.primary ,
          width: 24,
        ),
        title: ("Yoqtirganlar"),
        activeColorPrimary: Style.primary,
        inactiveColorPrimary: Style.icon,
        inactiveIcon:  SvgPicture.asset(
          IconSet.create.oxoLike,
          color: Style.icon,
          width: 24,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          IconSet.create.oxoProfile,
          color: Style.primary,
          width: 24,
        ),
        inactiveIcon:  SvgPicture.asset(
          IconSet.create.oxoProfile,
          color: Style.icon,
          width: 24,
        ),
        title: ("Akkaunt"),
        activeColorPrimary: Style.primary,
        inactiveColorPrimary: Style.icon,
      ),
    ];
  }



  @override
  void initState() {
    _controller = PersistentTabController();
    // TODO: implement initState
    super.initState();
    index = widget.index;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonsts, icons, _) {
      return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Style.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Style.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style12,
      );
    });
  }
}
