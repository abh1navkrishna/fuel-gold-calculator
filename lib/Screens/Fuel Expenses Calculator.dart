import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fuel_gold_calculator/Widgets/Container.dart';
import 'package:fuel_gold_calculator/Widgets/Text%20form%20field.dart';
import 'package:fuel_gold_calculator/Widgets/Text.dart';

class Fuel_Expenses extends StatefulWidget {
  const Fuel_Expenses({super.key});

  @override
  State<Fuel_Expenses> createState() => _Fuel_ExpensesState();
}

class _Fuel_ExpensesState extends State<Fuel_Expenses> {
  // Fuel Calculator variables

  double mileage = 0.0;
  double distance = 0.0;
  int workdays = 0;
  double fuelCost = 0.0;
  double monthlyFuelExpenses = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20).r,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                    text: 'Mileage',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                AppTextForm(
                  focusColor: Colors.orange,
                  enableColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      mileage = double.parse(value);
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
                    text: 'Distance to Workplace (km)',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                AppTextForm(
                  focusColor: Colors.orange,
                  enableColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      distance = double.parse(value);
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
                    text: 'Number of Workdays',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                AppTextForm(
                  focusColor: Colors.orange,
                  enableColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      workdays = int.parse(value);
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
                    text: 'Fuel Cost',
                    size: 15,
                    weight: FontWeight.w500,
                    textcolor: Colors.black),
                AppTextForm(
                  focusColor: Colors.orange,
                  enableColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      fuelCost = double.parse(value);
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Column(
              children: [
                AppText(
                    text: 'Monthly Fuel Expenses',
                    size: 18,
                    weight: FontWeight.bold,
                    textcolor: Colors.black),
                SizedBox(
                  height: 10.h,
                ),
                AppText(
                    text: '₹ $monthlyFuelExpenses',
                    size: 30,
                    weight: FontWeight.bold,
                    textcolor: Colors.red),
                SizedBox(height: 30.h),
                InkWell(
                    onTap: () {
                      setState(() {
                        monthlyFuelExpenses =
                            (distance * fuelCost * 2 * workdays) / mileage;
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
