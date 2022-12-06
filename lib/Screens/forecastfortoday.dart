import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/homepage.dart';
import 'package:weatherapp/weaterStatus.dart';

class ForeCastToday extends StatefulWidget {
  const ForeCastToday({Key? key}) : super(key: key);

  @override
  State<ForeCastToday> createState() => _ForeCastTodayState();
}

class _ForeCastTodayState extends State<ForeCastToday> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
      color: Color(0xff989999),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Forecast for today',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontFamily: 'publicasans',
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                WeatherStatus(
                    time: 'Now',
                    image: 'images/sun.png',
                    temp: 20,
                    cimage: "image",
                    km: 20,
                percentage: 0,
               ),
                WeatherStatus(
                    time: '15:00',
                    image: 'images/cloud-computing.png',
                    temp: 1,
                    cimage: "image",
                    km: 10,

                percentage: 10),
                WeatherStatus(
                    time: '16:00',
                    image: 'images/rainy.png',
                    temp: 0,
                    cimage: "image",
                    km: 25,
                percentage: 30,
                ),
                WeatherStatus(
                    time: '17:00',
                    image: 'images/snowflake.png',
                    temp: -2,
                    cimage: "imadfge",
                    km: 28,
                percentage: 27,
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
