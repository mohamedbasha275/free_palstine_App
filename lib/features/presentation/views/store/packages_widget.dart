import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class PackagesWidget extends StatelessWidget {
  const PackagesWidget({super.key});
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
            'الباقات',
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
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // CircleAvatar(
          //   radius: 30,
          //   backgroundColor: Colors.pink,
          //   child: CircleAvatar(
          //     radius: 27,
          //     backgroundImage: AssetImage('assets/images/boy.png'),
          //   ),
          // ),
          Center(
            child: Column(
              children: [
                Text('لايت 2X',style: Theme.of(context).textTheme.labelMedium,),
                CircleAvatar(radius: 30,child: Image.asset('assets/images/package.png')),
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
          ),
          2.heightSizedBox,
          Align(
            child: Row(
              children: [
                Text('1 س',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: FontSize.s12,
                  color: Theme.of(context).splashColor,
                )),
                3.widthSizedBox,
                Icon(Icons.timer_sharp,size: 12,color: Theme.of(context).secondaryHeaderColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
