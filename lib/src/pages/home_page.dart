import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_widget_gallery/src/helpers/app_theme_colors.dart';
import 'package:flutter_widget_gallery/src/pages/abc2.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  bool isScrollingDown = false;
  bool isAppBarShow = true;
  double bottomBarHeight = 60;
  int currentIndex = 0;
  final countries = [
    'LATEST',
    'TOP RANKING',
    'REVIEWS',
    'OTHERS',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          isAppBarShow = false;
          setState(() {});
        }
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          isAppBarShow = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: isAppBarShow
      //     ? AppBar(
      //         title: Text(
      //           'Widgets Gallary',
      //           style: TextStyle(color: AppThemeColors.AppTextColor1),
      //         ),
      //         centerTitle: true,
      //         backgroundColor: AppThemeColors.AppBarColor1,
      //       )
      //     : null,

      // bottomNavigationBar: AnimatedContainer(
      //   height: isAppBarShow ? bottomBarHeight : 0.0,
      //   duration: Duration(milliseconds: 200),
      //   //  height: bottomBarHeight,
      //   width: Get.width,
      //   child: isAppBarShow
      //       ? BottomNavigationBar(
      //           onTap: (value) {
      //             setState(() {
      //               currentIndex = value;
      //             });
      //           },
      //           currentIndex:
      //               currentIndex, // this will be set when a new tab is tapped
      //           items: [
      //             BottomNavigationBarItem(
      //               label: 'Home',
      //               tooltip: 'Profile',
      //               icon: Icon(Icons.home),
      //               activeIcon: Icon(
      //                 Icons.home,
      //                 size: 30,
      //                 // color: Colors.redAccent,
      //               ),
      //             ),
      //             BottomNavigationBarItem(
      //               label: 'Home',
      //               tooltip: 'Profile',
      //               icon: Icon(Icons.person),
      //               activeIcon: Icon(
      //                 Icons.person,
      //                 size: 30,
      //                 // color: Colors.redAccent,
      //               ),
      //             ),
      //             BottomNavigationBarItem(
      //               label: 'Search',
      //               icon: Icon(Icons.search),
      //               activeIcon: Icon(
      //                 Icons.search,
      //                 size: 30,
      //                 // color: Colors.redAccent,
      //               ),
      //             )
      //           ],
      //         )
      //       : Container(
      //           color: Colors.white,
      //           width: Get.width,
      //         ),
      // ),

      bottomNavigationBar: AnimatedContainer(
        color: AppThemeColors.AppBgColor2,
        height: isAppBarShow ? 80.0 : 0.0,
        width: Get.width,
        duration: Duration(milliseconds: 200),
        child:

            // BottomNavigationBar(
            //   onTap: (value) {
            //     setState(() {
            //       currentIndex = value;
            //     });
            //   },
            //   currentIndex:
            //       currentIndex, // this will be set when a new tab is tapped
            //   items: [
            //     BottomNavigationBarItem(
            //       label: 'Home',
            //       tooltip: 'Profile',
            //       icon: Icon(Icons.home),
            //       activeIcon: Icon(
            //         Icons.home,
            //         size: 30,
            //         // color: Colors.redAccent,
            //       ),
            //     ),
            //     BottomNavigationBarItem(
            //       label: 'Home',
            //       tooltip: 'Profile',
            //       icon: Icon(Icons.person),
            //       activeIcon: Icon(
            //         Icons.person,
            //         size: 30,
            //         // color: Colors.redAccent,
            //       ),
            //     ),
            //     BottomNavigationBarItem(
            //       label: 'Search',
            //       icon: Icon(Icons.search),
            //       activeIcon: Icon(
            //         Icons.search,
            //         size: 30,
            //         // color: Colors.redAccent,
            //       ),
            //     )
            //   ],
            // )

            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              size: 50,
            ),
            Icon(
              Icons.home,
              size: 50,
            ),
            Icon(
              Icons.home,
              size: 50,
            ),
            Icon(
              Icons.home,
              size: 50,
            ),
          ],
        ),

        // AppBar(
        //   backgroundColor: AppThemeColors.AppBarColor1,
        //   centerTitle: true,
        //   title: Text(
        //     'Widgets Gallery',
        //     style: TextStyle(
        //         fontSize: 40, color: AppThemeColors.AppTextColor1),
        //   ),
        // ),
      ),

      // bottomNavigationBar: isAppBarShow
      //     ? Container(
      //         height: bottomBarHeight,
      //         width: Get.width,
      //         child: BottomNavigationBar(
      //           onTap: (value) {
      //             setState(() {
      //               currentIndex = value;
      //             });
      //           },
      //           currentIndex:
      //               currentIndex, // this will be set when a new tab is tapped
      //           items: [
      //             BottomNavigationBarItem(
      //               label: 'Home',
      //               tooltip: 'Profile',
      //               icon: Icon(Icons.home),
      //               activeIcon: Icon(
      //                 Icons.home,
      //                 size: 30,
      //                 // color: Colors.redAccent,
      //               ),
      //             ),
      //             BottomNavigationBarItem(
      //               label: 'Home',
      //               tooltip: 'Profile',
      //               icon: Icon(Icons.person),
      //               activeIcon: Icon(
      //                 Icons.person,
      //                 size: 30,
      //                 // color: Colors.redAccent,
      //               ),
      //             ),
      //             BottomNavigationBarItem(
      //               label: 'Search',
      //               icon: Icon(Icons.search),
      //               activeIcon: Icon(
      //                 Icons.search,
      //                 size: 30,
      //                 // color: Colors.redAccent,
      //               ),
      //             )
      //           ],
      //         ),
      //       )
      //     : null,

      body: SafeArea(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
                color: AppThemeColors.AppBarColor1,
                height: isAppBarShow ? 80.0 : 0.0,
                duration: Duration(milliseconds: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Widgets Gallery',
                      style: TextStyle(
                          fontSize: 40, color: AppThemeColors.AppTextColor1),
                    ),
                  ],
                )

                // AppBar(
                //   backgroundColor: AppThemeColors.AppBarColor1,
                //   centerTitle: true,
                //   title: Text(
                //     'Widgets Gallery',
                //     style: TextStyle(
                //         fontSize: 40, color: AppThemeColors.AppTextColor1),
                //   ),
                // ),
                ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              color: AppThemeColors.AppBarColor1,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: countries.length,
                itemBuilder: (context, index) {
                  final item = countries[index];
                  return Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                          color: index == 1
                              ? AppThemeColors.AppBgColor1
                              : AppThemeColors.AppTextColor1,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 2, color: AppThemeColors.AppBgColor1)),
                      child: Text(item,
                          style: TextStyle(
                              color: AppThemeColors.AppTextColor2,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                color: AppThemeColors.AppBarColor1,
                child: AnimationLimiter(
                  child: GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    controller: _scrollController,
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    physics: BouncingScrollPhysics(),
                    children: List.generate(
                      100,
                      (int index) {
                        return AnimationConfiguration.staggeredGrid(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          columnCount: 3,
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: InkWell(
                                onTap: () => Get.to(HomeScreen()),
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: AppThemeColors.AppBarColor1,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: AppThemeColors.AppTextColor1)),
                                  child: Center(
                                    child: Text(
                                      'Widgets Gallery',
                                      style: TextStyle(
                                          color: AppThemeColors.AppTextColor1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                // SizedBox(
                //   // height: 50,
                //   child: ListView.builder(
                //     physics: BouncingScrollPhysics(),
                //     // scrollDirection: Axis.horizontal,
                //     itemCount: 10,
                //     itemBuilder: (context, index) {
                //       //  final item = countries[index];
                //       return Center(
                //         child: InkWell(
                //           onTap: () => Get.to(ListViewPage()),
                //           child: Container(
                //             margin: EdgeInsets.only(left: 5, right: 5),
                //             padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                //             decoration: BoxDecoration(
                //                 color: AppThemeColors.AppBarColor1,
                //                 borderRadius: BorderRadius.circular(15)),
                //             child: Text('List View Example',
                //                 style: TextStyle(color: AppThemeColors.AppTextColor1)),
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ),
            ),
            // AnimatedContainer(
            //   height: isAppBarShow ? bottomBarHeight : 0.0,
            //   duration: Duration(milliseconds: 200),
            //   //  height: bottomBarHeight,
            //   width: Get.width,
            //   child: BottomNavigationBar(
            //     onTap: (value) {
            //       setState(() {
            //         currentIndex = value;
            //       });
            //     },
            //     currentIndex:
            //         currentIndex, // this will be set when a new tab is tapped
            //     items: [
            //       BottomNavigationBarItem(
            //         label: 'Home',
            //         tooltip: 'Profile',
            //         icon: Icon(Icons.home),
            //         activeIcon: Icon(
            //           Icons.home,
            //           size: 30,
            //           // color: Colors.redAccent,
            //         ),
            //       ),
            //       BottomNavigationBarItem(
            //         label: 'Home',
            //         tooltip: 'Profile',
            //         icon: Icon(Icons.person),
            //         activeIcon: Icon(
            //           Icons.person,
            //           size: 30,
            //           // color: Colors.redAccent,
            //         ),
            //       ),
            //       BottomNavigationBarItem(
            //         label: 'Search',
            //         icon: Icon(Icons.search),
            //         activeIcon: Icon(
            //           Icons.search,
            //           size: 30,
            //           // color: Colors.redAccent,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
