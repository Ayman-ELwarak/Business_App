import 'package:flutter/material.dart';

void main() {
  runApp(const Business_Card());
}

// ignore: camel_case_types
class Business_Card extends StatelessWidget {
  const Business_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 124, 53, 53),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 110,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 106,
                backgroundImage: AssetImage('images/Ayman.JPEG'),
              ),
            ),
            const Text(
              "Ayman Khaled",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              'Problem Solver',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF808080),
              ),
            ),
            const Divider(
              color: Color(0xFF808080),
              indent: 40,
              endIndent: 40,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                height: 60,
                child: const Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 124, 53, 53),
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '(+20) 1151981251',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              height: 60,
              child: const Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 124, 53, 53),
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'aymankhaled2080@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Card(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 124, 53, 53),
                  size: 30,
                ),
                title: Text(
                  "Ayman Khaled",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
