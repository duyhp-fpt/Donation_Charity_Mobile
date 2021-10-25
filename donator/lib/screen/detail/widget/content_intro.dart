import 'package:flutter/material.dart';
import 'package:house_rent/model/charity.dart';

class ContentIntro extends StatelessWidget {
  final Charity charity;

  ContentIntro({Key? key, required this.charity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Charity Name: ' + charity.name,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[300]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Address: ' + charity.address,
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'Organization: ' + charity.nameOrganization,
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Total Price of donate: ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              TextSpan(
                text: charity.totalPrice + charity.uom,
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
