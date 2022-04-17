
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/application/auth/auth.dart';
import 'package:oxo/application/main/main_bloc.dart';
import 'package:oxo/domain/common/main_page_tabs.dart';
import 'package:oxo/ui/pages/splash_screen.dart';
import 'package:oxo/ui/utils/style.dart';
import 'package:oxo/ui/widgets/base_screen.dart';


class MainPage extends BaseScreen {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (_, state) {
            _listen(context, state);
          },
          listenWhen: _listenWhen,
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (_, state) {
            _listen(context, state);
          },
          listenWhen: _listenWhen,
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (_, state) {
            _listen(context, state);
          },
          listenWhen: _listenWhen,
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (_, state) {
            _listen(context, state);
          },
          listenWhen: _listenWhen,
        ),
      ],
      child: BlocBuilder<MainBloc, MainState>(builder: (context, state) {
        if (state.isRunnerActivated) {
          return const SplashScreen();
        }
        Widget body;
        final navBar = state.currentNavigationItem;
        final index = state.index;

        if (navBar == BottomNavigation.home) {
          body = const SplashScreen();
        } else if (navBar == BottomNavigation.search) {
          body = const SplashScreen();
        } else if (navBar == BottomNavigation.add) {
          body = const SplashScreen();
        } else if (navBar == BottomNavigation.notification) {
          body = const SplashScreen();
        } else {
          body = const SplashScreen();
        }
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Style.primaryColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) => context.read<MainBloc>().add(
                  MainEvent.tabChanged(index),
                ),
            items: _buildNavBar(index),
          ),
          body: body,
        );
      }),
    );
  }

  List<BottomNavigationBarItem> _buildNavBar(int index) {
    return [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          index == 0 ? 'assets/svgs/home2.svg' : 'assets/svgs/home1.svg',
        ),
        label: 'home'.tr(),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          index == 1 ? 'assets/svgs/search2.svg' : 'assets/svgs/search1.svg',
        ),
        label: 'search'.tr(),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          index == 2 ? 'assets/svgs/add2.svg' : 'assets/svgs/add1.svg',
        ),
        label: 'add'.tr(),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          index == 3 ? 'assets/svgs/noti2.svg' : 'assets/svgs/noti1.svg',
        ),
        label: 'notification'.tr(),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          index == 4
              ? 'assets/svgs/profile_icon2.svg'
              : 'assets/svgs/profile_icon.svg',
        ),
        label: 'profile'.tr(),
      ),
    ];
  }

  void _listen(BuildContext context, dynamic state) async {
    if (state.exception.isNotEmpty) {
      await failure(
        title: state.exception,
        description: '',
        context: context,
      );
    }


    context.read<MainBloc>().add(
          MainEvent.load(
            isLoading: state.runner,
          ),
        );
  }

  bool _listenWhen(prev, next) =>
      (prev.exception != next.exception && next.exception.isNotEmpty) ||
      (prev.runner != next.runner);
}
