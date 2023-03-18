import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/accent_style.dart';

class LimitsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double percentage;

  const LimitsCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF3F6FF),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 202, 202, 202).withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //ini buat row section circle avatarnya
          Row(
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ]),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  child: Icon(
                    Icons.heart_broken_rounded,
                    size: 25,
                    color: Color.fromARGB(255, 19, 188, 218),
                  ),
                ),
              )
            ],
          ),
          const Gap(20),
          Text(
            title,
            style: Styles.headLineStyle2,
          ),
          const Gap(5),
          Text(
            subtitle,
            style: Styles.headLineStyle4.copyWith(fontSize: 12),
          ),
          const Gap(10),
          LinearPercentIndicator(
              addAutomaticKeepAlive: true,
              width: 120,
              animation: true,
              animationDuration: 1000,
              lineHeight: 7,
              percent: percentage,
              backgroundColor: Colors.grey.shade300,
              barRadius: Radius.circular(5),
              progressColor: primary),
        ],
      ),
    );
  }
}
