import 'package:flutter_widget_gallery/src/pages/home_page.dart';
import 'package:get/get.dart';

class ConfigController extends GetxController {
  @override
  void onReady() async {
    // TODO: implement onReady
    super.onReady();
    await 3.delay();
    Get.offAll(() => HomePage());
  }
}
