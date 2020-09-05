import 'package:flutter/material.dart';
import 'package:neumorphic_dashboard/config/colors.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              width: 200,
              child: Image.asset(
                'assets/mastercardlogo.png',
              )),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      boxShadow: AppColors.neumorpShadow,
                      borderRadius: BorderRadius.circular(15))),
            )),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text("**** **** *** ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("1934",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
                Text('PLATINUM CARD',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
