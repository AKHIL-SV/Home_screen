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
          height: 86.sp,
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 76.sp,
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
                      height: 28.sp,
                      width: 24.sp,
                      fit: BoxFit.contain,
                    ),
                    label: 'さがす'),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/bag.png',
                      height: 28.sp,
                      width: 24.sp,
                      fit: BoxFit.contain,
                    ),
                    label: 'お仕事'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 28.sp,
                      width: 24.sp,
                    ),
                    label: '打刻する'),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/typing.png',
                      height: 28.sp,
                      width: 24.sp,
                      fit: BoxFit.contain,
                    ),
                    label: 'チャット'),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/account.png',
                    height: 28.sp,
                    width: 24.sp,
                    fit: BoxFit.contain,
                  ),
                  label: 'マイページ',
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            height: 52.sp,
            width: 52.sp,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xffEDA827),
                  Color(0xffFFDA96),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/scan.png',
              width: 31.sp,
              height: 31.sp,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
