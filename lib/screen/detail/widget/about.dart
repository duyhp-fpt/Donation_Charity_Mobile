import 'package:flutter/material.dart';
import 'package:house_rent/model/charity.dart';

class About extends StatelessWidget {
  final Charity charity;

  About({Key? key, required this.charity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            // 'Enum veniam dolor sint ipsum culpa magna dolor incididunt laborum excepteu...',
            charity.description,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
