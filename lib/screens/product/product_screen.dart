import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mat3am_app/screens/cart/cart_screen.dart';
import 'package:mat3am_app/shared/components.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // textDirection: TextDirection.rtl,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('images/product/pro1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    bottom: 5.0,
                    left: 0.0,
                    right: 0.0,
                    top: 0.0,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: buildIconButton(
                              height: 35.0,
                              width: 35.0,
                              iconSize: 14.0,
                              icon: FontAwesomeIcons.minus,
                              containerColor: Colors.orangeAccent,
                              shadowColor: Colors.transparent,
                              iconColor: Colors.white,
                              pressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '1 Kg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            child: buildIconButton(
                              height: 35.0,
                              width: 35.0,
                              iconSize: 14.0,
                              icon: FontAwesomeIcons.plus,
                              containerColor: Colors.orangeAccent,
                              shadowColor: Colors.transparent,
                              iconColor: Colors.white,
                              pressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        'سمك مشوى',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: [
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 30.0,
                                color: Colors.red,
                              ),
                              Text(
                                '5',
                                style: TextStyle(fontSize: 16.0),
                              )
                            ],
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(
                                Icons.star,
                                size: 30.0,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                '35 Review',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'd;sadhiwhqioqwhd;asdsdnklsahdsakjfjsafgnvjldhvdiohvoeihfoiqdsalkdhoaidhwoiqhfjfasldkj',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        'موعد الوصول',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Icon(
                            Icons.alarm,
                            color: Colors.deepOrange,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '20-30',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            'دقيقة',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Spacer(),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: FlatButton(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Text(
                                'شاهد فيديو',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: 120.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: buildIconButton(
                        height: 45.0,
                        width: 45.0,
                        icon: Icons.arrow_back_ios_rounded,
                        containerColor: Colors.white,
                        iconColor: Colors.red,
                        shadowColor: Colors.grey[100],
                        pressed: () {}),
                  ),
                  Container(
                    child: buildIconButton(
                        height: 45.0,
                        width: 45.0,
                        icon: Icons.shopping_cart,
                        containerColor: Colors.white,
                        shadowColor: Colors.grey[100],
                        iconColor: Colors.red,
                        pressed: () {navPush(context, CartScreen());}),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.red[400],
                Colors.red[500],
              ],
          ),
          borderRadius: BorderRadius.circular(40.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100],
              spreadRadius: 7.0,
              blurRadius: 4.0,
              offset: Offset(0, 3.0),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ 50.68',
                style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.shopping_basket,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.red[400],
                        ),
                        FlatButton(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Text(
                            'اضافة الى السلة',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIconButton({
    @required icon,
    @required iconColor,
    @required shadowColor,
    @required containerColor,
    @required Function pressed,
    iconSize,
    height = 50.0,
    width = 50.0,
  }) {
    return Row(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: containerColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 7.0,
                spreadRadius: 3.0,
                color: shadowColor,
                offset: Offset(0, 3.0),
              ),
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            onPressed: pressed,
            icon: Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ),
      ],
    );
  }
}
