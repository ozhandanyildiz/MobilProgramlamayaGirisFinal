import 'package:flutter/material.dart';
//responsive tanımlama bu sayfayı diğer sayfalara import ederek her sayfada ayrı ayrı size ayarlaması yapmanın önüne geçeriz.
enum Screen { mobile, tablet, desktop }

detectScreeen(Size size) {
  if (size.width < 600) {
    return Screen.mobile;
  } else if (size.width < 840) {
    return Screen.tablet;
  } else {
    return Screen.desktop;
  }
}
