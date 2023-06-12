import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  bool _showAppbar = true;
  ScrollController _scrollBottomBarController = new ScrollController();
  bool isScrollingDown = false;
  bool _show = true;
  double bottomBarHeight = 75;
  double _bottomBarOffset = 0;

  @override
  void initState() {
    super.initState();
    myScroll();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollBottomBarController.removeListener(() {});
    super.dispose();
  }

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          hideBottomBar();
        }
      }
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          showBottomBar();
        }
      }
    });
  }

  Widget containterContent() {
    return Container(
      height: 50.0,
      color: Colors.cyanAccent,
      margin: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width - 100,
      child: Center(
          child: Text(
        'Item 1',
        style: TextStyle(
          fontSize: 14.0,
        ),
      )),
    );
  }

  Widget body() {
    return ListView(
      controller: _scrollBottomBarController,
      children: <Widget>[
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
        containterContent(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showAppbar
          ? AppBar(
              title: Text('My Tasks'),
            )
          : PreferredSize(
              child: Container(),
              preferredSize: Size(0.0, 0.0),
            ),
      bottomNavigationBar: Container(
        height: bottomBarHeight,
        width: Get.width,
        child: _show
            ? BottomNavigationBar(
                currentIndex: 0, // this will be set when a new tab is tapped
                items: [
                  BottomNavigationBarItem(
                    label: 'dsfgbs',
                    icon: new Icon(Icons.home),
                    activeIcon: new Text('Home'),
                  ),
                  BottomNavigationBarItem(
                    label: 'dsfgbs',
                    icon: new Icon(Icons.mail),
                    activeIcon: new Text('Messages'),
                  ),
                  BottomNavigationBarItem(
                      label: 'dsfgbs',
                      icon: Icon(Icons.person),
                      activeIcon: Text('Profile'))
                ],
              )
            : Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
              ),
      ),
      body: body(),
    );
  }
}
