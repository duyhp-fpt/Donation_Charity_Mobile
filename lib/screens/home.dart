import 'package:donation_project/widgets/home/categories.dart';
import 'package:donation_project/widgets/home/custom_app_bar.dart';
import 'package:donation_project/widgets/home/custom_bottom_navigation_bar.dart';
import 'package:donation_project/widgets/home/history.dart';
import 'package:donation_project/widgets/home/recommended.dart';
import 'package:donation_project/widgets/home/search_input.dart';
import 'package:donation_project/widgets/home/welcome_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendedCharity(),
            History(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
