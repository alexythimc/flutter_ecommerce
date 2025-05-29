import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final RxDouble _currentIndex = 0.0.obs;

  /// Getter for the current index of the home screen
  /// This index is used to track the current position in a carousel or similar widget.

  RxDouble get currentIndex => _currentIndex;

  void changeIndex(double index) {
    _currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    // Additional initialization if needed
  }

  @override
  void onReady() {
    super.onReady();
    // Additional setup after the controller is ready
  }

  @override
  void onClose() {
    super.onClose();
    // Cleanup resources if needed
  }
}
