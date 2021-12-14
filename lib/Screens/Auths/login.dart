import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_errand/Widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                        indicatorColor: Color.fromRGBO(98, 82, 109, 1),
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: Color.fromRGBO(98, 82, 109, 0.5),
                        unselectedLabelStyle: TextStyle(fontSize: 14.sp),
                        labelColor: Color.fromRGBO(43, 41, 40, 0.85),
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(98, 82, 109, 1)),
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
                                    color: const Color.fromRGBO(98, 82, 109, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16.0.h),
                            child: TextFormField(
                              cursorColor: const Color.fromRGBO(239, 70, 35, 1),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontSize: 16.0.sp,
                                  color: const Color.fromRGBO(98, 82, 109, 0.5),
                                ),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.email,
                                  size: 24.0.sp,
                                  color: const Color.fromRGBO(98, 82, 109, 1),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0.sp,
                            color: const Color.fromRGBO(98, 82, 109, 0.5),
                          ),
                          FilledButton(),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 80.0.h, 0, 32.0),
                            child: Row(
                              children: const [
                                Expanded(
                                  child: Divider(
                                    thickness: 2.0,
                                  ),
                                ),
                                Text('Or sign up with'),
                                Expanded(
                                  child: Divider(
                                    thickness: 2.0,
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
                                margin: EdgeInsets.only(right: 6.w),
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
                                      margin: EdgeInsets.only(right: 8.0.w),
                                      child: const Icon(
                                        Icons.g_mobiledata_rounded,
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
                                      child: Icon(
                                        Icons.facebook_rounded,
                                        color: Colors.white,
                                        size: 24.0.sp,
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
                    Container(),
                    Container(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 124.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    BottomNav(text: 'Sign in'),
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
