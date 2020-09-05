import 'package:flutter/material.dart';
import 'package:neumorphic_dashboard/config/colors.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Fonkam's Wallet",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  boxShadow: AppColors.neumorpShadow,
                  color: AppColors.primaryWhite,
                  shape: BoxShape.circle),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: AppColors.neumorpShadow,
                          color: Colors.deepOrange,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          // boxShadow: AppColors.neumorpShadow,
                          color: AppColors.primaryWhite,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Center(
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            )
          ]),
    );
  }
}