import 'package:get/get.dart';
import '../controllers/menupilihan_controller.dart';
 // Import controller yang telah dibuat

class menupilihan_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<menupilihan_controller>(() => menupilihan_controller());
  }
}
