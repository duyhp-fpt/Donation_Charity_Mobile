import 'package:flutter/material.dart';
import 'package:house_rent/model/activity.dart';

class DetailActivity extends StatelessWidget {
  final Activity detailActivity;
  const DetailActivity({Key? key, required this.detailActivity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(detailActivity.image);
  }
}
