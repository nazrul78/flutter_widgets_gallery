import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_widget_gallery/src/helpers/app_theme_colors.dart';
import 'package:flutter_widget_gallery/src/pages/abc.dart';
import 'package:flutter_widget_gallery/src/pages/abc2.dart';
import 'package:flutter_widget_gallery/src/pages/list_view_page.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  bool isAppBarShow = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      // log('${_scrollController.positions} >>>>>>>>>>>');
      log('${_scrollController.position.maxScrollExtent} >>>>>>>>>>>');
      if (_scrollController.offset > 100) {
        setState(() {
          isAppBarShow = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isAppBarShow
          ? AppBar(
              title: Text(
                'Widgets Gallary',
                style: TextStyle(color: AppThemeColors.AppTextColor1),
              ),
              centerTitle: true,
              backgroundColor: AppThemeColors.AppBarColor1,
            )
          : null,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: AppThemeColors.AppBarColor1,
        child: AnimationLimiter(
          child: GridView.count(
            shrinkWrap: true,
            //  controller: _scrollController,
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
                              'Widgets Gallary',
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
    );
  }
}
