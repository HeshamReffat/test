import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffFF0000);

navPushUntil(context, screen) => Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => screen),
      (route) => false,
    );

navPush(context, screen) => Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => screen),
    );

Widget defaultFormField(
    {@required controller, @required String hint, @required bool isPassword}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(color: Colors.grey[300])),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        obscureText: isPassword,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.black, fontSize: 16.0),
            hintText: hint,
            border: InputBorder.none),
        controller: controller,
      ),
    ),
  );
}

Widget defaultButton({@required Function onPress,@required String title,@required Color textColor,@required Color containerColor , IconData icon}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: containerColor, borderRadius: BorderRadius.circular(20.0)),
    child: MaterialButton(
      onPressed: onPress,
      child: Text(
         title,
        style: TextStyle(color: textColor, fontSize: 20.0),
      ),
    ),
  );
}
