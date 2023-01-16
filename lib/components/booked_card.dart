import 'package:flutter/material.dart';
import 'package:travel_app_v1/components/custom_btn.dart';
import 'package:travel_app_v1/components/rating_panel.dart';
import 'package:travel_app_v1/constant/constant.dart';

class BookedCard extends StatelessWidget {
  const BookedCard({Key? key, required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "17 July 2022, Mon",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.group,
                color: Color(0xff7C8385),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Booked for 1 Person",
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.greenAccent,
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tower of Belem",
                    style: subHeading,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 12,
                      ),
                      Text("Lisbon, Protugal", style: text)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RatingPanel()
                ],
              ),
              Spacer(),
              Center(
                  child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TOTAL PRICE",
                style: text,
              ),
              Text("LKR 45000.00",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryColor))
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}