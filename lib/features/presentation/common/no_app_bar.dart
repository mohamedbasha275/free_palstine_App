import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class NoAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const NoAppBar({Key? key, this.preferredSize = const Size.fromHeight(AppSize.s0)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: AppSize.s0,
    );
  }
}
