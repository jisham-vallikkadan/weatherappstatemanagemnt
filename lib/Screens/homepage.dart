import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/Screens/forecastfortoday.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/dataclass.dart';
import 'package:weatherapp/providerclass.dart';

// String? place;
// double? temp;
// double? windspeed;
// String? weather;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Data data=Data();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<WeatherProvider>(context, listen: false).getWeather();
  }
  // void getweather() async{
  //   final url='https://api.openweathermap.org/data/2.5/weather?lat=10.258753&lon=75.780411&appid=b30de56fcbd933743d24fc9004670526&units=metric';
  //   var response=await http.get(Uri.parse(url));
  //   if(response.statusCode==200){
  //     var body=jsonDecode(response.body);
  //     // print(body['name']);
  //     // print(body['coord']['lon']);
  //     // print(weather=body['weather']['main']);
  //     print( weather=body['weather'][0]['main']);
  //     setState(() {
  //
  //     place=body['name'];
  //     temp=body['main']['temp'];
  //     windspeed=body['wind']['speed'];
  //     weather=body['weather'][0]['main'];
  //     // weather=body['weather']['main'];
  //
  //     //   data.location=body['name'];
  //     //   data.temp=body['main']['temp'];
  //
  //     });
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var Data=context.watch<WeatherProvider>().takevalue;
    var a= Provider.of<WeatherProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          'Weather App',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              fontFamily: 'Quicksand'),
        )),
      ),
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          children: [
            Text(
              '${a.place}',
              // '${data.location}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'publicasans'),
            ),
            Text(
              'Today',
              style: TextStyle(
                  color: Color(0xff8a8a8a),
                  fontSize: 30,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${a.temp}°C',
              // '${data.temp}°C',
              style: TextStyle(color: Color(0xff3e52b4), fontSize: 70),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: Divider(
                thickness: 1,
                color: Color(0xff8a8a8a),
              ),
            ),
            Text(
              '${a.weather}',
              style: TextStyle(
                  color: Color(0xff8a8a8a),
                  fontSize: 25,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${a.temp}°C',
                  style: TextStyle(color: Color(0xff1e88dc), fontSize: 20),
                ),
                Text(
                  '/',
                  style: TextStyle(color: Color(0xff8a8a8a), fontSize: 20),
                ),
                Text(
                  '100°C',
                  style: TextStyle(color: Color(0xff3e52b4), fontSize: 20),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ForeCastToday()),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Card(
                color: Color(0xff989999),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2-days forecast',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontFamily: 'publicasans',
                          fontWeight: FontWeight.w600),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xff8a8a8a),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          color: Color(0xff989999),
                          child: Image(
                            image: AssetImage('images/cloud-computing.png'),
                          ),
                        ),
                        Text(
                          '-5°C',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '2°C',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xff8a8a8a),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Twomorrow',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          color: Color(0xff989999),
                          child: Image(
                            image: AssetImage('images/cloud-computing.png'),
                          ),
                        ),
                        Text(
                          '10°C',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '2°C',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// void getweather() async{
//   final url='https://api.openweathermap.org/data/2.5/weather?lat=11.258753&lon=75.780411&appid=b30de56fcbd933743d24fc9004670526&units=metric';
//  var response=await http.get(Uri.parse(url));
//  if(response.statusCode==200){
// var body=jsonDecode(response.body);
//
//  }
// }
