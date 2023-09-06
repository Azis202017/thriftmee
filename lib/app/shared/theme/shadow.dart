import 'package:flutter/material.dart';

BoxShadow bottomShadow = const BoxShadow(
  color: Color.fromRGBO(213, 214, 229, 0.4), // Warna bayangan
  offset: Offset(0, -13), // X: 0, Y: -13
  blurRadius: 17, // Radius blur
  spreadRadius: 0, // Radius penyebaran
);
BoxShadow appBarShadow = const BoxShadow(
  color: Color.fromRGBO(219, 225, 233, 0.25), // Warna bayangan
  offset: Offset(0, 12), // X: 0, Y: 12
  blurRadius: 13, // Radius blur
  spreadRadius: 0, // Radius penyebaran
);
