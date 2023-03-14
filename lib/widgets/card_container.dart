import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/accent_style.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(60),
          Text(
            "AED 285.00",
            style: Styles.headLineStyle1.copyWith(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Gap(7),
          Text(
            "Education",
            style: Styles.headLineStyle4.copyWith(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          const Gap(30),
          Text(
            "CARD NO.",
            style: Styles.headLineStyle4.copyWith(color: Colors.white),
          ),
          const Gap(5),
          Text(
            "XXX XXX 541",
            style: Styles.headLineStyle2
                .copyWith(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}
