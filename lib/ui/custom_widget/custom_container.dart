import 'package:final_year_project/core/constant/colors.dart';
import 'package:final_year_project/ui/screens/invoice_screen/invoice_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return InvoiceScreen();
          }));
        },
        child: Container(
          width: 376.w,
          height: 130.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: kWhiteColor
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 10.0.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 55.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.r),
                        color: Colors.black
                      ),
                      child: Center(child: Text("React",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500
                        ),
                      )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0.h, left: 15.w),
                      child: Column(
                        children: [
                          Text("RM Mobile",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14.sp
                          ),
                          ),
                          SizedBox(height: 5.h,),
                          Text("Peshawar",
                              style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                          )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0.h, left: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.blueGrey,
                      ),
                      child: Center(
                        child: Text('60 invoices'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0.w),
                      child: Text('12450/-'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
