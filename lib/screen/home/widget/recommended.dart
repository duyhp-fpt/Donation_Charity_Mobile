import 'package:flutter/material.dart';
import 'package:house_rent/model/campaign.dart';
import 'package:house_rent/screen/detail/detail.dart';
import 'package:house_rent/services/campaign_api.dart';
import 'package:house_rent/widget/circle_icon_button.dart';
import 'package:http/http.dart' as http;

class RecommendedCharity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 340,
      child: FutureBuilder<List<Campaign>>(
        future: CampaignApi().getCampaign(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailPage(
                                  campaign: snapshot.data![index]);
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 230,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        "http://20.115.21.3${snapshot.data![index].image}",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              right: 15,
                              top: 15,
                              child: CircleIconButton(
                                  iconUrl: 'assets/icons/mark.svg',
                                  color: Theme.of(context).accentColor),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  color: Colors.white54,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "${snapshot.data![index].campaignName}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1!
                                                    .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "${snapshot.data![index].description}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      CircleIconButton(
                                          iconUrl: 'assets/icons/mark.svg',
                                          color: Theme.of(context).accentColor)
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(width: 20),
                itemCount: snapshot.data!.length);
          } else if (snapshot.hasError) {
            return Center(
              child: Text("An error has occured: ${snapshot.error}"),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
