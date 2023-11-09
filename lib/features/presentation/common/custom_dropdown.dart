import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class CustomDropDown extends StatelessWidget {
  final Function? function;
  final String selectedOption;
  final List<Map<String,String>> itemsList;

  const CustomDropDown({
    required this.function,
    required this.selectedOption,
    required this.itemsList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p4),
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).primaryColorDark),
        color: Theme.of(context).splashColor,
        borderRadius:
        BorderRadius.circular(AppPadding.p8),
      ),
      child: DropdownButton<String>(
        value: selectedOption,
        alignment: Alignment.center,
        underline: Container(),
        icon: Icon(
          Icons.arrow_drop_down,
          color: Theme.of(context).secondaryHeaderColor,
          size: AppSize.s30,
        ),
        hint: Text(AppStrings.search),
        borderRadius: BorderRadius.circular(AppSize.s10),
        onChanged: function != null ? function!() : null,
        items: [
          for(var item in itemsList)
          DropdownMenuItem<String>(
            value: item['value'],
            alignment: Alignment.centerRight,
            child: Text(item['name']!,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(
                  fontFamily:
                  FontConstants.iBMFontFamily,
                  fontSize: 12,
                )),
          ),
        ],
      ),
    );
  }
}
