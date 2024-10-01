import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStylesSecond extends StatelessWidget {
  final String text;
  final TextAlign alignment;

  const TextStylesSecond({
    super.key,
    required this.text,
    this.alignment = TextAlign.start
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: AppStyles.headLineStyle4.copyWith(
          color: Colors.white
      ),
    );
  }
}
