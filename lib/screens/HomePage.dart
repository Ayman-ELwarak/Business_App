import 'package:business_app/screens/BusinessCard.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController facebookUserName = TextEditingController();
  final TextEditingController jobTitle = TextEditingController();

  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name ',
                hintText: 'Type something...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your email ',
                hintText: 'Type something...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phoneNumber,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your Phone number ',
                hintText: 'Type something...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: facebookUserName,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your Facebook user name ',
                hintText: 'Type something...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: jobTitle,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your job title ',
                hintText: 'Type something...',
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Businesscard(
                    name: name.text,
                    email: email.text,
                    PhoneNumber: phoneNumber.text,
                    facebookUserName: facebookUserName.text,
                    jobTitle: jobTitle.text,
                  );
                }),
              );
            },
            child: const Text('Submit'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
