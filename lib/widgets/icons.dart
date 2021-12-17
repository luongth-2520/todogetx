import 'package:flutter/material.dart';
import 'package:todogetx/core/values/icons.dart';

List<Icon> getIcons() {
  return const [
    Icon(IconData(iconPerson, fontFamily: 'MaterialIcons'), color: Colors.purple),
    Icon(IconData(iconWork, fontFamily: 'MaterialIcons'), color: Colors.pink),
    Icon(IconData(iconMovie, fontFamily: 'MaterialIcons'), color: Colors.green),
    Icon(IconData(iconSport, fontFamily: 'MaterialIcons'), color: Colors.yellow),
    Icon(IconData(iconTravel, fontFamily: 'MaterialIcons'), color: Colors.deepOrange),
    Icon(IconData(iconShop, fontFamily: 'MaterialIcons'), color: Colors.lightBlue),
  ];
}
