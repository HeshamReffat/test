import 'package:flutter/material.dart';
import 'package:mat3am_app/screens/tips/tips.dart';
import 'package:mat3am_app/shared/components.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/tip0.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5.0,
                    blurRadius: 7.0,
                    offset: Offset(0, 3)),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اشهى الماكولات',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    'افضل الماكولات تجدونها فى مطعمنا،العديد من الماكولات لدينا',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white
                    ),
                    child: MaterialButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {
                        navPushUntil(context, Tips());
                      },
                      child: Text('ابدأ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
