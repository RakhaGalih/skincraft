import 'package:flutter/material.dart';
import 'package:skincraft/core/theme/app_colors.dart';  
  
class AppTheme {  
  static ThemeData get theme {  
    return ThemeData(  
      primarySwatch: Colors.blueGrey,  
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Urbanist',  
      scaffoldBackgroundColor: AppColor.whiteColor
    );  
  }  
}  
