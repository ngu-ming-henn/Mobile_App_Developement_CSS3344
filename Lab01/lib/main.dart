import 'package:flutter/material.dart';

void main() {
  runApp(const StudentInfoApp());
}

class StudentInfoApp extends StatelessWidget {
  const StudentInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSS3344 Lab 01',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const StudentProfileScreen(),
    );
  }
}

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CSS3344 Mobile App Dev - Lab 01 Halooo'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Avatar
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.indigo,
                    backgroundImage: AssetImage(
                      'assets/image/myself.jpg',
                    ),
                  ),

                  const SizedBox(height: 20),

                  // TODO: Replace with your Full Name
                  const Text(
                    "Ngu Ming Henn",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // TODO: Replace with your Student ID
                  const Text(
                    'Student ID: BCS24020001',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),

                  const Divider(
                    height: 32,
                    thickness: 1,
                  ),

                  // Personal Life Goal / Quote
                  const Text(
                    'Personal Life Goal / Quote:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // TODO: Replace with your goal/quote
                  const Text(
                    '"BECAME A BILLIONAIRE"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
