import 'package:flutter/material.dart';
import 'package:house_rent/model/campaign.dart';
import 'package:house_rent/model/charity.dart';
import 'package:house_rent/screen/detail/detail.dart';
import 'package:house_rent/services/campaign_api.dart';
import 'package:house_rent/widget/circle_icon_button.dart';
import 'package:http/http.dart' as http;

class History extends StatelessWidget {
  final listHistory = Charity.generateHistory();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Campaign>>(
        future: CampaignApi().getCampaign(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your history donate',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ...snapshot.data!
                      .map((el) => Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    new GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return DetailPage(campaign: el);
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 150,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "http://20.115.21.3${el.image}"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            "${el.campaignName}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1!
                                                .copyWith(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "${el.description}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  child: CircleIconButton(
                                    iconUrl: 'assets/icons/heart.svg',
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ))
                      .toList()
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("An error has occured: ${snapshot.error}"),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
