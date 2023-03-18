import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/accent_style.dart';

class CashBack extends StatelessWidget {
  final String title;
  final String percentage;
  final bool isColor;

  const CashBack(
      {super.key,
      required this.title,
      required this.percentage,
      required this.isColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: isColor == null
                  ? Color.fromARGB(255, 129, 80, 80)
                  : Color(0xffFEEBDD),
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Styles.headLineStyle2,
                ),
                Text(
                  percentage,
                  style: Styles.headLineStyle4,
                )
              ],
            ),
            const Gap(100),
            Row(
              children: [
                Text("AED 1000.00",
                    style: Styles.headLineStyle4
                        .copyWith(color: Colors.grey.shade600)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
