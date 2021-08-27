import 'package:flutter/material.dart';

Color primaryColor = Color(0xff376565);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[400],blurRadius: 30,offset: Offset(0,10))
];

List<Map> categories = [
  {"name": 'Cats',"imagePath":'images/cat.png'},
  {"name": 'Dogs',"imagePath":'images/dog.png'},
  {"name": 'Horses',"imagePath":'images/horse.png'},
  {"name": 'Parrots',"imagePath":'images/parrot.png'},
  {"name": 'Rabbits',"imagePath":'images/rabbit.png'},
  {"name": 'Cats',"imagePath":'images/cat.png'},
  {"name": 'Dogs',"imagePath":'images/dog.png'},
  {"name": 'Horses',"imagePath":'images/horse.png'},
  {"name": 'Parrots',"imagePath":'images/parrot.png'},
  {"name": 'Rabbits',"imagePath":'images/rabbit.png'},
];

List<Map> catMapList = [
  {"id":1,"name":'Sola',"imagePath":'images/pet_cat2.png',
    "Species":'Abyssinion cat',"sex":'Female',
    "year":'2',"distance":'3.6 km',"location":'5 Bulvorno-Kudriovska Street, Kyiv',}
];