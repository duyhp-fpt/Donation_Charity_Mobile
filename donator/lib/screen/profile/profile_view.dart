import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: new AppBar(
        title: new Text('Profile'),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: CircleAvatar(
              maxRadius: 75,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
          Text(
            'Huỳnh Phúc Duy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                '*About profile*',
                style: TextStyle(
                  color: Colors.blue[200],
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                ),
              ),
              // CircleAvatar(
              //   maxRadius: 20,
              //   backgroundImage: AssetImage('assets/images/house01.jpeg'),
              // )
            ],
          ),
          Text(
            'Address: Vĩnh Long\nDate of birth: 17-01-2000\nGender: Male\nPhone number: 0908-690-095\nDonated: 2,500,000 VND',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.blue[400],
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
        ],
      ),
    );
  }
}
