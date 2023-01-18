import 'package:flutter/material.dart';

// Base URL FOR EndPoints
const String baseUrl = 'http://192.168.1.102/travelApp_API';

// Colors
const Color primaryColor = Color(0xff2687A4);
const Color secondaryColor = Color(0xffF7F9FA);
const Color bgColor = Color(0xffF9F9F9);
const Color bgCard = Colors.white;
const Color tabBar = Color(0xffE9EFF0);

// textStyles
const TextStyle mainHeading = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff3C4143));
const TextStyle subHeading = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff3C4143));
const TextStyle heading = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff3C4143));
const TextStyle text = TextStyle(
    fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff7C8385));

const TextStyle largeText = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff3C4143));
const TextStyle smallText = TextStyle(fontSize: 14, color: Color(0xff3C4143));

// Text style with Light
const TextStyle subHeadingLight = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 222, 224, 224));

const String sampleUser =
    "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";


