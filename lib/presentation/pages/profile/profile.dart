import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oxo/infrastructure/grid_apis.dart';
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';
import 'package:oxo/presentation/component/custom_appbar/flexible_appbar.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  final RefreshController _refreshControllerTickets = RefreshController(initialRefresh: false);

  int _pageNumber = 1;
  int _pageNumberTickets = 1;

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
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context,
                  bool innerBoxIsScrolled) {
                return [
                  const SliverAppbarCustom(),
                ];
              },
              body: TabBarView(
              children: [

              ],

              ),),
          ),
        );
      },
    );
  }
}