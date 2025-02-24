import 'dart:developer';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning/main.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_bloc.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_events.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_states.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(body: BlocBuilder<WelcomeBloc, WelcomeStates>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 34.h),
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    context.read<WelcomeBloc>().add(WelcomeEvents());
                    state.page = value;
                    log(state.page.toString());
                  },
                  children: [
                    _page(
                        button: "Next",
                        index: 1,
                        context: context,
                        title: "First See Learning",
                        image: "assets/images/reading.png",
                        desc:
                            "Forget aboaut a for of paper all knowledge in one learning"),
                    _page(
                        button: "Next",
                        index: 2,
                        context: context,
                        title: "Connect With Everyone",
                        image: "assets/images/boy.png",
                        desc:
                            "Always keep in touch with your tutor & friend. Let's get connected!"),
                    _page(
                        button: "Get Started",
                        index: 3,
                        context: context,
                        title: "First See Learning",
                        image: "assets/images/man.png",
                        desc:
                            "Forget aboaut a for of paper all knowledge in one learning"),
                  ],
                ),
                Positioned(
                    bottom: 65.h,
                    child: DotsIndicator(
                      position: state.page.toDouble(),
                      mainAxisAlignment: MainAxisAlignment.center,
                      dotsCount: 3,
                      decorator: DotsDecorator(
                          activeSize: Size(18.0, 8.0),
                          color: Colors.grey,
                          activeColor: Colors.blue),
                    ))
              ],
            ),
          );
        },
      )),
    );
  }

  Column _page({
    required int index,
    required BuildContext context,
    required String title,
    required String desc,
    required String image,
    required String button,
  }) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Image.asset(image, width: 400,fit: BoxFit.cover,),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            textAlign: TextAlign.center,
            desc,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        const SizedBox(
          height: 100.0,
        ),
        GestureDetector(
          onTap: () {
            log('message');
            if(index < 3){
              pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
            log('message2');
            }else{
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: "title"),));
              Navigator.of(context).pushNamedAndRemoveUntil("signIn", (route) => false,);
            }
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 20,
                  offset: Offset(0, 10))
            ], color: Colors.blue, borderRadius: BorderRadius.circular(15.w)),
            child: Text(
              textAlign: TextAlign.center,
              button,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
        )
      ],
    );
  }
}
