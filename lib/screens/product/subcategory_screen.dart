import 'package:flutter/material.dart';
import 'package:mat3am_app/screens/home_screen.dart';
import 'package:mat3am_app/shared/components.dart';

class SubCategoryScreen extends StatefulWidget {
  String cat_name;
  String cat_id;

  SubCategoryScreen({this.cat_name, this.cat_id});

  @override
  _SubCategoryScreenState createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  var myCategoryList = [
    {
      'cat_id': '1',
      'cat_name': 'cat1',
      'cat_image': 'images/category/cat1.png',
      'cat_count': '10',
    },
    {
      'cat_id': '2',
      'cat_name': 'cat2',
      'cat_image': 'images/category/cat2.png',
      'cat_count': '10',
    },
    {
      'cat_id': '3',
      'cat_name': 'cat3',
      'cat_image': 'images/category/cat3.png',
      'cat_count': '12',
    },
    {
      'cat_id': '4',
      'cat_name': 'cat4',
      'cat_image': 'images/category/cat4.png',
      'cat_count': '4',
    },
    {
      'cat_id': '5',
      'cat_name': 'cat5',
      'cat_image': 'images/category/cat5.png',
      'cat_count': '8',
    },
    {
      'cat_id': '6',
      'cat_name': 'cat6',
      'cat_image': 'images/category/cat6.png',
      'cat_count': '9',
    },
    {
      'cat_id': '7',
      'cat_name': 'cat7',
      'cat_image': 'images/category/cat7.png',
      'cat_count': '5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.cat_name,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          itemBuilder: (ctx, i) {
            return subCategory(
              subID: myCategoryList[i]['cat_id'],
              subName: myCategoryList[i]['cat_name'],
              subImage: myCategoryList[i]['cat_image'],
              subCount: myCategoryList[i]['cat_count'],
            );
          },
          itemCount: myCategoryList.length,
        ),
      ),
    );
  }

  Widget subCategory({
    String subID,
    String subName,
    String subImage,
    String subCount,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.transparent),
            child: Image.asset(subImage),
          ),
          title: Text(
            subName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subCount),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        Divider(),
      ],
    );
  }
}
