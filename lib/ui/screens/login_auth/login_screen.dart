import 'package:final_year_project/ui/screens/welcome_screen/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widget/background_design.dart';
import '../../custom_widget/custom_elevatd_button.dart';
import '../../custom_widget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const BackgroundDesign(),
              Form(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 30.w,
                        right: 30.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipOval(child: Image.asset("assets/login.png")),
                          Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp

                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomTextField(
                            onSaved: (email) {
                            },
                            lable: 'Email',
                            obscureText: false,
                            textInputType: TextInputType.emailAddress,
                            suffixIcon: Icon(Icons.email_outlined),
                          ),
                          CustomTextField(
                            onSaved: (password) {
                            },
                            lable: 'Password',
                            obscureText: true,
                            textInputType: TextInputType.visiblePassword,
                          ),

                          CustomElevatedButton(
                            buttonText: 'Login',
                            onPressed: () async {
                              // Get.to(const RootScreen());
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }

                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return HomeScreen();
                              }));
                            },
                            borderRadiusGeometry:
                            BorderRadius.circular(10.0.r),
                          ),

                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
