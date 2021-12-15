import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_errand/Config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputField extends StatelessWidget {
  final String text;
  final String icon;
  final bool hasIcon;
  final String suffixText;
  final Function() onTapSuffix;
  const InputField({
    Key? key,
    this.text = '',
    this.hasIcon = false,
    this.icon = '',
    this.suffixText = '',
    required this.onTapSuffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        cursorColor: const Color.fromRGBO(239, 70, 35, 1),
        decoration: InputDecoration(
            // isDense: true,
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 16.0.sp,
              color: Palette.faintText,
            ),
            border: InputBorder.none,
            prefixIconConstraints:
                BoxConstraints(maxHeight: 24.0.h, maxWidth: 24.0.w),
            prefixIcon: hasIcon
                ? SvgPicture.asset(
                    icon,
                    width: 24.w,
                    height: 24.h,
                  )
                : null,
            suffix: InkWell(
              child: Text(
                suffixText,
                style: TextStyle(
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w600,
                    color: Palette.boldLetter),
              ),
              onTap: onTapSuffix,
            )),
      ),
    );
  }
}
