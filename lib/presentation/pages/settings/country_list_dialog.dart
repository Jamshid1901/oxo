import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/style.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';

class CountryList extends StatelessWidget {
   CountryList({Key? key}) : super(key: key);
 List<Map<String, dynamic>> countries = [
    {
      "country": "AUSTRIA",
      "code": "AT"
    },
    {
      "country": "AUSTRALIA",
      "code": "AU"
    },
    {
      "country": "BELGIUM",
      "code": "BE"
    },
    {
      "country": "BRAZIL",
      "code": "BR"
    },
    {
      "country": "BULGARIA",
      "code": "BG"
    },
    {
      "country": "CANADA",
      "code": "CA"
    },
    {
      "country": "CYPRUS",
      "code": "CY"
    },
    {
      "country": "CZECHIA",
      "code": "CZ"
    },
    {
      "country": "DENMARK",
      "code": "DK"
    },
    {
      "country": "ESTONIA",
      "code": "EE"
    },
    {
      "country": "FINLAND",
      "code": "FI"
    },
    {
      "country": "FRANCE",
      "code": "FR"
    },
    {
      "country": "GERMANY",
      "code": "DE"
    },
    {
      "country": "GREECE",
      "code": "GR"
    },
    {
      "country": "HONG KONG",
      "code": "HK"
    },
    {
      "country": "HUNGARY",
      "code": "HU"
    },
    {
      "country": "IRELAND",
      "code": "IE"
    },
    {
      "country": "ITALY",
      "code": "IT"
    },
    {
      "country": "JAPAN",
      "code": "JP"
    },
    {
      "country": "LATVIA",
      "code": "LV"
    },
    {
      "country": "LITHUANIA",
      "code": "LT"
    },
    {
      "country": "LUXEMBOURG",
      "code": "LU"
    },
    {
      "country": "MALAYSIA",
      "code": "MY"
    },
    {
      "country": "MALTA",
      "code": "MT"
    },
    {
      "country": "MEXICO",
      "code": "MX"
    },
    {
      "country": "NETHERLANDS",
      "code": "NL"
    },
    {
      "country": "NEW ZEALAND",
      "code": "NZ"
    },
    {
      "country": "NORWAY",
      "code": "NO"
    },
    {
      "country": "POLAND",
      "code": "PL"
    },
    {
      "country": "PORTUGAL",
      "code": "PT"
    },
    {
      "country": "ROMANIA",
      "code": "RO"
    },
    {
      "country": "SINGAPORE",
      "code": "SG"
    },
    {
      "country": "SLOVAKIA",
      "code": "SK"
    },
    {
      "country": "SLOVENIA",
      "code": "SI"
    },
    {
      "country": "SPAIN",
      "code": "ES"
    },
    {
      "country": "SWEDEN",
      "code": "SE"
    },
    {
      "country": "SWITZERLAND",
      "code": "CH"
    },
    {
      "country": "UNITED ARAB EMIRATES",
      "code": "AE"
    },
    {
      "country": "UNITED KINGDOM",
      "code": "GB"
    },
    {
      "country": "UNITED STATES",
      "code": "US"
    },];
  @override
  Widget build(BuildContext contextBuild) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icon, _) {
        return Dialog(
          backgroundColor: Style.transparent,
          insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            height: 296.h,
            width: double.infinity,
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              color: colors.backgroundColorVariant,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: ListView.builder(
                itemCount: countries.length,
                itemBuilder: (context, index)=>ListTile(
                  onTap: (){
                    Navigator.pop(contextBuild, countries[index]["code"]);
                  },
                  title: Text(countries[index]["country"], style: fonts.subtitle1,),
                )),
          ),
        );
      },
    );
  }
}
