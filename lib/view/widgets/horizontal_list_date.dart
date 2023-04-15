import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_screen_jp/constants.dart';

class HorizontalListDates extends StatelessWidget {
  const HorizontalListDates({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dates.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 25.w),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(right: 6.w),
          height: 67.h,
          width: 44.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: index == 0 ? orangeColor : Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dates[index].dateInJp,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                  color: index == 0 ? white : const Color(0xff303030),
                ),
              ),
              Text(
                dates[index].dateInEn,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                  color: index == 0 ? white : const Color(0xff303030),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
