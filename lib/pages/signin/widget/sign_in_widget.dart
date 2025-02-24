import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey[300],
          height: 1,
        )),
    title: Text(
      "Login",
      style: TextStyle(color: Colors.black, fontSize: 16.sp),
    ),
    actions: const [],
  );
}

Widget buildThirdPartyLogin(BuildContext context) {
  return Center(
    child: Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _reusableIcons("google"),
          _reusableIcons("apple"),
          _reusableIcons("facebook"),
        ],
      ),
    ),
  );
}

Widget _reusableIcons(String iconName) {
  return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 40.w,
        width: 40.w,
        child: Image.asset("assets/icons/$iconName.png"),
      ));
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.normal),
    ),
  );
}

Widget buildTextField(
    {required String text,
    required String textType,
    required IconData icon,
    required BuildContext context}) {
  return Container(
    width: MediaQuery.sizeOf(context).width,
    height: 50.h,
    decoration: BoxDecoration(
      // color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 16.w,
          height: 16.w,
          child: Icon(icon),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.5,
          child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(color: Colors.grey[400]),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))),
            obscureText: textType == "email" ? false : true,
          ),
        )
      ],
    ),
  );
}

Widget forgotPaasowrd() {
  return InkWell(
    onTap: () {},
    child: Text(
      "Forgot Password?",
      style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue),
    ),
  );
}

Widget buildLoginAndRegisButton(
    {required String buttonName, required BuildContext context}) {
  return InkWell(
    onTap: () {},
    child: Container(
      alignment: Alignment.center,
      width: MediaQuery.sizeOf(context).width,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1),
                color: Colors.grey[300]!)
          ]),
      child: Text(
        buttonName,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.h),
      ),
    ),
  );
}
