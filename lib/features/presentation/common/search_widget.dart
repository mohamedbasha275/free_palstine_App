import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function? function;
  final String label;

  const SearchWidget({
    required this.function,
    required this.controller,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s350,
      height: AppSize.s60,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: const Icon(
              Icons.search,
              size: 25,
            ),
            prefixIconColor: Colors.grey,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(12),
          ),
          onChanged: function != null ? function!() : null,
        ),
      ),
    );
  }
}
