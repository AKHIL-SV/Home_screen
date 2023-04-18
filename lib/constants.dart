import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_screen_jp/model/dates.dart';

// colors
const Color orangeColor = Color(0xffFAAA14);
const Color white = Colors.white;
const Color lightgray = Color(0xffF7F7F7);
const Color black = Colors.black;
const Color red = Color(0xffEE5F40);
const Color deepred = Color(0xffFF6262);

// theme

final theme = ThemeData(
  canvasColor: lightgray,
  primaryColor: orangeColor,
  fontFamily: 'NotoSansJP',
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: lightgray,
    contentPadding: EdgeInsets.fromLTRB(13.w, 11.h, 0.w, 11.h),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.sp),
      borderSide: BorderSide.none,
    ),
    counterStyle: const TextStyle(
      color: lightgray,
    ),
  ),
);

// dates
List dates = [
  Dates(dateInEn: '26', dateInJp: '木'),
  Dates(dateInEn: '27', dateInJp: '金'),
  Dates(dateInEn: '28', dateInJp: '土'),
  Dates(dateInEn: '29', dateInJp: '日'),
  Dates(dateInEn: '30', dateInJp: '月'),
  Dates(dateInEn: '31', dateInJp: '火'),
  Dates(dateInEn: '1', dateInJp: '水'),
  Dates(dateInEn: '2', dateInJp: '木'),
  Dates(dateInEn: '3', dateInJp: '金'),
  Dates(dateInEn: '4', dateInJp: '土'),
  Dates(dateInEn: '5', dateInJp: '日'),
  Dates(dateInEn: '6', dateInJp: '月'),
  Dates(dateInEn: '7', dateInJp: '火'),
  Dates(dateInEn: '8', dateInJp: '水'),
  Dates(dateInEn: '9', dateInJp: '木'),
  Dates(dateInEn: '10', dateInJp: '金'),
  Dates(dateInEn: '11', dateInJp: '土'),
  Dates(dateInEn: '12', dateInJp: '日'),
  Dates(dateInEn: '13', dateInJp: '月'),
  Dates(dateInEn: '14', dateInJp: '火'),
  Dates(dateInEn: '15', dateInJp: '水'),
  Dates(dateInEn: '16', dateInJp: '木'),
  Dates(dateInEn: '17', dateInJp: '金'),
  Dates(dateInEn: '18', dateInJp: '土'),
  Dates(dateInEn: '19', dateInJp: '日'),
  Dates(dateInEn: '20', dateInJp: '月'),
  Dates(dateInEn: '21', dateInJp: '火'),
  Dates(dateInEn: '22', dateInJp: '水'),
  Dates(dateInEn: '23', dateInJp: '木'),
  Dates(dateInEn: '24', dateInJp: '金'),
  Dates(dateInEn: '25', dateInJp: '土'),
];

//images

List images = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  'assets/images/5.png',
  'assets/images/6.png',
];
