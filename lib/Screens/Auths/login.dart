import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_errand/Widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_errand/Config/config.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40.0.h, 16.0.w, 0),
                  child: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Container(
              child: Text(
                'Log into your account',
                style: TextStyle(
                    fontSize: 20.0.sp,
                    color: const Color.fromRGBO(98, 82, 109, 0.85)),
              ),
            ),
            Container(
              height: 470.h,
              margin: EdgeInsets.fromLTRB(17.0.w, 48.0.h, 16.0.w, 0),
              child: Container(
                child: Column(
                  children: [
                    InputField(
                      text: 'Email',
                      hasIcon: true,
                      icon: 'Assets/Icons/Email Icon.svg',
                      onTapSuffix: () {},
                    ),
                    Divider(
                      thickness: 1.0.sp,
                      color: const Color.fromRGBO(98, 82, 109, 0.5),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 32.h),
                      child: InputField(
                        text: 'Password',
                        hasIcon: true,
                        icon: 'Assets/Icons/Password Icon 2.svg',
                        suffixText: 'Show',
                        onTapSuffix: () {},
                      ),
                    ),
                    Divider(
                      thickness: 1.0.sp,
                      color: const Color.fromRGBO(98, 82, 109, 0.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 24.h,
                          width: 120.w,
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  width: 1.0, color: Palette.faintText)),
                          margin: EdgeInsets.fromLTRB(0, 16.h, 0, 24.h),
                          child: Text(
                            'Forgot password',
                            style: TextStyle(
                                fontSize: 13.0.sp, color: Palette.boldLetter),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 24.h),
                        child: const FilledButton()),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 80.0.h, 0, 32.0),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              thickness: 1.0,
                              color: Palette.bodyTextColor,
                            ),
                          ),
                          Text('Or log in with'),
                          Expanded(
                            child: Divider(
                              thickness: 1.0,
                              color: Palette.bodyTextColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 168.0.w,
                          height: 40.h,
                          margin: EdgeInsets.only(right: 6.0.w),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0.w,
                              color: const Color.fromRGBO(98, 82, 109, 0.5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                margin: EdgeInsets.only(right: 8.0.w),
                                child: SvgPicture.asset(
                                  'Assets/Icons/Google 1.svg',
                                  width: 24.0.w,
                                  height: 24.0.h,
                                ),
                              ),
                              Text(
                                'Google',
                                style: TextStyle(fontSize: 16.0.sp),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 168.0.w,
                          height: 40.h,
                          color: const Color.fromRGBO(77, 111, 169, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 8.0.w),
                                child: SvgPicture.asset(
                                  'Assets/Icons/facebook.svg',
                                  width: 20.w,
                                  height: 20.h,
                                ),
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 124.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomNav(
                    text1: 'Don\'t have an account? ',
                    text: 'Create one',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
