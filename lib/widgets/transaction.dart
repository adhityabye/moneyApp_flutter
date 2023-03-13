import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/accent_style.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color.fromARGB(255, 247, 183, 221),
          child: Icon(Icons.money, color: Colors.white),
        ),
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Electronic Product",
              style: Styles.headLineStyle2,
            ),
            const Gap(5),
            Text("10 Apr, 08.37 AM",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
          ],
        ),
        const Gap(60),
        Text(
          "- AED 200.00",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
