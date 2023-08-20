import 'dart:async';

import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MaryTime extends GetxController {
  RxString targetValue = "".obs;
  void countDown() {
    DateTime targetDate = DateTime(2023, 8, 22, 14, 00,
        00); //DateTime(2023, 8, 22, 14, 00, 00); // Hedef tarih
    Duration remainingTime = targetDate.difference(DateTime.now());

    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      remainingTime = targetDate.difference(DateTime.now());

      if (remainingTime.isNegative) {
        timer.cancel();
        targetValue.value = 'Biz Evlendik!';
      } else {
        targetValue.value =
            '${remainingTime.inDays} gün,\n ${remainingTime.inHours.remainder(24)} saat,\n ${remainingTime.inMinutes.remainder(60)} dakika,\n ${remainingTime.inSeconds.remainder(60)} saniye kaldı!';
      }
    });
  }
}
