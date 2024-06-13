import 'package:flutter/material.dart';

import '../data/user.dart';


class UserDetailScreen extends StatelessWidget {
  final User user;

  UserDetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'user_name_${user.id}',
              child: Material(
                color: Colors.transparent,
                child: Text(
                  user.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: ${user.email}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: ${user.phone}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Address: ${user.address.street}, ${user.address.suite}, ${user.address.city}, ${user.address.zipcode}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Company: ${user.company.name}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Catch Phrase: ${user.company.catchPhrase}',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
            Text(
              'BS: ${user.company.bs}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}


