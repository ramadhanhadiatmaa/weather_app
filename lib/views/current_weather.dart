// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          temp,
          style: TextStyle(
            color: Colors.black,
            fontSize: 46,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          location,
          style: TextStyle(
            color: Colors.black26,
            fontSize: 16,
            fontWeight: FontWeight.w100,
          ),
        )
      ],
    ),
  );
}
