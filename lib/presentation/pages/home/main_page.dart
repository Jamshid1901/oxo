import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oxo/presentation/component/custom_text_field.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold(
        appBar: AppBar(
            backgroundColor: colors.primary,
            title: CustomTextField(
              hintText: "Qidirish",
              suffixIcon: Icon(
                Icons.search,
                color: colors.primary,
              ),
              bgColor: colors.white,
              validator: (s) {},
            )),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.h,horizontal: 16.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kategoriya",style: fonts.headline5
                          .copyWith(color: colors.primary),),
                      Row(
                        children: [
                          Text("Barchasi",style: fonts.bodyText2
                              .copyWith(color: colors.primary.withOpacity(0.5)),),
                          Icon(Icons.keyboard_arrow_right,color: colors.primary.withOpacity(0.5),)
                        ],
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 194.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                  padding: const EdgeInsets.all(16),
                                  width: 75.w,
                                  height: 75.h,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Style.bgCategory,
                                  ),
                                child: SvgPicture.asset(icons.categoryHome,),
                                ),
                          ))),
                ],
              ),
            ),
            Text("main"),
          ],
        ),
      );
    });
  }
}
