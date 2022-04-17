import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oxo/ui/utils/style.dart';


class AppLoading extends StatelessWidget {

  final bool showLoadingText;

  const AppLoading({
    Key? key,
    this.showLoadingText = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return const SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Style.blackColor),
          ),
        ),
      );
    }
    else {
      return const SizedBox(
        width: 100,
        height: 100,
        child: CupertinoActivityIndicator(),
      );
    }
  }
}