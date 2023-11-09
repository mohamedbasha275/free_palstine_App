// name
String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'يجب إدخال الاسم';
  }
  if (value.length < 6) {
    return 'الاسم يجب أن يحتوي على 6 أحرف على الأقل';
  }
  return null;
}
// name
String? validateShortName(String? value) {
  if (value == null || value.isEmpty) {
    return 'يجب إدخال الاسم';
  }
  if (value.length < 3) {
    return 'الاسم يجب أن يحتوي على 3 أحرف على الأقل';
  }
  return null;
}
// message
String? validateMessage(String? value) {
  if (value == null || value.isEmpty) {
    return 'يجب إدخال الرسالة';
  }
  if (value.length < 10) {
    return 'الرسالة يجب أن تحتوي على 10 أحرف على الأقل';
  }
  return null;
}
// email
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'يجب إدخال البريد الإلكتروني';
  }
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return 'البريد الإلكتروني غير صحيح';
  }
  return null;
}
// password
String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'يجب إدخال كلمة المرور';
  }
  if (value.length < 6) {
    return 'كلمة المرور يجب أن تحتوي على 6 أحرف على الأقل';
  }
  return null;
}
// validateConfirmPassword
String? validateConfirmPassword(String? value, {required String password}) {
  if(value != password){
    return 'يجب أن يكون كلمة المرور متطابقة';
  }
  return null;
}

// positive
String? validatePositiveNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a value';
  }
  final number = int.tryParse(value);
  if (number == null) {
    return 'Please enter a valid number';
  }
  if (number < 0) {
    return 'Please enter a positive number';
  }
  return null;
}
