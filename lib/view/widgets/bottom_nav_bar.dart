import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          width: double.infinity,
          height: 86.h,
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 76.h,
            child: BottomNavigationBar(
                backgroundColor: white,
                currentIndex: 0,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: orangeColor,
                selectedLabelStyle: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                ),
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/search.png',
                        height: 28.h,
                        width: 24.w,
                        fit: BoxFit.contain,
                      ),
                      label: 'さがす'),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/bag.png',
                        height: 28.h,
                        width: 24.w,
                        fit: BoxFit.contain,
                      ),
                      label: 'お仕事'),
                  BottomNavigationBarItem(
                      icon: SizedBox(
                        height: 28.h,
                        width: 24.w,
                      ),
                      label: '打刻する'),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/typing.png',
                        height: 28.h,
                        width: 24.w,
                        fit: BoxFit.contain,
                      ),
                      label: 'チャット'),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/account.png',
                      height: 28.h,
                      width: 24.w,
                      fit: BoxFit.fitWidth,
                    ),
                    label: 'マイページ',
                  ),
                ]),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/icons/scan.png',
            height: 52.h,
            width: 52.w,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
