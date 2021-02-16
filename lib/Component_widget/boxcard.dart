import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

          ) ,
        ),
      ],
    );
  }
}

//
// Container(
// height: MediaQuery.of(context).size.height / 4,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: popularList.length,
// itemBuilder: (ctx, i) {
// return GestureDetector(
// onTap: () => Navigator.pushNamed(context, 'details'),
// child: Container(
// width: MediaQuery.of(context).size.width / 3,
// margin: EdgeInsets.symmetric(horizontal: 15.0),
// padding: EdgeInsets.all(15.0),
// alignment: Alignment.bottomLeft,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15.0),
// image: DecorationImage(
// fit: BoxFit.cover,
// image: NetworkImage("${popularList[i]['img']}"),
// ),
// ),
// child: Text(
// "${popularList[i]['title']}",
// style: Theme.of(context)
//     .textTheme
//     .headline
//     .apply(color: Colors.white),
// ),
// ),
// );
