
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/auth/auth_bloc.dart';
import 'package:oxo/infrastructure/grid_apis.dart';
import 'package:oxo/infrastructure/repositories/auth_repo.dart';
import 'package:oxo/infrastructure/services/connectivity.dart';
import 'package:oxo/infrastructure/services/firebase.dart';
import 'package:oxo/infrastructure/services/prefs.dart';
import 'package:oxo/presentation/component/connectivity_ext.dart';
import 'package:oxo/presentation/splash_screen.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:provider/provider.dart';

import 'routes/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context) {
          return FutureBuilder(
            future: Future.wait([
              PreferenceService.create,
              ConnectivityX.create,
              OxoTheme.create,
              // FirebaseX.create,
            ]),
            builder: (context, AsyncSnapshot<List<dynamic>> snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const MediaQuery(
                  data:  MediaQueryData(),
                  child:  MaterialApp(
                      debugShowCheckedModeBanner: false, home:
                  SplashScreen()),
                );
              } else {
                if (snap.hasData && snap.data is List<dynamic>) {
                  final data = snap.data;
                  final PreferenceService pref = data?[0];
                  final ConnectivityResult connectivity = data?[1];
                  final OxoTheme theme = data?[2];
                  return MultiRepositoryProvider(
                    providers: [
                      RepositoryProvider(create: (_) => pref),

                      RepositoryProvider(
                        create: (_) =>
                            AuthRepository(
                              pref,
                              AuthService.create(),
                              GameService.create(),
                            ),
                      ),
                    ],
                    child: BlocProvider(
                      create: (context) =>
                      AuthBloc(context.read<AuthRepository>())
                        ..add(const AuthEvent.checkAuth()),
                      child: ChangeNotifierProvider(
                        create: (_) => theme,
                        builder: (BuildContext context, _) {
                          return MediaQuery(
                            data: const MediaQueryData(),
                            child: MaterialApp(
                              localizationsDelegates: context
                                  .localizationDelegates,
                              supportedLocales: context.supportedLocales,
                              locale: context.locale,
                              onGenerateRoute: (settings) =>
                                  Routes.onGenerateRoute(
                                    context: context,
                                    settings: settings,
                                    hasNetworkConnection:
                                    connectivity.hasNetworkConnection,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                } else {
                  return const MediaQuery(
                    child: MaterialApp(
                        debugShowCheckedModeBanner: false, home:
                    SplashScreen()),
                    data: MediaQueryData(),
                  );
                }
              }
            }
          );
        });
  }
}
