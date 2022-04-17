
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/auth/auth.dart';
import 'package:oxo/domain/common/firebase_service.dart';
import 'package:oxo/infrasturture/prefs/preference_service.dart';
import 'package:oxo/infrasturture/repositories/auth_repository.dart';
import 'package:oxo/ui/router.dart';
import 'package:oxo/ui/utils/style.dart';
import 'package:oxo/ui/widgets/scroll_behavior.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait([
          PreferencesService.create(),
          FirebaseX.create(),
        ]),
        builder: (context, AsyncSnapshot<List<dynamic>> snap) {
          if (snap.hasData && snap.data is List<dynamic>) {
            final data = snap.data;
            final PreferencesService pref = data?[0];
            return MultiRepositoryProvider(
              providers: [
                RepositoryProvider(create: (_) => pref),
                RepositoryProvider(
                  create: (_) => AuthRepository(
                    pref,
                  ),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                      create: (context) =>
                          AuthBloc(context.read<AuthRepository>())
                            ..add(const AuthEvent.authCheckRequested())),
                ],
                child: ScreenUtilInit(
                  // add height, width from Figma
                  designSize: const Size(375, 812),
                  builder: () => MaterialApp(
                    theme: ThemeData(
                      primaryColor: Style.primaryColor,
                      fontFamily: 'Nunito',
                    ),
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    onGenerateRoute: (settings) => Routes.onGenerateRoute(
                      context: context,
                      settings: settings,
                    ),
                  ),
                ),
              ),
            );
          }

          return MaterialApp(
            // this is simple scroll behavior
              builder: (context, child) => ScrollConfiguration(
                behavior: MyBehavior(),
                child: child!,
              ),
              home: const Scaffold());
        });
  }
}
