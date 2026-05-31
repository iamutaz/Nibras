import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

class QuestionBox extends StatelessWidget {
  const QuestionBox({
    super.key,
    required this.question,
  });

  final String question;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/31.png',
          width: 108,
          height: 121,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                height:72 ,
                width: 240,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.mainYellow,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Text(
                  question,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.2,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0A0A0A),
                  ),
                ),
              ),
Positioned(
  left: -25,
  top: 80,
  child: Transform.rotate(
    angle: 3.14,
    child: Icon(
      Icons.play_arrow_rounded,
      size: 50,
       color: AppColors.mainYellow,
    ),
  ),
),
            ],
          ),
        ),
      ],
    );
  }
}