import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollViewController = ScrollController();
  bool _showAppbar = true;
  bool isScrollingDown = false;

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              height: _showAppbar ? 256.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: AppBar(
                title: Text('Scroll Demo'),
                actions: <Widget>[
                  //add buttons here
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollViewController,
                child: Column(
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
                    //add your screen content here
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
}
