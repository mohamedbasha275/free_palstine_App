import 'package:free_palestine/features/presentation/views/profile/profile_tool_tip.dart';
import 'package:flutter/material.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey containerKey1 = GlobalKey();
    final GlobalKey containerKey2 = GlobalKey();
    final GlobalKey containerKey3 = GlobalKey();
    final GlobalKey containerKey4 = GlobalKey();
    return SizedBox(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            key: containerKey1,
            onTap: () => profileToolTip(context,containerKey1,label: 'المركز الأول',percent: 20),
            child: Container(
              width: 20 / 100 * 320,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          GestureDetector(
            key: containerKey2,
            onTap: () => profileToolTip(context,containerKey2,label: 'المركز الثاني',percent: 30),
            child: Container(
              width: 30 / 100 * 320,
              color: Colors.blue,
            ),
          ),
          GestureDetector(
            key: containerKey3,
            onTap: () => profileToolTip(context,containerKey3,label: 'المركز الثالث',percent: 10),
            child: Container(
              width: 10 / 100 * 320,
              color: Colors.yellow,
            ),
          ),
          GestureDetector(
            key: containerKey4,
            onTap: () => profileToolTip(context,containerKey4,label: 'المركز الرابع',percent: 40),
            child: Container(
              width: 40 / 100 * 320,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
