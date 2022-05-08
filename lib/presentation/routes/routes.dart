import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oxo/application/edit_profile/edit_profile_bloc.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/infrastructure/grid_apis.dart';
import 'package:oxo/infrastructure/models/profile/profile.dart';
import 'package:oxo/infrastructure/repositories/auth_repo.dart';
import 'package:oxo/infrastructure/repositories/edit_profile_repo.dart';
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';
import 'package:oxo/infrastructure/repositories/profile_repo.dart';
import 'package:oxo/infrastructure/services/prefs.dart';
import 'package:oxo/presentation/pages/auth/choose_interests.dart';
import 'package:oxo/presentation/pages/auth/email_sent.dart';
import 'package:oxo/presentation/pages/auth/enter_new_password.dart';
import 'package:oxo/presentation/pages/auth/forgot_password.dart';
import 'package:oxo/presentation/pages/auth/sign_in_page.dart';
import 'package:oxo/presentation/pages/auth/sign_up_page.dart';
import 'package:oxo/presentation/pages/edit_profile/edit_profile.dart';
import 'package:oxo/presentation/pages/followers/followers.dart';
import 'package:oxo/presentation/pages/home/home.dart';
import 'package:oxo/presentation/pages/profile/profile.dart';
import 'package:oxo/presentation/pages/settings/custom_web_view.dart';
import 'package:oxo/presentation/pages/user_profile/user_profile.dart';
import 'package:oxo/presentation/pages/user_profile/user_vendor_profile.dart';
import 'package:oxo/presentation/pages/user_search/user_search.dart';
import '../app_widget.dart';
import '../initialized.dart';
import '../no_connection.dart';
import '../pages/auth/verify_code.dart';
import '../styles/style.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String mainPage = '/main-page';

  static PageRoute<dynamic>? onGenerateRoute({
    required BuildContext context,
    required RouteSettings settings,
    required bool hasNetworkConnection,
  }) {
    if (!hasNetworkConnection) {
      return getNetworkNotFound();
    } else if (settings.name == Routes.splashPage) {
      return getSplashRoute(context);
    } else if (settings.name == Routes.signInPage) {
      return getSignInRoute(context);
    } else if (settings.name == Routes.mainPage) {
      return getMainRoute(context);
    }
    return null;
  }

  static PageRoute getNetworkNotFound() => MaterialPageRoute(
        builder: (_) => const NoConnection(),
      );

  static PageRoute getAppWidget() => MaterialPageRoute(
        builder: (_) => const AppWidget(),
      );

  static PageRoute getSplashRoute(BuildContext context) => MaterialPageRoute(
        builder: (_) => const Initializer(),
      );

  static PageRoute getSignInRoute(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => SignInBloc(
            context.read<AuthRepository>(),
          ),
          child: const SignIn(),
        ),
      );

  static PageRoute getMainRoute(BuildContext context, {int? index}) =>
      MaterialPageRoute(
        builder: (_) => HomePage(
          index: index ?? 0,
        ),
      );

  static PageRoute getEditProfileRoute(BuildContext context, ProfileModel info) => MaterialPageRoute(
    builder: (_) => RepositoryProvider(
        create: (context) => EditProfileRepository(EditProfileService.create()),
        child: BlocProvider(
            create: (context) => EditProfileBloc(ImageUploadRepo(ImageUploadService.create()), EditProfileRepository(EditProfileService.create())),
            child:  EditProfilePage(info: info,))),
  );

  static PageRoute getFollowersRoute(
          BuildContext context, int id, bool hasFriends) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<ProfileBloc>()
            ..add(ProfileEvent.getFollowersList(
                id: id, page: 1, hasFriends: hasFriends)),
          child: FollowersPage(
            id: id,
            hasFriends: hasFriends,
          ),
        ),
      );

  static PageRoute forgotPassword(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<SignInBloc>(),
          child: const ForgotPassword(),
        ),
      );

  static PageRoute emailSent(BuildContext context) => MaterialPageRoute(
        builder: (_) => const EmailSent(),
      );

  static PageRoute enterNewPassword(
    BuildContext context,
    String email,
    String code,
  ) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<SignInBloc>(),
          child: EnterNewPassword(
            email: email,
            code: code,
          ),
        ),
      );

  static PageRoute signUp(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<SignInBloc>(),
          child: const SignUp(),
        ),
      );

  static PageRoute chooseInterests(BuildContext context) => MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<SignInBloc>()..add(SignInEvent.getGameList()),
          child: const ChooseInterests(),
        ),
      );



  static PageRoute verifyCode(
    BuildContext context,
    String email, [
    ResendCodeType type = ResendCodeType.forgotPassword,
  ]) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<SignInBloc>(),
          child: VerifyCode(
            email: email,
            resendCodeType: type,
          ),
        ),
      );

  static Future<PageRoute> userProfileRoute(
      BuildContext context, int id) async {
    var _id = await PreferenceService.create.then((value) => value.getId);
    var _isVendor = await PreferenceService.create.then((value) => value.getIsVendor);
    return MaterialPageRoute(
      builder: (_) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => ProfileRepository(
                context.read<PreferenceService>(),
                ProfileService.create(),
                FollowersService.create()),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  ProfileBloc(context.read<ProfileRepository>(),ImageUploadRepo(ImageUploadService.create()))
                    ..add(id == _id
                        ? const ProfileEvent.getProfile()
                        : ProfileEvent.getUserProfile(id: id)),
            ),
          ],
          child: id == _id
          ? _isVendor
                  ? BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state){
              if (state.exception == 'success') {
                Navigator.pushAndRemoveUntil(context,
                    Routes.getMainRoute(context, index: 2), (route) => false);
              }
            },
            builder: (BuildContext context, state) {

                   return  Scaffold(body: state.isLoadingVProfile ? const Center(child: CircularProgressIndicator(color: Style.primary,),): const ProfilePage());
                   },
                  )
                  : const ProfilePage()
              : BlocBuilder<ProfileBloc,ProfileState>(
            builder: (BuildContext context, state) {
              if(state.typeUser == 'vendor_user'){
                return Scaffold(body: state.isLoadingVProfile ? const Center(child: CircularProgressIndicator(color: Style.primary,),):  UserVendorProfile(userId: state.id!,),);
              } if(state.typeUser == 'simple_user'){
                return const UserProfilePage();
              }else{
                return const Scaffold(body: Center(child: CircularProgressIndicator(),),);
              }
          },
          ),
        ),
      ),
    );
  }

  static PageRoute usersListRoute(BuildContext context) => MaterialPageRoute(
        builder: (_) => RepositoryProvider(
            create: (context) => ProfileRepository(
                context.read<PreferenceService>(),
                ProfileService.create(),
                FollowersService.create()),
            child: BlocProvider(
                create: (context) =>
                    ProfileBloc(context.read<ProfileRepository>(),ImageUploadRepo(ImageUploadService.create()))
                      ..add(const ProfileEvent.getUserSearchHistory()),
                child: const UserSearchPage())),
      );
}
