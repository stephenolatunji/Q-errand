import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_errand/Config/palette.dart';
import 'package:quick_errand/Widgets/widgets.dart';
import 'package:quick_errand/Config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _textCaseColor = Palette.boldLetter;
  var _textLengthColor = Palette.boldLetter;
  var _textSymbolColor = Palette.boldLetter;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                  'Create your account',
                  style: TextStyle(
                      fontSize: 20.0.sp,
                      color: const Color.fromRGBO(98, 82, 109, 0.85)),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(17.0.w, 32.0.h, 16.0.w, 0),
                child: Column(
                  children: [
                    TabBar(
                        indicatorWeight: 2.0.sp,
                        labelPadding: EdgeInsets.only(right: 5.0.w),
                        indicatorPadding: EdgeInsets.only(right: 10.0.w),
                        indicatorColor: Palette.primaryColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: Palette.faintText,
                        unselectedLabelStyle: TextStyle(fontSize: 14.sp),
                        labelColor: Palette.boldLetter,
                        labelStyle: const TextStyle(color: Palette.boldLetter),
                        tabs: const [
                          Tab(
                            text: 'Email',
                          ),
                          Tab(
                            text: 'Personal Details',
                          ),
                          Tab(
                            text: 'Password',
                          )
                        ])
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(17.0.w, 56.0.h, 16.0.w, 0),
                height: 400.h,
                child: TabBarView(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  'What\'s your email?',
                                  style: TextStyle(
                                    fontSize: 24.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Palette.boldLetter,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                              margin: EdgeInsets.only(top: 64.h),
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
                                Text('Or sign up with'),
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
                                    color:
                                        const Color.fromRGBO(98, 82, 109, 0.5),
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
                                          height: 24.0.h),
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
                                          color: Colors.white,
                                          fontSize: 14.0.sp),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'What\'s your name?',
                                style: TextStyle(
                                  fontSize: 24.0.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Palette.boldLetter,
                                  // letterSpacing: -1.5,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 8.0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 16.h, 16.w, 0),
                                  width: 146.w,
                                  child: InputField(
                                    text: 'Firstname',
                                    hasIcon: true,
                                    icon: 'Assets/Icons/User Icon.svg',
                                    onTapSuffix: () {},
                                  ),
                                ),
                                Container(
                                  width: 146.w,
                                  margin: EdgeInsets.only(top: 16.h),
                                  child: InputField(
                                    text: 'Lastname',
                                    hasIcon: false,
                                    onTapSuffix: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0.h,
                            color: Palette.faintText,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 56.0.h),
                            child: Row(
                              children: [
                                Text(
                                  'What\'s your phone number?',
                                  style: TextStyle(
                                    fontSize: 24.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Palette.boldLetter,
                                    // letterSpacing: -1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 300,
                                margin: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                                child: InputField(
                                  hasIcon: true,
                                  text: 'Your number',
                                  icon: 'Assets/Icons/Telephone.svg',
                                  onTapSuffix: () {},
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0.h,
                            color: Palette.faintText,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 64.h),
                            child: const FilledButton(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  'Create your password',
                                  style: TextStyle(
                                    fontSize: 24.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Palette.boldLetter,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          InputField(
                            text: 'Password',
                            hasIcon: true,
                            icon: 'Assets/Icons/Password Icon 2.svg',
                            suffixText: 'Show',
                            onTapSuffix: () {},
                          ),
                          Divider(
                            thickness: 1.0.sp,
                            color: const Color.fromRGBO(98, 82, 109, 0.5),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16.0.h),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        '. Upper and lowercase letter',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: _textCaseColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                        0,
                                        4.0.h,
                                        0,
                                        4.0.h,
                                      ),
                                      child: Text(
                                        '. 8 or more characters',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: _textLengthColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        '. Contains a number or symbol',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: _textSymbolColor),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40.h),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16.w),
                                  child: InkWell(
                                    child: SvgPicture.asset(
                                        'Assets/Icons/Checkboxb.svg'),
                                  ),
                                ),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                        text:
                                            'By checking this box, you agree to our ',
                                        style: TextStyle(
                                            fontSize: 14.0.sp,
                                            color: Palette.bodyTextColor),
                                        children: [
                                          TextSpan(
                                              text: 'Terms of Service ',
                                              style: TextStyle(
                                                fontSize: 14.0.sp,
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                              children: const [
                                                TextSpan(
                                                    text: 'and ',
                                                    children: [
                                                      TextSpan(
                                                        text: 'Privacy Policy',
                                                        style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                      )
                                                    ]),
                                              ]),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 56.0.h),
                            child: const FilledButton(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 124.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BottomNav(
                      text1: 'Already have an account? ',
                      text: 'Sign in',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
