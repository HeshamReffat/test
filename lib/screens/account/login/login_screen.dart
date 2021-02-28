import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Alexander/Desktop/mat3am/mat3am_app/lib/screens/account/forgetpassword/forget_password_screen.dart';
import 'package:mat3am_app/screens/tips/tips.dart';
import 'package:mat3am_app/shared/components.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    InkWell(
                      onTap: () {
                        navPushUntil(context, Tips());
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  isPassword: false,
                  controller: emailController,
                  hint: 'البريد الالكترونى',
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                  isPassword: false,
                  controller: passwordController,
                  hint: 'كلمة المرور',
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(
                      onPressed: () {
                        navPushUntil(context, ForgetPasswordScreen());
                      },
                      child: Text(
                        'نسيت كلمة المرور؟',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 30.0,
                ),
                defaultButton(
                    onPress: () {},
                    title: 'تسجيل',
                    textColor: Colors.white,
                    containerColor: Colors.red),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      'ليس لديك حساب؟',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'انشاء حساب',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
