import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/weatherInfo.dart';


class Weather extends StatelessWidget {
   Weather({Key? key}) : super(key: key);
    final List<Widget> pages=[
      WeatherInfoBody(cname: 'Alexandria', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Aswan', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Asyut', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Beheira', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Beni Suef', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Cairo', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Dakahlia', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Damietta', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Faiyum', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Gharbia', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Giza', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Helwan', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Ismailia', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Kafr el-Sheikh', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Luxor', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Matruh', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Minya', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Monufia', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'New Valley', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'North Sinai', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Port Said', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Qalyubia', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Qena', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Red Sea', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Sharqia', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Sohag', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'South Sinai', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: 'Suez', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),
      WeatherInfoBody(cname: '6th of October', updated: 'updated', image: 'assets/images/clear.png', max: 'max', min: 'min', state: 'state'),

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        backgroundColor: scolor,
        title:  Text('Weather App',
        style: TextStyle(
          fontFamily: 'Cherly',
          color: Color(0xff66B343),
        ),
        ),
      ),
      body: PageView(
        children: pages,
        onPageChanged: (value) {
          
        },
      ),
    );
  }
}