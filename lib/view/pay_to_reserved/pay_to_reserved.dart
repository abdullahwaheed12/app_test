import 'package:App_Test/constants/app_images.dart';
import 'package:App_Test/utils/math_utils.dart';
import 'package:App_Test/widgets/app_widgets/scaffold_widget.dart';
import 'package:App_Test/widgets/empty_space_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayToReservedScreen extends StatelessWidget {
  const PayToReservedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      useAppbar: false,
      child: Column(
        children: [
          Container(
            // width: 413,
            height: 100,
            padding: const EdgeInsets.only(top: 50, left: 20),
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFEFEFEF)),
              ),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios),
                Spacer(),
                Column(
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
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'March 5, 2021  ',
                            style: TextStyle(
                              color: Color(0xFF61C3F2),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                            ),
                          ),
                          TextSpan(
                            text: 'I',
                            style: TextStyle(
                              color: Color(0x7F61C3F2),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                            ),
                          ),
                          TextSpan(
                            text: '  12:30 hall 1',
                            style: TextStyle(
                              color: Color(0xFF61C3F2),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Spacer()
              ],
            ),
          ),
          const DynamicVerticalSpace(60),
          Stack(
            children: [
              SvgPicture.asset(AppImages.screenSVG),
              Positioned(
                left: size.width / 2.5,
                top: 10,
                child: const Text(
                  'SCREEN',
                  style: TextStyle(
                    color: Color(0xFF8F8F8F),
                    fontSize: 8,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.60,
                  ),
                ),
              )
            ],
          ),
          //seats
          //row 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(55),
                for (int i = 0; i < 2; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 2; i < 16; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 16; i < 18; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(40),
              ],
            ),
          ),
          //2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(25),
                for (int i = 18; i < 22; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 22; i < 36; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 36; i < 40; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(12),
              ],
            ),
          ),
          //3
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(25),
                for (int i = 40; i < 44; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 44; i < 58; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(12),
              ],
            ),
          ),
          //4
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(25),
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 14; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(12),
              ],
            ),
          ),
          //5
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '5',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(14),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 14; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
              ],
            ),
          ),
          //6
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '6',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(14),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 14; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
              ],
            ),
          ),
          //7
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(14),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 14; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
              ],
            ),
          ),
          //8
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '8',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(14),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 14; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
              ],
            ),
          ),
          //9
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 2.69,
                  height: 6.73,
                  child: Text(
                    '9',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(14),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 14; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
              ],
            ),
          ),
          //10
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 6.73,
                  child: Text(
                    '10',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 5.38,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ),
                const DynamicHorizontalSpace(14),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 14; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
                const DynamicHorizontalSpace(10),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(AppImages.seatSVG),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
