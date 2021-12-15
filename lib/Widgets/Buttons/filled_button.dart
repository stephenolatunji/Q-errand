import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_errand/Config/config.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.93,
      height: 40.0.h,
      decoration: BoxDecoration(
        gradient: Palette.buttonGradient,
        borderRadius: BorderRadius.circular(24),
        color: Colors.deepPurple,
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              offset: Offset.zero,
              blurRadius: 2,
              spreadRadius: 2)
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: Text('Continue',
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(255, 255, 255, 1),
            )),
        onPressed: () {},
      ),
    );
  }
}
