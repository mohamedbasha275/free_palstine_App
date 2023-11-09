import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.5,
      margin: EdgeInsets.only(bottom: 10), // to make space for the arrow
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor.withOpacity(0.75),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          20.heightSizedBox,
          Text(
            'المستويات',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontSize: FontSize.s22,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _userCard(context,current: 1,next: 2,color: Colors.yellow,locked: false),
                  _userCard(context,current: 2,next: 3,color: Colors.yellow),
                  _userCard(context,current: 3,next: 4,color: Colors.yellow),
                  _userCard(context,current: 4,next: 5,color: Colors.yellow),
                  _userCard(context,current: 1,next: 2,color: Colors.orangeAccent),
                  _userCard(context,current: 2,next: 3,color: Colors.orangeAccent),
                ],
              ),
            ),
          ),
          20.heightSizedBox,
        ],
      ),
    );
  }

  Widget _userCard(BuildContext context,{required int current,required int next,required Color color,
    bool locked = true}) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(10),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i = 0; i<current;i++)
                Icon(Icons.star,color: color),
              10.widthSizedBox,
              Icon(Icons.arrow_forward_sharp,color: Theme.of(context).secondaryHeaderColor),
              10.widthSizedBox,
              for(int i = 0; i<next;i++)
                Icon(Icons.star,color: color),
            ],
          ),
          10.heightSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(locked)
              Icon(Icons.lock,color: Theme.of(context).secondaryHeaderColor),
              15.widthSizedBox,
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
