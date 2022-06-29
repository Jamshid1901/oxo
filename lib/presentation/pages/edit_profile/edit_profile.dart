import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/application/edit_profile/edit_profile_bloc.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/models/profile/profile.dart';
import 'package:oxo/infrastructure/shared_variables.dart';
import 'package:oxo/presentation/component/add_photo_dotted_border.dart';
import 'package:oxo/presentation/component/custom_button.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/component/ordinary_appbar.dart';
import 'package:oxo/presentation/component/profile_image.dart';
import 'package:oxo/presentation/routes/routes.dart';
import 'package:oxo/presentation/styles/theme.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key,required this.info}) : super(key: key);

  final ProfileModel info;
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

  Timer? _timer;

  bool isLinkTrue(String link){
    if(link.isNotEmpty){
      if(link.contains('.')){
        return true;
      }else {
        return false;
      }
    }else {
      return true;
    }
  }



  late TextEditingController bioController ;

  late TextEditingController webSiteController ;

  late TextEditingController usernameController ;

  @override
  initState(){
    super.initState();

    if( (widget.info.profileAvatarModel?.id == null)){
      ConstVariables.avatarId = -1;
    }else if(ConstVariables.avatarId != widget.info.profileAvatarModel?.id){
      ConstVariables.avatarId = widget.info.profileAvatarModel!.id!;
    }


    if(  widget.info.profileBackgroundModel?.id == null ){
      ConstVariables.backgroundId = -1;
    }else if( ConstVariables.backgroundId != widget.info.profileBackgroundModel?.id){
      ConstVariables.backgroundId = widget.info.profileBackgroundModel!.id!;
    }

    bioController = TextEditingController(text:  widget.info.bio);

    webSiteController = TextEditingController(text: widget.info.link);

    usernameController = TextEditingController(text: widget.info.userName);
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context_, CustomColorSet colors, FontSet fonts,
          IconSet icons, OxoTheme controller) {
        return Scaffold(
            backgroundColor: colors.backgroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(56.h),
              child: OrdinaryAppbar(
                title: 'edit_profile'.tr(),
              ),
            ),
            body: BlocConsumer<EditProfileBloc, EditProfileState>(

              listener: (context, state) {
                if(state.isSuccess!){

                  Navigator.pushAndRemoveUntil(context, Routes.getMainRoute(context, index: 2), (route) => false);
                }

              },

              builder: (context, state) {
                return state.isLoading!
                    ? Center(child: CircularProgressIndicator(color: colors.primary,),)
                    : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 54.h,
                        ),
                        state.isLoadingAvatar!
                            ?  Center(child: CircularProgressIndicator(color: colors.primary,),)
                            : CircularProfileImage(
                          fit: BoxFit.cover,
                          height: 72,
                          width: 72,
                          avatarFile: state.imageAvatarUploadModel?.mediaId,
                          imageUrl: state.imageAvatarId == null ? '${widget.info.profileAvatarModel?.file}' : '${state.imageAvatarUploadModel?.mediaId}',
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        GestureDetector(
                          onTap: (){
                            context.read<EditProfileBloc>().add(const EditProfileEvent.uploadAvatarPhoto());
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'change_profile_photo'.tr(),
                              style: fonts.subtitle1.copyWith(color: colors
                                  .primary),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 34.h,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'set_cover_image'.tr(),
                              style: fonts.subtitle1,
                            )),
                        SizedBox(
                          height: 12.h,
                        ),
                        AddPhotoDottedBorder(
                          imageUrl:  state.imageBackgroundId == null ? '${widget.info.profileBackgroundModel?.file}' : '${state.imageBackgroundUploadModel?.mediaId}',
                          backgroundImage: state.imageBackgroundUploadModel?.mediaId,
                          isLoading: state.isLoadingBackground!,
                          onTap: (){
                            context.read<EditProfileBloc>().add(const EditProfileEvent.uploadBackgroundPhoto());
                          },
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomTextField(
                          validator: (s){},
                          suffixIcon:  state.isUserNameFree! ? SvgPicture.asset(icons.validated) : SvgPicture.asset(icons.notValid),
                          onChanged: (g){
                            if (_timer != null) _timer!.cancel();
                            _timer = Timer(const Duration(milliseconds: 500), () {
                              UserNameM userName = UserNameM((v)=> v..userName = g);
                              context.read<EditProfileBloc>().add(EditProfileEvent.checkUserName(userName: userName));

                            });
                          },
                          controller: usernameController,
                          title: 'username'.tr(),
                          minLines: 1,
                          maxLines: 1,
                          maxLength: 40,
                          error:  state.isUserNameFree! ? null : 'username_is_already_taken'.tr(),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomTextField(
                          validator: (s){},
                          controller: bioController,
                          title: 'bio'.tr(),
                          hintText: 'bio'.tr(),
                          minLines: 7,
                          maxLines: 8,
                          maxLength: 500,
                          error: bioController.text.length == 500 ? '' : null,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomTextField(
                          validator: (s){},
                          error: isLinkTrue(webSiteController.text.toString()) ?  null : 'This is not valid url',
                          controller: webSiteController,
                          title: 'your_website'.tr(),
                          hintText: 'google.com',
                        ),
                        SizedBox(
                          height: 64.h,
                        ),
                        CustomButton(
                            onPressed: () {

                              ProfileM profile = ProfileM(
                                  userName: usernameController.text.toString(),
                                  bio: bioController.text.toString().isEmpty ? null : bioController.text.toString(),
                                  avatarM:ConstVariables.avatarId==-1 ? null :ConstVariables.avatarId ,
                                  backgroundM: ConstVariables.backgroundId == -1 ? null : ConstVariables.backgroundId,
                                  link:  webSiteController.text.toString().isEmpty ? null
                                      : webSiteController.text.contains('http')
                                      ? webSiteController.text
                                      : 'https://${webSiteController.text.toString()}'
                              );

                              /* ProfileM data = ProfileM(
                                (v)=> v
                                  ..avatarM = state.imageAvatarId
                                  ..backgroundM = state.imageBackgroundId
                                  ..userName = usernameController.text.toString()
                                  ..bio = bioController.text.toString().isEmpty ? null : bioController.text.toString()
                                  ..link = webSiteController.text.toString().isEmpty ? null
                                      : webSiteController.text.contains('http')
                                      ? webSiteController.text
                                      : 'https://${webSiteController.text.toString()}'

                            );*/

                              context.read<EditProfileBloc>().add(EditProfileEvent.editProfilePut(editPModel: profile));

                            },
                            title: 'save'.tr()),
                        SizedBox(
                          height: 45.h,
                        ),
                      ],
                    ),
                  ),
                );
              }, )
        );
      },
    );
  }


  @override
  dispose(){
    super.dispose();
    bioController.dispose();
    webSiteController.dispose();
    usernameController.dispose();
    _timer?.cancel();
  }


}
