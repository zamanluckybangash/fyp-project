import 'package:final_year_project/core/constant/colors.dart';
import 'package:final_year_project/ui/custom_widget/custom_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 26.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)
                 ),
                Padding(
                  padding: EdgeInsets.only(left: 31.0.w),
                  child: Text('Welcome',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 31.0.w),
                  child: Text('John Doe',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                SizedBox(height: 25.h,),
                Container(
                  width: 414.w,
                  height: 600.h,
                  color: kGreyColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 20.0.w),
                        child: Text('Select Shop',
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12.h),
                            filled: true,
                            fillColor: kLightColor,
                            //fillColor: homePrimaryColor,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                             prefixIcon: const Icon(Icons.search)
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, int index){

                            return Padding(
                              padding: EdgeInsets.only(top: 15.0.h),
                              child: const CustomContainer(),
                            );
                          }
                          ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
