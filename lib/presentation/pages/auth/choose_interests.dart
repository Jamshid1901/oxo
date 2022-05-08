import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/application/sign_in/sign_in_bloc.dart';
import 'package:oxo/domain/common/add_ot_remove.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/loading.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:shimmer/shimmer.dart';

class ChooseInterests extends StatelessWidget {
  const ChooseInterests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, _) {
        return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
          return state.isLoading
              ? const Loading()
              : GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Scaffold(
                    backgroundColor: colors.backgroundColor,
                    appBar: AppBar(
                      backgroundColor: colors.backgroundColor,
                      iconTheme: IconThemeData(color: colors.icon),
                      title: Image.asset(
                        icons.logoLightImage,
                        height: 20.h,
                        width: 50.w,
                      ),
                      centerTitle: true,
                      elevation: 0.5,
                    ),
                    body: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          bottom: 48,
                          left: 0,
                          right: 0,
                          child: ListView(
                            padding: EdgeInsets.all(16.h),
                            children: [
                              CustomTextField(
                                title: 'add_your_favourite_game'.tr(),
                                hintText: 'for_fortnite'.tr(),
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                'maximum_games'.tr(),
                                style: fonts.caption,
                              ),
                              SizedBox(height: 25.h),
                              ...List.generate(
                                state.allGames.length,
                                (index) => _games(
                                  context,
                                  fonts,
                                  state.allGames[index],
                                  state.gameList.length > 9,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 26,
                          left: 16.w,
                          right: 16.w,
                          child: CustomButton(
                              isDisabled: state.gameList.isEmpty,
                              onPressed: () {
                                final games = FavouriteGames(
                                  (f) => f.games.addAll(state.gameList),
                                );

                                context.read<SignInBloc>().add(
                                      SignInEvent.addFavouriteGames(
                                        games: games,
                                      ),
                                    );
                              },
                              title: 'confirm'.tr()),
                        ),
                      ],
                    ),
                  ),
                );
        });
      },
    );
  }

  Widget _games(
      BuildContext context, FontSet fonts, Game game, bool isDissabled) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0.h),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading:  CachedNetworkImage(
            errorWidget: (context, url, error) => const Icon(Icons.error),
            imageUrl: game.image !=null ? game.image!.file! : "",
            progressIndicatorBuilder: (_, __, ___) {
              return Shimmer(
                child: Container(
                  height: 37.w,
                  width: 37.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                gradient: const LinearGradient(
                  colors: [],
                ),
              );
            },
            imageBuilder: (context, imageProvider) {
              return Container(
                height: 37.w,
                width: 37.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  image: DecorationImage(
                    image: imageProvider,
                  ),
                ),
              );
            }),
        title: Text(
          game.name ?? 'Unknown',
          style: fonts.headline4,
          maxLines: 2,
        ),
        trailing: CustomCheckButton(
          onchanged: (isChecked) {
            context.read<SignInBloc>().add(
              SignInEvent.addToGame(
                id: game.id ?? 0,
                action: isChecked ? AddOrRemove.add : AddOrRemove.remove,
              ),
            );
          },
          isDissabled: isDissabled,
        ),
      ),
    );
  }
}
