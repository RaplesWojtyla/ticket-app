import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_styles_first.dart';
import 'package:ticket_app/base/widgets/text_styles_second.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  const TicketView({
    super.key,
    required this.ticket,
    this.wholeScreen = false
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: !wholeScreen ? 16 : 0),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21), topRight: Radius.circular(21)
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStylesFirst(text: ticket["from"]["code"]),

                      Expanded(child: Container()),

                      const BigDot(),
                      // Ticket flying icon
                      Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilder(randNum: 6),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.57,
                                  child: const Icon(Icons.local_airport_rounded, color: Colors.white)
                                )
                              )
                            ],
                          )
                      ),

                      const BigDot(),
                      Expanded(child: Container()),

                      TextStylesFirst(text: ticket["to"]["code"]),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStylesSecond(text: ticket["from"]["name"])
                      ),

                      Expanded(child: Container()),
                      TextStylesSecond(text: ticket["flying_time"]),
                      Expanded(child: Container()),

                      SizedBox(
                        width: 100,
                        child: TextStylesSecond(
                            text: ticket["to"]["name"],
                            alignment: TextAlign.end
                        ),
                      ),
                    ]
                  ),
                ],
              ),
            ),
            // Half circle and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutBuilder(randNum: 16, width: 6)
                  ),
                  BigCircle(isRight: true)
                ],
              ),
            ),
            // Orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)
                  )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: "Date"
                      ),

                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure Time",
                        crossAlignment: CrossAxisAlignment.center,
                      ),

                      AppColumnTextLayout(
                        topText: ticket["number"],
                        bottomText: "Number",
                        crossAlignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
