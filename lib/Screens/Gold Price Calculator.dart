import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/Container.dart';
import '../Widgets/Text form field.dart';
import '../Widgets/Text.dart';

class Gold_Price extends StatefulWidget {
  const Gold_Price({super.key});

  @override
  State<Gold_Price> createState() => _Gold_PriceState();
}

class _Gold_PriceState extends State<Gold_Price> {
  double goldWeight = 0.0;
  double goldPurity = 0.0;
  double goldPrice = 0.0;
  String calculationMethod = 'gram';
  double estimatedValue = 0.0;
  double makingcharge = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20).r,
        child: ListView(
          children: [
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                    text: 'Gold Weight',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                Row(
                  children: [
                    AppTextForm(
                      focusColor: Colors.orange,
                      enableColor: Colors.yellow,
                      onChanged: (value) {
                        setState(() {
                          goldWeight = double.parse(value);
                        });
                      },
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      height: 40.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.orange.withOpacity(0.3),
                                blurRadius: 5.0,
                                offset: const Offset(0.3, 3.0)),
                          ],
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: DropdownButton(
                          underline: Container(),
                          value: calculationMethod,
                          items: ['gram', 'ounce'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              calculationMethod = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                    text: 'Gold Purity',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                AppTextForm(
                  focusColor: Colors.orange,
                  enableColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      goldPurity = double.parse(value);
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                    text: 'Current Gold Price',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                AppTextForm(
                  focusColor: Colors.orange,
                  enableColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      goldPrice = double.parse(value);
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                    text: 'Making Charge',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                AppTextForm(
                  focusColor: Colors.orange,
                  enableColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      makingcharge = double.parse(value);
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: [
                AppText(
                    text: 'Estimated Value',
                    size: 18,
                    weight: FontWeight.bold,
                    textcolor: Colors.black),
                SizedBox(
                  height: 10.h,
                ),
                AppText(
                    text: '₹ $estimatedValue',
                    size: 30.sp,
                    weight: FontWeight.bold,
                    textcolor: Colors.red),
                SizedBox(height: 30.h),
                InkWell(
                    onTap: () {
                      setState(() {
                        estimatedValue = calculationMethod == 'gram'
                            ? goldWeight *
                                (goldPurity / 24) *
                                goldPrice +(makingcharge*goldWeight)
                            : (goldWeight * 31.1035) *
                                (goldPurity / 24) *
                                goldPrice +(makingcharge*goldWeight);
                      });
                    },
                    child: AppContainer(text: "Calculate")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
