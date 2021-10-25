import 'package:flutter/material.dart';
import 'package:house_rent/model/donate.dart';

final List<Donate> listDonate = Donate.generateListDonate();

class ListDonate extends StatelessWidget {
  // final Donate donate;
  // const ListDonate({Key? key, required this.donate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text('List Donator'),
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listDonate.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 80,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(listDonate.elementAt(index).id.toString()),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      Text('Name: ' + listDonate.elementAt(index).name),
                      Text('Address: ' + listDonate.elementAt(index).address),
                      Text('Donated: ' +
                          listDonate.elementAt(index).price +
                          listDonate.elementAt(index).uom),
                      Text('Date: ' + listDonate.elementAt(index).date),
                    ]),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
    // bottomNavigationBar: CustomBottomNavigationBar(),
  }
}
