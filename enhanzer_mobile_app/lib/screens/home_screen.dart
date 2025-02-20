import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, dynamic> userData;

  HomeScreen({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("User Code: ${userData['User_Code']}", style: const TextStyle(fontSize: 18)),
            Text("Name: ${userData['User_Display_Name']}", style: const TextStyle(fontSize: 18)),
            Text("Email: ${userData['Email']}", style: const TextStyle(fontSize: 18)),
            Text("Employee Code: ${userData['User_Employee_Code']}", style: const TextStyle(fontSize: 18)),
            Text("Company Code: ${userData['Company_Code']}", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
