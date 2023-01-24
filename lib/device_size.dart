import 'package:flutter/widgets.dart';

class DeviceSize {
  static MediaQueryData _mediaQueryData=0 as MediaQueryData;
  static double screenWidth=0;
  static double screenHeight=0;
  static double horizontalBloc=0;
  static double verticalBloc=0;
  static double _safeAreaHorizontal=0;
  static double _safeAreaVertical=0;
  static double safeBlockHorizontal=0;
  static double safeBlockVertical=0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    horizontalBloc = (screenWidth / 100);
    verticalBloc = (screenHeight / 100);

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}