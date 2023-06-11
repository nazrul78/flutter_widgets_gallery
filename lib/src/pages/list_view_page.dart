import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final countries = [
      'Bangladesh',
      'India',
      'Benin',
      'Central African Republic',
      'Eritrea',
      'Hungary'
    ];
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
            itemCount: countries.length,
            itemBuilder: (context, index) {
              final item = countries[index];
              return Center(
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(item),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
