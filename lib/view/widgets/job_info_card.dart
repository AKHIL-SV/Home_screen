import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_screen_jp/constants.dart';
import 'package:home_screen_jp/controller/getx.dart';

class JobInfoCard extends StatelessWidget {
  JobInfoCard({super.key});
  final favController = Get.put(FavController());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              height: 402.sp,
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 388.sp,
                width: 325.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.sp),
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0.r,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 186.sp,
                      width: 325.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15.r),
                        ),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20.w, 16.h, 12.w, 23.h),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 25.sp,
                                      width: 130.w,
                                      color: const Color.fromARGB(
                                          55, 238, 171, 64),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '介護付き有料老人ホーム',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xffFAAA14)),
                                      ),
                                    ),
                                    Text(
                                      '¥ 6,000',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff303030),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '5月 31日（水）08 : 00 ~ 17 : 00',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                                Text(
                                  '北海道札幌市東雲町3丁目916番地17号',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                                Text(
                                  '交通費 300円',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                                Text(
                                  '住宅型有料老人ホームひまわり倶楽部',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromARGB(110, 48, 48, 48),
                                  ),
                                )
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: InkWell(
                                onTap: () {
                                  if (favController.isProductFavorite(index)) {
                                    favController.removeFromFavorites(index);
                                  } else {
                                    favController.addToFavorites(index);
                                  }
                                },
                                child: Obx(
                                  () => Visibility(
                                    visible:
                                        favController.isProductFavorite(index),
                                    replacement: Icon(
                                      Icons.favorite_outline_outlined,
                                      size: 30.sp,
                                      color:
                                          const Color.fromARGB(76, 48, 48, 48),
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      size: 30.sp,
                                      color: red,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 173.sp,
              left: 20.w,
              child: Container(
                height: 20.sp,
                width: 74.sp,
                color: deepred,
                alignment: Alignment.center,
                child: Text(
                  '本日まで',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: white,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
