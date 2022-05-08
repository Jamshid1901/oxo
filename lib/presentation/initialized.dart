import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oxo/application/auth/auth_bloc.dart';
import 'package:oxo/presentation/routes/routes.dart';

import 'splash_screen.dart';

class Initializer extends StatelessWidget {
  const Initializer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => Navigator.pushAndRemoveUntil(
              context, Routes.getMainRoute(context), (route) => false),
          unAuthenticated: (_) => Navigator.pushReplacementNamed(
            context,
            Routes.signInPage,
          ),
        );
      },
      child: const SplashScreen(),
    );
  }
}
