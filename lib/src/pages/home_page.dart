import 'package:flutter/material.dart';
import 'package:flutter_widget_gallery/src/pages/list_view_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Gallary'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: SizedBox(
          height: 50,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              //  final item = countries[index];
              return Center(
                child: InkWell(
                  onTap: () => Get.to(ListViewPage()),
                  child: Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Text('List View Example'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
