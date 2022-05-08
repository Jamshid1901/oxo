import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:flutter/foundation.dart';
import 'presentation/app_widget.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await FirebaseMessaging.instance
  //     .setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
   _setupLogging();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US')],
      path: 'assets/translation',
      fallbackLocale: const Locale('en', 'US'),
      child: const AppWidget(),
    ),
  );
}

 void _setupLogging() => Logger.root
   ..level = kDebugMode ? Level.ALL : Level.WARNING
   ..onRecord.listen((record) => debugPrint(
         '${record.level.name}: '
         '${record.time} '
         '${record.loggerName}: '
         '${record.message}',
       ));
