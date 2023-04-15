import 'package:flutter/material.dart';
import 'package:home_screen_jp/model/dates.dart';

// colors
const Color orangeColor = Color(0xffFAAA14);
const Color white = Colors.white;
const Color black = Colors.black;
const Color red = Color(0xffEE5F40);
const Color deepred = Color(0xffFF6262);

// theme

final theme = ThemeData(
  canvasColor: Colors.grey,
  primaryColor: orangeColor,
  fontFamily: 'NotoSansJP',
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
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
