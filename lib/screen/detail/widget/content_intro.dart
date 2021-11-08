import 'package:flutter/material.dart';
import 'package:house_rent/model/campaign.dart';
import 'package:house_rent/model/charity.dart';

class ContentIntro extends StatelessWidget {
  final Campaign campaign;

  ContentIntro({Key? key, required this.campaign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Charity Name: ${campaign.campaignName}',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[300]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Description: ${campaign.description}',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text('Title: ${campaign.title}', style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Goal: ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              TextSpan(
                text: "${campaign.goal}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14),
              )
            ]),
          )
        ],
      ),
    );
  }
}
