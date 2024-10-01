import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_styles_first.dart';
import 'package:ticket_app/base/widgets/text_styles_second.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment crossAlignment;

  const AppColumnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    this.crossAlignment = CrossAxisAlignment.start
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlignment,
      children: [
        TextStylesFirst(text: topText),
        const SizedBox(height: 5),
        TextStylesSecond(text: bottomText),
      ],
    );
  }
}
