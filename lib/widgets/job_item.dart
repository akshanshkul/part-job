// job_item.dart

import 'package:flutter/material.dart';

class JobItem extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String description;

  const JobItem({
    Key? key,
    required this.title,
    required this.company,
    required this.location,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Company: $company'),
          Text('Location: $location'),
        ],
      ),
      onTap: () {
        // Handle job item tap (e.g., navigate to job detail screen)
      },
    );
  }
}
