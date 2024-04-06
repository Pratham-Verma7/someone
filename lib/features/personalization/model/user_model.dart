import 'package:someone_datingapp/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  final String email;
  String username;
  String fullName;
  final int stars;
  final String bio;
  final String phoneNumber;
  String profileUrl;

  UserModel({
    required this.stars,
    required this.bio,
    required this.id,
    required this.email,
    required this.username,
    required this.fullName,
    required this.phoneNumber,
    required this.profileUrl,
  });

  String get formattedPhoneNumber => SFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(name) {
    return name.split(' ');
  }

  static UserModel empty() => UserModel(
        id: '',
        email: '',
        username: '',
        fullName: '',
        phoneNumber: '',
        profileUrl: '',
        bio: '',
        stars: 0,
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'profilePic': profileUrl,
      'bio': bio,
      'stars': stars,
    };
  }
}
