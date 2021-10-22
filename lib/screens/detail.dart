import 'package:donation_project/widgets/detail/about.dart';
import 'package:donation_project/widgets/detail/charity_info.dart';
import 'package:donation_project/widgets/detail/content_intro.dart';
import 'package:donation_project/widgets/detail/detail_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:donation_project/models/charity.dart';

class DetailPage extends StatelessWidget {
  final Charity charity;
  const DetailPage({
    Key? key,
    required this.charity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailAppBar(house: charity),
        SizedBox(height: 20),
        ContentIntro(house: charity),
        SizedBox(height: 20),
        CharityInfo(),
        SizedBox(height: 20),
        About(),
        SizedBox(height: 25),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text('Donate Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)))))
      ],
    )));
  }
}
