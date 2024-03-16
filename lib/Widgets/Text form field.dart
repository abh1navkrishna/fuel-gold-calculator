import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextForm extends StatelessWidget {
  const AppTextForm({
    super.key,
    required this.focusColor,
    required this.enableColor,
    this.onChanged,

  });

  final Color focusColor;
  final Color enableColor;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 100.w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.orange.withOpacity(0.3),
            blurRadius: 5.0,
            offset: const Offset(0.3, 3.0)),
      ]),
      child: TextFormField(
        // controller: controller,
        onChanged: onChanged,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            filled: true,
            focusColor: Colors.red,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focusColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: enableColor),
            ),
            border: const OutlineInputBorder()),
      ),
    );
  }
}
