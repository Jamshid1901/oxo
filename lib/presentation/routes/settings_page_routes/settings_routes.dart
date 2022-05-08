

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oxo/application/settings/change_email/email_bloc.dart';
import 'package:oxo/application/settings/change_password/password_bloc.dart';
import 'package:oxo/application/settings/general/general_bloc.dart';
import 'package:oxo/infrastructure/grid_apis.dart';
import 'package:oxo/infrastructure/repositories/notification_repo.dart';
import 'package:oxo/infrastructure/repositories/settings_repo.dart';
import 'package:oxo/infrastructure/services/prefs.dart';
import 'package:oxo/presentation/pages/settings/change_email.dart';
import 'package:oxo/presentation/pages/settings/change_password.dart';
import 'package:oxo/presentation/pages/settings/general_settings.dart';
import 'package:oxo/presentation/pages/settings/information.dart';
import 'package:oxo/presentation/pages/settings/privacy_policy.dart';
import 'package:oxo/presentation/pages/settings/security_privacy.dart';
import 'package:oxo/presentation/pages/settings/settings_page.dart';
import 'package:oxo/presentation/pages/settings/terms_conditions.dart';
import 'package:oxo/presentation/pages/settings/verify_code.dart';

class SettingsRoutes{

  static PageRoute getSettingsRoute(BuildContext context) => MaterialPageRoute(
    builder: (_) => RepositoryProvider(
      create: (context) => SettingsRepository(
          context.read<PreferenceService>(), SettingsService.create()),
      child: BlocProvider(
          create: (context) =>
              SettingsBloc(context.read<SettingsRepository>()),
          child: const SettingsPage()),
    ),
  );


  static PageRoute getGeneralSettingsRoute(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<SettingsBloc>()
            ..add(const SettingsEvent.getGeneralSettings()),
          child: GeneralSettings(),
        ),
      );


  static PageRoute getPrivacySettingsRoute(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<SettingsBloc>()
            ..add(const SettingsEvent.getGeneralSettings()),
          child: const SecurityPage(),
        ),
      );



  static PageRoute getInformationSettingsRoute(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) =>RepositoryProvider(
          create: (context) => SettingsRepository(
              context.read<PreferenceService>(), SettingsService.create()),
          child: BlocProvider(
              create: (context) =>
              SettingsBloc(
                  context.read<SettingsRepository>())..add(const SettingsEvent.getPrivacyPolicy()),
              child: const InformationSettingsPage()),
        ),
      );


  static PageRoute getChangePasswordSettingsRoute(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) => RepositoryProvider(
          create: (context) => SettingsRepository(
              context.read<PreferenceService>(), SettingsService.create()),
          child: BlocProvider(
              create: (context) => PasswordBloc(
                  settingsFacade: context.read<SettingsRepository>()),
              child: const ChangePasswordPage()),
        ),
      );


  static PageRoute getChangeEmailSettingsRoute(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) => RepositoryProvider(
          create: (context) => SettingsRepository(
              context.read<PreferenceService>(), SettingsService.create()),
          child: BlocProvider(
              create: (context) =>
                  EmailBloc(settingsFacade: context.read<SettingsRepository>()),
              child: const ChangeEmailPage()),
        ),
      );


  static PageRoute verifyCodeSettings(BuildContext context, String email) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<EmailBloc>(),
          child: VerifyCodeSettings(
            email: email,
          ),
        ),
      );


  static PageRoute getPrivacyPolicyInfoSettingsRoute(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
  value: context.read<SettingsBloc>(),
  child: const PrivacyPolicyPage(),
),
      );

  static PageRoute getTermsConditionsSettingsRoute(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
  value: context.read<SettingsBloc>(),
  child: const TermsConditions(),
),
      );


}