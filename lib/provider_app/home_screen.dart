import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'luck_provider.dart';

class HomeScreenProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the provider
    final luck = Provider.of<LuckProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Eight Ball Challange App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   '${luck.luckyNumber}',
              //   style: TextStyle(),
              // ),
              Stack(
                children: [
                  Image.asset(
                    'assets/8ball.jpg',
                    scale: 2,
                  ),
                  Positioned(
                    right: 0.0,
                    left: 0.0,
                    top: 70.h,
                    child: Center(
                      child: Container(
                        height: 110.h,
                        width: 110.w,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ), // Makes it circular
                        ),
                        child: Center(
                          child: Text(
                            luck.luckyNumber.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 90.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text('${luck.luckyText}'),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  luck.changeLuck();
                  print('Button Tap');
                },
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Text(
                      'See your Luck!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
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
