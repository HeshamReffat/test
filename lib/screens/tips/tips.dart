import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///C:/Users/Alexander/Desktop/mat3am/mat3am_app/lib/screens/account/login/login_screen.dart';
import 'file:///C:/Users/Alexander/Desktop/mat3am/mat3am_app/lib/screens/account/register/register_screen.dart';
import 'package:mat3am_app/shared/components.dart';
import 'package:page_indicator/page_indicator.dart';

class Tips extends StatelessWidget {
  var pages = [
    {
      'title': 'ابحث عن الماكولات التى تحبها',
      'info': 'افضل الاطعمه تجدها لدينا من هنا يمكنك البدء',
      'image': 'images/tip1.png',
    },
    {
      'title': 'ابحث عن الماكولات التى تحبها',
      'info': 'افضل الاطعمه تجدها لدينا من هنا يمكنك البدء',
      'image': 'images/tip2.png',
    },
    {
      'title': 'ابحث عن الماكولات التى تحبها',
      'info': 'افضل الاطعمه تجدها لدينا من هنا يمكنك البدء',
      'image': 'images/tip3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: PageIndicatorContainer(
                  shape: IndicatorShape.circle(),
                  child: PageView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        return SingleTips(
                          title: pages[index]['title'],
                          info: pages[index]['info'],
                          image: pages[index]['image'],
                        );
                      }),
                  length: pages.length,
                  align: IndicatorAlign.bottom,
                  indicatorColor: Colors.white,
                  indicatorSelectorColor: Colors.red,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  defaultButton(
                    containerColor: Colors.red,
                    onPress: () {
                      navPush(
                        context,
                        RegisterScreen(),
                      );
                    },
                    title: 'انشاء حساب',
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.facebookF),
                          SizedBox(
                            width: 40.0,
                          ),
                          Text(
                            'متابعه باستخدام الفبس بوك',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                'هل لديك حساب؟',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(
                width: 15.0,
              ),
              InkWell(
                onTap: () {
                  navPushUntil(context, LoginScreen());
                },
                child: Text(
                  'دخول',
                  style: TextStyle(fontSize: 20, color: Colors.red,fontWeight: FontWeight.bold),
                ),),
            ],
          ),
        ],
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  String title;
  String info;
  String image;

  SingleTips({@required this.title, @required this.info, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.red, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          info,
          style: TextStyle(
              color: Colors.grey, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 70.0,
        ),
      ],
    );
  }
}
