import 'package:flutter/material.dart';

extension NonNullString on String? {
  String get orEmpty => this ?? '';
}

extension NonNullInteger on int? {
  int get orZero => this ?? 0;
}

extension Sized on int {
  Widget get heightSizedBox => SizedBox(height: double.parse('$this'));
  Widget get widthSizedBox => SizedBox(width: double.parse('$this'));
}

extension MediaQueryValue on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get topPadding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
}
