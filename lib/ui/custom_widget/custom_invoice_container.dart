import 'package:final_year_project/core/constant/colors.dart';
import 'package:final_year_project/ui/screens/product_screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInvoiceContainer extends StatelessWidget {
  const CustomInvoiceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const Product();
          }));
        },
        child: Container(
          width: 376.w,
          height: 100.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: kWhiteColor
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 15.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("invoice no",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          )
                      ),
                      SizedBox(width: 5.h,),
                      Text("756",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14.sp
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 150.0.w),
                        child: Text("15/12/2022",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
                Container(
                  width: 100.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: kGreyColor,
                  ),
                  child: Center(
                    child: Text('60 invoices'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
