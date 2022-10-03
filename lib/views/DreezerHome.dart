import 'package:dreezer/controller/controller.dart';
import 'package:dreezer/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Music extends StatelessWidget {
  Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaPlayerController mediaPlayerController =
        Get.put(MediaPlayerController());
    return Obx(() => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(9.h),
          child: AppBar(
            shape: Border(
                bottom: BorderSide(
              color: Colors.black,
              width: 0.1.w,
            )),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.only(top: 12.0.sp),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    Image.asset(
                      'assets/i1.png',
                      fit: BoxFit.contain,
                      height: 20.h,
                      width: 40.w,
                    ),
                    Container(
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 25.sp,
                      ),
                    )
                  ]),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: Center(
                  child: Container(
                    height: 22.h,
                    width: 40.w,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/p3.jpg',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Chill Hits",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Container(
                  width: 40.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 16.sp,
                          ),
                          Text(
                            "Listen on Deezer",
                            style: TextStyle(fontSize: 15.sp),
                          )
                        ],
                      ))),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: 100.w,
                // color: Colors.red,
                child: Text(
                  "Only the greatest hits of the moment to chill\n out it",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.sp),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "by ",
                      style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                    ),
                    Text("Fabio - Deezer Pop Editor  ",
                        style: TextStyle(color: Colors.black, fontSize: 15.sp)),
                    Text("60 tracks  ",
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp)),
                    Text("3 h 19 min",
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0.w, left: 5.w),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Playlist Tracks ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              InkWell(
                onTap: () {},
                child: Obx(
                  () => Container(
                    width: 90.w,
                    height: 4.h,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 1.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            mediaPlayerController.Played();
                          },
                          child: Container(
                            height: 5.h,
                            width: 9.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                color: Colors.black12),
                            child: Icon(
                              mediaPlayerController.isPlayed.value
                                  ? Icons.play_arrow
                                  : Icons.stop,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          height: 5.h,
                          width: 9.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Colors.black12,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 14.sp,
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "Bad Habbits",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Container(
                          height: 5.h,
                          width: 9.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Colors.black12,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                width: 90.w,
                color: kLightGray,
                child: Text(
                  "see more tracks",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0.h, left: 5.w),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Similar playlists ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                width: 85.w,
                color: Colors.grey,
                height: 45.h,
                child: Stack(children: [
                  PageView(
                    children: [
                      mediaPlayerController.screen.value == 0
                          ? Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/s1.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 85.w,
                                        height: 10.h,
                                        color: Colors.white.withOpacity(0.8),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.w, top: 3.h),
                                          child: Column(
                                            children: [
                                              Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: const Text(
                                                    "alt 50",
                                                    textAlign: TextAlign.start,
                                                  )),
                                              Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: const Text(
                                                    "50 tracks - 17 342 fans",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ))
                          : Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/s2.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 85.w,
                                        height: 10.h,
                                        color: Colors.white.withOpacity(0.8),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.w, top: 3.h),
                                          child: Column(
                                            children: [
                                              Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "TikTok Hits",
                                                    textAlign: TextAlign.start,
                                                  )),
                                              Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "80 tracks - 130 305 fans",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              )),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {
                                mediaPlayerController.setback();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 16.sp,
                              )),
                          SizedBox(
                            width: 45.w,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {
                                mediaPlayerController.screenChange();
                              },
                              child: Icon(Icons.navigate_next)),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                width: 90.w,
                color: kLightGray,
                child: Text(
                  "see more playlists",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        )));
  }
}
