import 'package:someone_datingapp/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  final String email;
  String username;
  String name;
  String phoneNumber;
  String profilePic;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.profilePic,
  });

  String get formattedPhoneNumber => SFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(name) {
    return name.split(' ');
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'name': name,
      'phoneNumber': phoneNumber,
      'profilePic': profilePic,
    };
  }
}
