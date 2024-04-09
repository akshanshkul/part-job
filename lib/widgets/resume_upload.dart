// resume_upload_button.dart

import 'package:flutter/material.dart';

class ResumeUploadButton extends StatelessWidget {
  final Function onPressed;

  const ResumeUploadButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle resume upload button tap (e.g., show file picker)
        onPressed();
      },
      child: Text('Upload Resume'),
    );
  }
}
