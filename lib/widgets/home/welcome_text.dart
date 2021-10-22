import 'package:donation_project/providers/charity_providers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recomList = Provider.of<CharityProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome to charity system',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text("Log out"),
              ),
            ],
          ),
          SizedBox(height: 10),

          // Text(
          //   'Are you want to search charity ?',
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline1!
          //       .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          // )
        ],
      ),
    );
  }
}
