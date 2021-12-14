import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNav extends StatelessWidget {
  final String text;
  const BottomNav({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        key: key,
        child: RichText(
          text: TextSpan(
            text: 'Already have an account? ',
            style: TextStyle(
              fontSize: 16.0.sp,
              color: const Color.fromRGBO(98, 82, 109, 1),
            ),
            children: [
              TextSpan(
                text: text,
                style: TextStyle(
                  fontSize: 16.0.sp,
                  color: const Color.fromRGBO(98, 82, 109, 1),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
