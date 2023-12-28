import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'luck_bloc.dart';
import 'luck_event.dart';
import 'luck_state.dart';

class HomeScreenBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LuckBloc(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Eight Ball Challenge App',
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
                BlocBuilder<LuckBloc, LuckState>(
                  builder: (context, state) {
                    if (state is InitialLuckState || state is NewLuckState) {
                      return Stack(
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
                                    Radius.circular(55),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    state.luckyNumber.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Container(); // Placeholder for other states
                    }
                  },
                ),
                SizedBox(height: 20.h),
                Text(
                  context.select((LuckBloc bloc) => bloc.state.luckyText),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    context.read<LuckBloc>().add(ChangeLuckEvent());
                    print('testing');
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
      ),
    );
  }
}
