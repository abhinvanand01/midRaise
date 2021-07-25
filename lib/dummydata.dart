import 'package:flutter/material.dart';

class PieData {
   static List<Data> data = [
      Data(name: 'Technology', percent: 40, color:  Colors.blue),
      Data(name: 'Lifestyle', percent: 30, color:  Colors.redAccent),
      Data(name: 'Ecommerce', percent: 15, color: Colors.yellow),
      Data(name: 'Others', percent: 15, color: const Color(0xff13d38e)),
   ];
}

class Data {
   final String name;

   final double percent;

   final Color color;

   Data({required this.name, required this.percent, required this.color});
}

class Company{
   late String name;
   late String launchDate;
   late String info;
   late double rating;
   Company(String n,String ld,String i,double r) {
      name = n;
      launchDate = ld;
      info = i;
      rating = r;
   }
}
final  List<dynamic> companies = [
   new Company("Microsoft","3rd September 1990","An Information Technology Company", 5),
   new Company("Amazon","20th December 1985","An Information Technology Company", 4),
   new Company("Salesforce","14th May 2000","An Information Technology Company", 3.5),
   new Company("Uber","20th Aug 1960","An Information Technology Company", 4),
   new Company("Apple","3rd April 1950","An Information Technology Company", 5),
   new Company("Google","19th March 1995","An Information Technology Company", 3.5),
];