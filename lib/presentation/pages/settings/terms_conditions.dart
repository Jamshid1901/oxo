import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../application/settings/general/general_bloc.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.h),
            child: OrdinaryAppbar(
              title: 'terms_conditions'.tr(),
            ),
          ),
          body: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return state.isLoading
                  ? Center(child: CircularProgressIndicator(color: colors.primary,),)
                  : ListView(
                padding: const EdgeInsets.all(16),
                physics: const BouncingScrollPhysics(),
                children: [
                  Text('${state.privacyPolicy?.termsConditions}',
                    style: fonts.bodyText2.copyWith(
                      color: colors.lightTextBody,),),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
