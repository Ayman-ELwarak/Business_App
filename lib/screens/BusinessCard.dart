import 'package:flutter/material.dart';

class Businesscard extends StatelessWidget {
  String name = '';
  String email = '';
  String PhoneNumber = '';
  String facebookUserName = '';
  String jobTitle = '';
  Businesscard({super.key, required this.name, required this.PhoneNumber, required this.email, required this.facebookUserName, required this.jobTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 124, 53, 53),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 110,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 106,
              backgroundImage: AssetImage('images/image.jpg'),
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'Pacifico',
            ),
          ),
          Text(
            jobTitle,
            style: const TextStyle(
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
              child: Row(
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
                      PhoneNumber,
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
            child: Row(
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
                    email,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: ListTile(
              leading: Icon(
                Icons.facebook,
                color: Color.fromARGB(255, 124, 53, 53),
                size: 30,
              ),
              title: Text(
                facebookUserName,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
