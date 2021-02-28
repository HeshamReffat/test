import 'package:flutter/material.dart';
import 'file:///C:/Users/Alexander/Desktop/mat3am/mat3am_app/lib/screens/account/login/login_screen.dart';
import 'package:mat3am_app/shared/components.dart';
class ForgetPasswordScreen extends StatelessWidget {
  var emailController = TextEditingController();
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
                        navPushUntil(context, LoginScreen());
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
                      'نسيت كلمة المرور ',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                SizedBox(height:10.0),
                Text('برجاء ادخال البريد الالكتروى لارسال رابط انشاء كلمةالمرور الجديده',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.right,),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  isPassword: false,
                  controller: emailController,
                  hint: 'البريد الالكترونى',
                ),
                SizedBox(
                  height: 30.0,
                ),
                defaultButton(
                    onPress: () {},
                    title: 'ارسال',
                    textColor: Colors.white,
                    containerColor: Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
