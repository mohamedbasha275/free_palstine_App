class AuthModel {
  final String firstName;
  final String lastName;
  final String email;
  AuthModel({
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
    );
  }
}