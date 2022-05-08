import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oxo/application/settings/general/general_bloc.dart';
import 'package:oxo/infrastructure/models/settings/put_general_info.dart';
import 'package:oxo/infrastructure/services/date_time_converter.dart';
import 'package:oxo/presentation/component/error_dialog.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/pages/settings/components/settings_item_row_switch.dart';
import 'package:oxo/presentation/routes/settings_page_routes/settings_routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'components/general_settings_custom_widget.dart';
import 'package:easy_localization/easy_localization.dart';


class GeneralSettings extends StatefulWidget {
  GeneralSettings({Key? key}) : super(key: key);

  bool isDark = false;

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  DateTime? datePicked;

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
              title: 'general'.tr(),
            ),
          ),
          body: BlocConsumer<SettingsBloc, SettingsState>(
            listenWhen: (prev, next)=> ((prev.exception != next.exception && next.exception.isNotEmpty) ||(prev.isUpdated != next.isUpdated) ),

            listener: (context, state){
              if (state.exception.isNotEmpty) {
                OxoError.openDialog(
                  context,
                  title: state.exception,
                  description: 'correct_credentials'.tr(),
                  buttonTitle: 'close'.tr(),
                );
              }
              if(state.isUpdated){
                context.read<SettingsBloc>().add(const SettingsEvent.getGeneralSettings());
              }
            },

            builder: (context, state) {
              return  Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SettingsItemRowSwitch(
                      title: 'dark_mode',
                      status: widget.isDark,
                      onTap: (status) {
                        //   widget.isDark = !widget.isDark;
                        //  widget.isDark ? controller.setDark() : controller.setLight();
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    GeneralSettingRowItems(
                      onTap: () {},
                      title: 'language'.tr(),
                      detail: 'english'.tr(),
                      color: colors.disabledLight,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomDivider(
                      title: 'information',
                    ),
                    state.isLoading
                        ? Column(children: [
                          const SizedBox(height: 16,),
                          CircularProgressIndicator(color: colors.primary,)
                    ],)
                        : Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        GeneralSettingRowItems(
                          onTap: () {
                            showModalBottomSheet(
                                shape: const RoundedRectangleBorder( borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft:Radius.circular(16),)
                                ),
                                context: context,
                                builder: (context2) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      SizedBox(height: 24.h,),
                                      InkWell(
                                          onTap: (){
                                            String date = Converter.convertFormatDivider(date: '${state.dob}');

                                            GeneralInfoEntity entity = GeneralInfoEntity(
                                                    (v) =>
                                                v
                                                  ..gender = 'female'
                                                  ..birthday= datePicked != null ? '${datePicked!.year}-${Converter
                                                      .isFormatted(datePicked!.month)}-${Converter
                                                      .isFormatted(datePicked!.day)}'  : date
                                            );

                                            context.read<SettingsBloc>().add(SettingsEvent.putGeneralInfoSettings(generalInfoEntity: entity));
                                            Navigator.pop(context);

                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              width: double.infinity,
                                              color: colors.transparent,
                                              child: Text('female'.tr(), style: fonts.headline2,))),
                                      SizedBox(height: 16.h,),
                                      InkWell(
                                          onTap: (){
                                            String date = Converter.convertFormatDivider(date: '${state.dob}');

                                            GeneralInfoEntity entity = GeneralInfoEntity(
                                                    (v) =>
                                                v
                                                  ..gender = 'male'
                                                  ..birthday= datePicked != null ? '${datePicked!.year}-${Converter
                                                      .isFormatted(datePicked!.month)}-${Converter
                                                      .isFormatted(datePicked!.day)}'  : date
                                            );

                                            context.read<SettingsBloc>().add(SettingsEvent.putGeneralInfoSettings(generalInfoEntity: entity));
                                            Navigator.pop(context);

                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                              width: double.infinity,
                                              color: colors.transparent,
                                              child: Text('male'.tr(), style: fonts.headline2,))),
                                      SizedBox(height: 34.h,),
                                    ],
                                  );
                                });
                          },
                          title: 'gender'.tr(),
                          detail: '${state.gender}'.tr(),
                          color: colors.primary,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        GeneralSettingRowItems(
                          onTap: () async {
                            String date = Converter.convertFormatDivider(date: '${state.dob}');
                            // DatePicker.showDatePicker(
                            //   context,
                            //   theme: DatePickerTheme(
                            //       backgroundColor:
                            //       colors.backgroundColorVariant,
                            //       cancelStyle: fonts.bodyText2.copyWith(
                            //         color: colors.text,
                            //       ),
                            //       doneStyle: fonts.bodyText2.copyWith(
                            //         color: colors.text,
                            //       ),
                            //       itemStyle: fonts.bodyText2.copyWith(
                            //         color: colors.text,
                            //       )),
                            //   showTitleActions: true,
                            //   minTime: DateTime(1900),
                            //   maxTime: DateTime.now(),
                            //   onChanged: (date) {},
                            //   onConfirm: (date) {
                            //     setState(() {
                            //       datePicked = date;
                            //     });
                            //
                            //     setState(() {});
                            //     if(datePicked != null) {
                            //
                            //       GeneralInfoEntity entity = GeneralInfoEntity(
                            //               (v) =>
                            //           v
                            //             ..gender = '${state.gender}'
                            //             ..birthday = '${datePicked!.year}-${Converter
                            //                 .isFormatted(datePicked!.month)}-${Converter
                            //                 .isFormatted(datePicked!.day)}'
                            //       );
                            //
                            //       context.read<SettingsBloc>().add(SettingsEvent.putGeneralInfoSettings(generalInfoEntity: entity));
                            //     }
                            //   },
                            //   currentTime: datePicked == null ? DateTime.parse('$date') : DateTime.parse('${datePicked!.year}-${Converter
                            //       .isFormatted(datePicked!.month)}-${Converter
                            //       .isFormatted(datePicked!.day)}'),
                            // );

                          },
                          title: 'DOB'.tr(),
                          detail: datePicked != null
                              ?   '${Converter.isFormatted(datePicked!.month)}-${Converter.isFormatted(datePicked!.day)}-${datePicked!.year}'
                              : '${state.dob}',
                          color: colors.primary,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        GeneralSettingRowItems(
                          onTap: () {
                            Navigator.push(context,
                                SettingsRoutes.getChangeEmailSettingsRoute(context));
                          },
                          title: 'email'.tr(),
                          detail: '${state.email}',
                          color: colors.primary,
                        ),
                      ],
                    ),

                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class GeneralSettingRowItems extends StatelessWidget {
  const GeneralSettingRowItems({
    Key? key,
    required this.title,
    required this.detail,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String detail;
  final Color color;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            color: colors.transparent,
            child: Row(
              children: [
                Text(
                  title,
                  style: fonts.bodyText2.copyWith(color: colors.lightTextBody),
                ),
                const Spacer(),
                Text(detail, style: fonts.bodyText2.copyWith(color: color),
                  overflow: TextOverflow.ellipsis, maxLines: 30,),
                SvgPicture.asset(
                  icons.rightArrow,
                  color: colors.lightTextBody,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
