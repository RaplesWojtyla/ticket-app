import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.tabsColor,
      ),
      child: const Row(
        children: [
          AppTabs(tabText: "Airline Tickets"),
          AppTabs(tabText: "Hotels", isLeft: false, tabColor: false)
        ],
      ),
    );
  }
}
