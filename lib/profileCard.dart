import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'images/me.jpg',
              ),
            ),
            Text(
              'Natchapat Laotrakul',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('082-526-3659'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.mail),
                title: Text('la.natchaoat@gmail.com'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contactus',
                    arguments: 'Hello world');
              },
              child: Text('Contact us'),
            )
          ],
        )));
  }
}
