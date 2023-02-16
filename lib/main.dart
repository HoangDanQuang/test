import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context , child) {
        return MaterialApp(
          home: child,
        );
      },
      child: const OTPPage(),
    );
  }
}

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => OTPPageState();
}

class OTPPageState extends State<OTPPage> {
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    focusNodes = List.generate(4, (index) => FocusNode());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    for (int i = 0; i < focusNodes.length; i++) {
      focusNodes[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.h,),
              Container(
                child: Image.asset('assets/images/background.png'),
              ),
              SizedBox(height: 60.h,),
              Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(height: 18.h,),
              Text(
                'Enter the OPT send to: +84938478323',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 73.h,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(4, 
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: SizedBox(
                        width: 60.w,
                        child: TextFormField(
                          focusNode: focusNodes[index],
                          textAlign: TextAlign.center,
                          initialValue: '0',
                          style: TextStyle(
                            fontSize: 32.sp,
                          ),
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Colors.black), 
                            ),
                          ),
                        ),
                      ),
                    )
                  ),
                  
                  
                ],
              ),
              SizedBox(height: 80.h),
              SizedBox(
                height: 64.h,
                width: 400.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'VERIFY',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white
                      )
                    ),
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
