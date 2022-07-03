import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constant/app_size_manager.dart';
import '../constant/color_manager.dart';
import '../constant/font_manager.dart';
import 'text_style_manager.dart';

ThemeData getAppTheme({required BuildContext c0ntext}) {
  return ThemeData(
    primaryColor: ColorManager.kPrimaryColor,
    splashColor: ColorManager.pinke,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorManager.pinke,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorManager.kSucnedColor,
        statusBarIconBrightness: Brightness.light,
      ),
      elevation: AppSize.size0,
      centerTitle: true,
      color: ColorManager.kSucnedColor,
      titleTextStyle: getBoldSegoeStyle(
        color: ColorManager.white,
      ),
    ),
    textTheme: TextTheme(
      overline: getRegulerSegoeStyle(
          color: ColorManager.white, fSize: FontSize.size20),
      headline6: getBoldSegoeStyle(
        color: ColorManager.white,
        fSize: FontSize.size16,
      ),
      headline5: getBoldPoppinsStyle(
        color: ColorManager.gray,
      ),
      headline2: getBoldSFProTexteStyle(
        color: ColorManager.white,
      ),
      headline3: getBoldSegoeStyle(
        color: ColorManager.white,
        fSize: FontSize.size12,
      ),
      headline4: getSimeBoldSegoeStyle(
        color: ColorManager.pinke,
        fSize: FontSize.size14,
      ),
      headline1: getRegulerSegoeStyle(
        color: ColorManager.white,
        fSize: FontSize.size14,
      ),
      subtitle1: getRegulerSegoeStyle(
        color: ColorManager.gray,
        fSize: FontSize.size12,
      ),
      subtitle2: getRegulerSegoeStyle(
        color: ColorManager.white,
        fSize: FontSize.size10,
      ),
      bodyText1: getRegulerSegoeStyle(
        color: ColorManager.white,
        fSize: FontSize.size12,
      ),
      bodyText2: getRegulerSegoeStyle(
        color: ColorManager.gray,
        fSize: FontSize.size9,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      //minWidth: AppSize.size60,
      shape: StadiumBorder(),
      buttonColor: ColorManager.pinke,
      splashColor: ColorManager.kSucnedColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // maximumSize: Size(250, 40),
        textStyle: getBoldSegoeStyle(
          color: ColorManager.white,
          fSize: FontSize.size12,
        ),
        //minimumSize: Size(AppSize.size100, AppSize.size30),
        primary: ColorManager.pinke,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.size8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.padding8),
      hintStyle: getBoldSFProTexteStyle(
        color: ColorManager.gray,
        fSize: FontSize.size10,
      ),
      labelStyle: getBoldSFProTexteStyle(
        color: ColorManager.white,
        fSize: FontSize.size10,
      ),
      errorStyle: getBoldSFProTexteStyle(color: ColorManager.pinke),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.kSucnedColor,
          width: AppSize.size2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.size40,
          ),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.gray,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.size40,
          ),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.pinke,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.size40,
          ),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.kSucnedColor,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.size40,
          ),
        ),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.pink,
      unselectedLabelColor: ColorManager.white,
      labelStyle: Theme.of(c0ntext).textTheme.headline4?.copyWith(
            fontSize: FontSize.size14,
          ),
      unselectedLabelStyle: Theme.of(c0ntext).textTheme.headline4?.copyWith(
            fontSize: FontSize.size14,
          ),
    ),
  );
}
