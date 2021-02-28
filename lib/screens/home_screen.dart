import 'package:flutter/material.dart';
import 'package:mat3am_app/screens/drawer/my_drawer.dart';
import 'package:mat3am_app/screens/product/product_screen.dart';
import 'package:mat3am_app/shared/components.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var drawerKey = GlobalKey<ScaffoldState>();
  var searchController = TextEditingController();
  var myProductList = [
    {
      'product_id': '1',
      'product_name': 'product1',
      'product_image': 'images/product/pro1.jpg',
      'product_desc': 'this is a dummy data for testing',
    },
    {
      'product_id': '2',
      'product_name': 'product2',
      'product_image': 'images/product/pro2.jpg',
      'product_desc': 'this is a dummy data for testing',
    },
    {
      'product_id': '3',
      'product_name': 'product3',
      'product_image': 'images/product/pro3.jpg',
      'product_desc': 'this is a dummy data for testing',
    },
  ];
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
      key: drawerKey,
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'توصيل الطلب الى',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'الموقع الحالى',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    drawerKey.currentState.openDrawer();
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      controller: searchController,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontWeight: FontWeight.w400),
                          hintText: 'ابحث عن وجية',
                          suffixIcon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return SingleCategory(
                      cat_id: myCategoryList[i]['cat_id'],
                      cat_name: myCategoryList[i]['cat_name'],
                      cat_image: myCategoryList[i]['cat_image']);
                },
                itemCount: myCategoryList.length,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, i) {
                  return SingleProduct(
                      product_id: myProductList[i]['product_id'],
                      product_name: myProductList[i]['product_name'],
                      product_image: myProductList[i]['product_image'],
                      product_desc: myProductList[i]['product_desc']);
                },
                itemCount: myProductList.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 30.0,),
            label: 'الاشعارات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu,size: 30.0,),
            label: 'العروض',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 30.0,),
            label: 'حسابى',
          ),
        ],
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  String product_id;
  String product_name;
  String product_image;
  String product_desc;

  SingleProduct(
      {@required this.product_id,
      @required this.product_name,
      @required this.product_image,
      @required this.product_desc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navPush(context, ProductScreen());
      },
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(product_image),
              ),
            ),
          ),
          Text(
            product_name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Text(
            product_desc,
            style: TextStyle(color: Colors.grey),
          ),
        ],
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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.red[100]),
          child: Image.asset(cat_image),
        ),
        Text(
          cat_name,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
