import 'package:flutter/material.dart';
import 'package:neumorphic_dashboard/config/colors.dart';
import 'package:neumorphic_dashboard/config/size.dart';
import 'package:neumorphic_dashboard/widgets/card_details.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'Selected Card',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    width: SizeConfig.getWidth(context),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        boxShadow: AppColors.neumorpShadow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned.fill(
                            top: -150,
                            bottom: -570,
                            child: Container(
                              // child: null,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white38,
                                  boxShadow: AppColors.neumorpShadow),
                            )),
                        Positioned.fill(
                            left: -300,
                            top: -100,
                            bottom: -100,
                            child: Container(
                              // child: null,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white24,
                                  boxShadow: AppColors.neumorpShadow),
                            )),
                        CardDetails(),
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}
