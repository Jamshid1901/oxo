import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/infrastructure/grid_apis.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';
import 'package:oxo/presentation/component/custom_appbar/flexible_appbar.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final RefreshController _refreshController = RefreshController(
      initialRefresh: false);
  final RefreshController _refreshControllerTickets = RefreshController(
      initialRefresh: false);


  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
    _refreshControllerTickets.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: Text("profile"),),
                  SizedBox(height: 24.h,),
                  CustomButton(
                    isDisabled: false,
                    onPressed: () {
                      var l = LogoutModel((l)=>l.fcm = "");
                      context.read<ProfileBloc>().add(ProfileEvent.logout(logoutModel: l));
                      Navigator.pushReplacementNamed(
                        context,
                        Routes.signInPage,
                      );
                    },
                    title: 'Chiqib ketish',
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}