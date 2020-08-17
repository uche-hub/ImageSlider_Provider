import 'package:flutter/material.dart';

class ImageModel with ChangeNotifier{
  int _currentImage = 0;

  int get getImageSlider{
    return _currentImage;
  }

//  get currentImage => this._currentImage;
//
//  set currentImage(index) => this._currentImage;

  void imageSlider(int index){
    _currentImage = index;
    notifyListeners();
  }
}