import 'package:flutter/material.dart';
import 'package:learning_flutter_web/common/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../common/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileContainer1(),
      desktop: (context) => desktopContainer1(),
    );
  }

  Widget mobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: w! / 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Track your \nExpenses to \nSave money',
            textAlign: TextAlign.center,
            style: TextStyle(
              
              fontSize: w! / 16,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Helps you to organize your income and expenses',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColors.primary),
              ),
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down),
              label: const Text('Try free Demo'),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '- Web, iOs and Android',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: w! / 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave money',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primary),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down),
                        label: const Text('Try free Demo'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      '- Web, iOs and Android',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain),
              ),
            ),
          )
        ],
      ),
    );
  }
}
