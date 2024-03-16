import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fuel_gold_calculator/Screens/Fuel%20Expenses%20Calculator.dart';
import 'package:fuel_gold_calculator/Screens/Gold%20Price%20Calculator.dart';
import 'package:fuel_gold_calculator/Widgets/Text.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculation extends StatefulWidget {
  const Calculation({super.key});

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.yellowAccent[100],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: AppText(
                          text: "Fuel & Gold Calculator",
                          size: 25,
                          weight: FontWeight.bold,
                          textcolor: Colors.red)),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange[200]),
                      child: TabBar(
                        tabs: [
                          Tab(
                            child: Text("Fuel",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          Tab(
                            child: Text("Gold",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                          ),
                        ],
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.orange),
                        dividerColor: Colors.transparent,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.orange,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                  ),
                  const Expanded(
                      child:
                          TabBarView(children: [Fuel_Expenses(), Gold_Price()]))
                ],
              ),
            ),
          ),
        ));
  }
}
