

import 'package:get/get.dart';

class SliderController extends GetxController{

  RxDouble opacity =.2.obs;

  setOpacity(double value){
    opacity.value=value;
  }
}