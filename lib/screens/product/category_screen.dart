import 'package:flutter/material.dart';
import 'package:mat3am_app/screens/home_screen.dart';
import 'package:mat3am_app/screens/product/subcategory_screen.dart';
import 'package:mat3am_app/shared/components.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var myCategoryList = [
    {
      'cat_id': '1',
      'cat_name': 'cat1',
      'cat_image': 'images/category/cat1.png'
    },
    {
      'cat_id': '2',
      'cat_name': 'cat2',
      'cat_image': 'images/category/cat2.png'
    },
    {
      'cat_id': '3',
      'cat_name': 'cat3',
      'cat_image': 'images/category/cat3.png'
    },
    {
      'cat_id': '4',
      'cat_name': 'cat4',
      'cat_image': 'images/category/cat4.png'
    },
    {
      'cat_id': '5',
      'cat_name': 'cat5',
      'cat_image': 'images/category/cat5.png'
    },
    {
      'cat_id': '6',
      'cat_name': 'cat6',
      'cat_image': 'images/category/cat6.png'
    },
    {
      'cat_id': '7',
      'cat_name': 'cat7',
      'cat_image': 'images/category/cat7.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'قائمه الماكولات',
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
            return SingleCategory(
                cat_id: myCategoryList[i]['cat_id'],
                cat_name: myCategoryList[i]['cat_name'],
                cat_image: myCategoryList[i]['cat_image']);
          },
          itemCount: myCategoryList.length,
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  String cat_id;
  String cat_name;
  String cat_image;

  SingleCategory(
      {@required this.cat_id,
      @required this.cat_name,
      @required this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.red[100]),
            child: Image.asset(cat_image),
          ),
          title: Text(
            cat_name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            navPush(
              context,
              SubCategoryScreen(
                cat_name: cat_name,
                cat_id: cat_id,
              ),
            );
          },
        ),
        Divider(),
      ],
    );
  }
}
