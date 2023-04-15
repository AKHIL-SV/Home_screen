import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_screen_jp/constants.dart';
import 'package:home_screen_jp/view/widgets/bottom_nav_bar.dart';
import 'package:home_screen_jp/view/widgets/horizontal_list_date.dart';
import 'package:home_screen_jp/view/widgets/job_info_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
      body: Column(
        children: [
          Container(
            height: 33.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffFAAA14),
                  Color(0xffFFD78D),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              '2022年 5月 26日（木）',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    SizedBox(
                      height: 67.sp,
                      child: const HorizontalListDates(),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    JobInfoCard()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 52.h,
        width: 52.w,
        child: FloatingActionButton(
          elevation: 3,
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
