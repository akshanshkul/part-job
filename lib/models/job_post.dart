// job_post.dart

class JobPost {
  final String id;
  final String title;
  final String company;
  final String location;
  final String description;

  JobPost({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    required this.description,
  });

  factory JobPost.fromJson(Map<String, dynamic> json) {
    return JobPost(
      id: json['id'],
      title: json['title'],
      company: json['company'],
      location: json['location'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'company': company,
      'location': location,
      'description': description,
    };
  }
}
