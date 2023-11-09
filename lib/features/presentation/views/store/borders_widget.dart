import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class BordersWidget extends StatelessWidget {
  const BordersWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10), // to make space for the arrow
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor.withOpacity(0.75),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          20.heightSizedBox,
          Text(
            'إطارات',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontSize: FontSize.s22,
            ),
          ),
          20.heightSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _userCard(context),
              _userCard(context),
              _userCard(context),
            ],
          ),
          20.heightSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _userCard(context),
              _userCard(context),
              _userCard(context),
            ],
          ),
          20.heightSizedBox,
        ],
      ),
    );
  }

  Widget _userCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).canvasColor,
            Theme.of(context).indicatorColor,
          ],
        ),
      ),
      child: Column(
        children: [
          // CircleAvatar(
          //   radius: 30,
          //   backgroundColor: Colors.pink,
          //   child: CircleAvatar(
          //     radius: 27,
          //     backgroundImage: AssetImage('assets/images/boy.png'),
          //   ),
          // ),
          CircleAvatar(radius: 30,child: Image.asset('assets/images/boy.png')),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  '15',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: FontSize.s16,
                  ),
                ),
              ),
              5.widthSizedBox,
              Image.asset('assets/images/dollar.png'),
            ],
          ),
        ],
      ),
    );
  }
}
