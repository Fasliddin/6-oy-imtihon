// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:imtihon_olti/bussines.dart';
import 'package:imtihon_olti/home.dart';
import 'package:imtihon_olti/school.dart';

int selected = 0;
List<String> date = [];
String top = '';
String t = '';
String textu = 'Monday';
TextEditingController cont = TextEditingController();

List screens = [
  Home1(),
  Bussines(),
  School(),
];

void search() {
  switch (cont.text.toLowerCase()) {
    case "dushanba":
      textu = "Monday";
      break;
    case "seshanba":
      textu = "Thursday";
      break;
    case "chorshanba":
      textu = "Wednesday";
      break;
    case "payshanba":
      textu = "Thursday";
      break;
    case "juma":
      textu = "Friday";
      break;
    case "shanba":
      textu = "Saturday";
      break;
    case "yakshanba":
      textu = "Sunday";
      break;
      default :textu="error!";
  }
}

  String formatTime(DateTime time) {
    // Vaqt formatini soat:daq:son formatiga o'tkazish
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    return '${twoDigits(time.hour)}:${twoDigits(time.minute)}:${twoDigits(time.second)}';
  }
