import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  List imagelist = [
    Image.asset(' assets/images/doppio.jpg'),
    Image.asset('assets/images/americano.jpg'),
    Image.asset('assets/images/Cafe_Au_Lait (1).jpg'),
    Image.asset(' assets/images/Caffe_Latte.jpg'),
    Image.asset('assets/images/cappuccino_0.jpg'),
    Image.asset('assets/images/cold brew.jpg'),
    Image.asset('assets/images/espresso_con_panna.jpg'),
    Image.asset('assets/images/Flat_White.jpg'),
  ];

}
