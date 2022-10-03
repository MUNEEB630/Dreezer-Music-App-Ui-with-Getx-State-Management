import 'package:get/get.dart';

class MediaPlayerController extends GetxController{
  RxBool isPlayed = false.obs;
  var screen = 0.obs;

  void Played() {
    isPlayed.value = !isPlayed.value;
    update();
  }

  void screenChange() {
      screen.value = 1;
  }

  void setback() {
      screen.value = 0;
  }
}