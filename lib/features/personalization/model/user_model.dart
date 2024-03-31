import 'package:someone_datingapp/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  final String email;
  String username;
  String firstName;
  String lastName;
  String phoneNumber;
  String profilePic;

  UserModel({
    required this.id,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.profilePic,
  });

  String get formattedPhoneNumber => SFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(name) {
    return name.split(' ');
  }

  static UserModel empty() => UserModel(
        id: '',
        email: '',
        username: '',
        firstName: '',
        lastName: '',
        phoneNumber: '',
        profilePic: '',
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'profilePic': profilePic,
    };
  }
}
