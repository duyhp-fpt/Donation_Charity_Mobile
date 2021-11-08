import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent/model/campaign.dart';
import 'package:house_rent/model/charity.dart';

class DetailAppBar extends StatelessWidget {
  final Campaign campaign;
  const DetailAppBar({Key? key, required this.campaign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.network(
            "http://20.115.21.3${campaign.image}",
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/arrow.svg'),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle),
                  child: SvgPicture.asset('assets/icons/mark.svg'),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
