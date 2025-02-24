import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning/pages/signin/widget/sign_in_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildThirdPartyLogin(context),
            Center(child: reusableText("Or use your email account to login")),
            Container(
              margin: EdgeInsets.only(top: 60.h),
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  reusableText("Email"),
                  buildTextField(
                      icon: Icons.person,
                      text: "Enter your email address",
                      textType: "enail",
                      context: context),
                  const SizedBox(
                    height: 20.0,
                  ),
                  reusableText("Password"),
                  buildTextField(
                      icon: Icons.lock,
                      text: "Enter your password",
                      textType: "password",
                      context: context),
                      const SizedBox(
                        height: 10.0,
                      ),
                      forgotPaasowrd(),
                      const SizedBox(
                        height: 30.0,
                      ),
                      buildLoginAndRegisButton(context: context, buttonName: "Login"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      buildLoginAndRegisButton(context: context, buttonName: "Register"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
