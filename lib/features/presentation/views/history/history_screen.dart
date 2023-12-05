import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/data/local/history_list.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      title: 'فلسطين التاريخ',
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: ExpansionPanelList(
              elevation: AppSize.s2,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  historyList[index].expanded = isExpanded;
                });
              },
              animationDuration: const Duration(milliseconds: 100),
              children: [
                for (HistoryModel history in historyList)
                  ExpansionPanel(
                    canTapOnHeader: true,
                    backgroundColor: history.expanded == true
                        ? AppColors.nearWhiteGreen2
                        : AppColors.white,
                    headerBuilder: (_, isExpanded) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(history.title,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),

                    body: Container(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,right: 8.0,left: 8.0),
                        child: Text(history.body,style: TextStyle(
                          fontSize: 20,
                          color: AppColors.nearBlack,
                        ),),
                      ),
                    ),
                    isExpanded: history.expanded,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
