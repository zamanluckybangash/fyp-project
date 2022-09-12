import 'package:final_year_project/ui/custom_widget/custom_container.dart';
import 'package:final_year_project/ui/custom_widget/custom_invoice_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: kGreyColor,
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
                      icon: const Icon(Icons.arrow_back)
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.h, left: 15.w),
                    child: Text('Invoice',
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
                          hintText: 'invoice no',
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
                      itemCount: 4,
                      itemBuilder: (BuildContext contex, int index){
                        return Padding(
                          padding: EdgeInsets.only(top: 12.0.h),
                          child: const CustomInvoiceContainer(),
                        );
                      }
                      )
                ],
              ),
            ),
          ),
        ));
  }
}
