// user.dart

class User {
  final String id;
  final String name;
  final String email;
  final String profilePicUrl;
  final String resumeUrl;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePicUrl,
    required this.resumeUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      profilePicUrl: json['profilePicUrl'],
      resumeUrl: json['resumeUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePicUrl': profilePicUrl,
      'resumeUrl': resumeUrl,
    };
  }
}
