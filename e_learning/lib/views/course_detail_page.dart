import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CourseDetailPage extends StatelessWidget {
  final String courseTitle;
  final String courseDescription;

  CourseDetailPage({required this.courseTitle, required this.courseDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(courseTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: Icon(Icons.image, size: 100),
            ),
            SizedBox(height: 16),
            Text(courseTitle, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(courseDescription, style: TextStyle(fontSize: 16)),
            Spacer(),
            ElevatedButton.icon(
              icon: Icon(Icons.edit),
              label: Text("Edit Course"),
              onPressed: () {
                // mở CourseFormPage
              },
            ),
          ],
        ),
      ),
    );
  }
}
