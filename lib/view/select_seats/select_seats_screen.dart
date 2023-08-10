import 'package:App_Test/services/navigation_service.dart';
import 'package:App_Test/utils/math_utils.dart';
import 'package:App_Test/view/pay_to_reserved/pay_to_reserved.dart';
import 'package:App_Test/view/select_seats/widgets/date_card.dart';
import 'package:App_Test/view/select_seats/widgets/day_card.dart';
import 'package:flutter/material.dart';

import 'package:App_Test/widgets/app_widgets/scaffold_widget.dart';
import 'package:App_Test/widgets/empty_space_widget.dart';

class SelectSeatsScreen extends StatelessWidget {
  const SelectSeatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      useAppbar: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            padding: const EdgeInsets.only(top: 50, left: 20),
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFEFEFEF)),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      NavigationService.pop();
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      'The King’s Man',
                      style: TextStyle(
                        color: Color(0xFF202C43),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                      ),
                    ),
                    Text(
                      'In theaters december 22, 2021',
                      style: TextStyle(
                        color: Color(0xFF61C3F2),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                      ),
                    )
                  ],
                ),
                const Spacer()
              ],
            ),
          ),
          const DynamicVerticalSpace(60),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Date'),
                const DynamicVerticalSpace(14),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SelectSeatsDateCard(
                        text: '5 Mar',
                        isSelected: true,
                      ),
                      SelectSeatsDateCard(
                        text: '6 Mar',
                        isSelected: false,
                      ),
                      SelectSeatsDateCard(
                        text: '7 Mar',
                        isSelected: false,
                      ),
                      SelectSeatsDateCard(
                        text: '8 Mar',
                        isSelected: false,
                      ),
                      SelectSeatsDateCard(
                        text: '9 Mar',
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                const DynamicVerticalSpace(45),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //1
                      SelectSeatDayCard(isSelected: true),
                      DynamicHorizontalSpace(10),
                      SelectSeatDayCard(
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    NavigationService.push(const PayToReservedScreen());
                  },
                  child: Container(
                    width: size.width,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF61C3F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Select Seats',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.43,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                const DynamicVerticalSpace(26)
              ],
            ),
          )),
        ],
      ),
    );
  }
}
