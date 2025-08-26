import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Courses")),
      body: ListView.builder(
        itemCount: 5, // tạm data mock
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Icon(Icons.book)),
            title: Text("Course $index"),
            subtitle: Text("Description $index"),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {},
            ),
            onTap: () {
              // chuyển sang CourseDetailPage
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // mở form thêm Course
        },
      ),
    );
  }
}
