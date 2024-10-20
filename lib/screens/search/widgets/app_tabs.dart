import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool isLeft;
  final bool tabColor;

  const AppTabs({
    super.key,
    required this.tabText,
    this.isLeft = true,
    this.tabColor = true
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor ? Colors.white : Colors.transparent,
          borderRadius: isLeft
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child: Center(child: Text(tabText)),
    );
  }
}
