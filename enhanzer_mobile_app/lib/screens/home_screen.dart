import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, dynamic> userData;

  HomeScreen({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
Container(
  height: 100,  // Set your desired height here
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.purple.shade300, Colors.purple.shade600],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(30),
      bottomRight: Radius.circular(30),
    ),
  ),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Home",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
            // Add some space below the header
            const SizedBox(height: 20),
            // User Information List
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  userInfoCard(userData),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget userInfoCard(Map<String, dynamic> userData) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Info Display
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.purple.shade100,
                child: const Icon(Icons.person, color: Colors.purple),
              ),
              SizedBox(width: 10,),
              Flexible(
                child: Text(
                  "Code: ${userData['User_Code']}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
Row(
  children: [
    CircleAvatar(
      backgroundColor: Colors.red.shade100,
      child: const Icon(Icons.phone, color: Colors.red),
    ),
    const SizedBox(width: 10),
    Flexible(
      child: Text(
        "User: ${userData['User_Display_Name']}",
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      ),
    ),
  ],
),

          const SizedBox(height: 15),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green.shade100,
                child: const Icon(Icons.email, color: Colors.green),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  "Email: ${userData['Email']}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: const Icon(Icons.work, color: Colors.blue),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  "Employee Code: ${userData['User_Employee_Code']}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.orange.shade100,
                child: const Icon(Icons.business, color: Colors.orange),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  "Company Code: ${userData['Company_Code']}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
