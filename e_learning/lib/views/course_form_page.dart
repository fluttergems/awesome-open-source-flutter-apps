import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CourseFormPage extends StatelessWidget {
  final TextEditingController titleCtrl = TextEditingController();
  final TextEditingController descCtrl = TextEditingController();

  CourseFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Course")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleCtrl,
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: descCtrl,
              decoration: InputDecoration(labelText: "Description"),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Save"),
              onPressed: () {
                // sau này gọi controller.addCourse()
              },
            ),
          ],
        ),
      ),
    );
  }
}
