import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/homepage.dart';

class WeatherStatus extends StatelessWidget {
  String? time;
  String? image;
  double? temp;
  String? cimage;
  double? km;

  int percentage;
  WeatherStatus(
      {Key? key,
       this.time,
       this.image,
       this.temp,
       this.cimage,
       this.km,

      required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${this.time}',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Container(
          width: 35,
          height: 35,
          color: Color(0xff989999),
          child:  Image(image: AssetImage('${this.image}'),),
        ),
        Text(
          '${this.temp}°C',
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 4,
        ),

          Container(
            width: 35,
            height: 35,
            color: Color(0xff989999),
            child:  Image(image: AssetImage('images/wind.png'),),
          ),
        Text(
          '${5.5}km/h',
          style: TextStyle(
              color: Color(0xffc8c4c4),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 5,),
        Container(
          width: 35,
          height: 35,
          color: Color(0xff989999),
          child:  Image(image: AssetImage('images/umbrella.png'),),
        ),
        Text(
          '${this.percentage}%',
          style: TextStyle(
              color: Color(0xff1e88dc),
              fontSize: 19,
              fontWeight: FontWeight.w400),
        ),

      ],
    );
  }
}
