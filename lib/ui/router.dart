

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oxo/ui/app_widget.dart';
import 'package:oxo/ui/pages/initializer.dart';
import 'package:oxo/ui/pages/splash_screen.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String mainPage = '/main-page';

  static PageRoute<dynamic>? onGenerateRoute({
    required BuildContext context,
    required RouteSettings settings,
  }) {
    if (settings.name == Routes.splashPage) {
      return getSplashRoute(context);
    } else if (settings.name == Routes.signInPage) {
      return getSignInRoute(context);
    } else if (settings.name == Routes.mainPage) {
      return getMainRoute(context);
    }
    return null;
  }

  static PageRoute getAppWidget() => MaterialPageRoute(
        builder: (_) => const AppWidget(),
      );

  static PageRoute getSplashRoute(BuildContext context) => MaterialPageRoute(
    builder: (_) => const Initializer(),
  );

  static PageRoute getSignInRoute(BuildContext context) => MaterialPageRoute(
    builder: (_) => const SplashScreen(),
  );

  static PageRoute getMainRoute(BuildContext context) => MaterialPageRoute(
    builder: (_) => const SplashScreen(),
  );

  // static PageRoute getMainRoute(BuildContext context) => MaterialPageRoute(
  //       builder: (_) => MultiRepositoryProvider(
  //         providers: [
  //           RepositoryProvider(
  //             create: (_) => ProfileRepository(
  //                 context.read<PreferencesService>(),
  //                 ProfileService.create(),
  //                 QuestionService.create(),
  //                 FileService.create(),
  //                 PaymentService.create()),
  //           ),
  //           RepositoryProvider(
  //             create: (_) => QuestionRepository(
  //               QuestionService.create(),
  //               context.read<PreferencesService>(),
  //             ),
  //           ),
  //           RepositoryProvider(
  //             create: (_) => SearchRepository(
  //               QuestionService.create(),
  //               context.read<PreferencesService>(),
  //               CategoryService.create(),
  //               ProfileService.create(),
  //             ),
  //           ),
  //           RepositoryProvider(
  //             create: (_) => NotificationsRepository(
  //               context.read<PreferencesService>(),
  //               NotificationsService.create(),
  //             ),
  //           ),
  //         ],
  //         child: MultiBlocProvider(
  //           providers: [
  //             BlocProvider(
  //               lazy: true,
  //               create: (context) => ProfileBloc(
  //                   context.read<ProfileRepository>(),
  //                   context.read<AuthRepository>(),
  //                   context.read<QuestionRepository>())
  //                 ..add(const ProfileEvent.me())
  //                 ..add(const ProfileEvent.meQuestion())
  //                 ..add(const ProfileEvent.meAnswer()),
  //             ),
  //             BlocProvider(
  //               lazy: true,
  //               create: (context) => SearchBloc(
  //                 context.read<SearchRepository>(),
  //                 context.read<AuthRepository>(),
  //               )
  //                 ..add(const SearchEvent.searchUser(text: ""))
  //                 ..add(const SearchEvent.searchQuestion(text: ""))
  //                 ..add(const SearchEvent.searchTopic(text: "")),
  //             ),
  //             BlocProvider(
  //               lazy: true,
  //               create: (context) => NotificationBloc(
  //                 context.read<NotificationsRepository>(),
  //               )
  //                 ..add(const NotificationEvent.me())
  //                 ..add(const NotificationEvent.meInbox()),
  //             ),
  //             BlocProvider(
  //                 lazy: true,
  //                 create: (context) => QuestionBloc(
  //                     context.read<QuestionRepository>(),
  //                     context.read<ProfileRepository>(),
  //                     context.read<AuthRepository>())
  //                   ..add(
  //                     const QuestionEvent.me(),
  //                   )
  //                   ..add(const QuestionEvent.meFollow())
  //                   ..add(
  //                     const QuestionEvent.checkCount(),
  //                   )),
  //             BlocProvider(
  //               lazy: true,
  //               create: (_) => MainBloc(),
  //             ),
  //           ],
  //           child: const MainPage(),
  //         ),
  //       ),
  //     );

}
