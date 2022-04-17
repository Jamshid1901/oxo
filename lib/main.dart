
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter/foundation.dart';

import 'ui/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  _setupLogging();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US')],
      path: 'assets/translation',
      fallbackLocale: const Locale('en', 'US'),
      child: const AppWidget()));
}

void _setupLogging() => Logger.root
  ..level = kDebugMode ? Level.ALL : Level.WARNING
  ..onRecord.listen((record) => debugPrint(
    '${record.level.name}: '
        '${record.time} '
        '${record.loggerName}: '
        '${record.message}',
  ));
