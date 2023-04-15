import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_screen_jp/constants.dart';
import 'package:home_screen_jp/view/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56.h,
        leadingWidth: 24.w,
        title: Container(
          height: 33.h,
          width: 240.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: lightgray,
          ),
          padding: EdgeInsets.only(left: 13.w),
          alignment: Alignment.centerLeft,
          child: Text(
            '北海道, 札幌市',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff303030),
            ),
          ),
        ),
        actions: [
          Image.asset(
            'assets/icons/filter.png',
            height: 32.h,
            width: 32.w,
          ),
          SizedBox(
            width: 9.w,
          ),
          Icon(
            Icons.favorite_outline_sharp,
            size: 32.sp,
            color: red,
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: SizedBox(
        height: 52.h,
        width: 52.w,
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () {},
          backgroundColor: white,
          child: Icon(
            Icons.location_on_outlined,
            color: const Color(0xff303030),
            size: 28.sp,
          ),
        ),
      ),
    );
  }
}
