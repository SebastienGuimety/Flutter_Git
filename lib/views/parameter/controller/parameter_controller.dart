import 'package:get/get.dart';

class ParameterController extends GetxController {
  var loading = false.obs;

  // Define your state variables
  RxInt counter = 0.obs;

  // This method will be used to update the counter
  void updateCounter() {
    // You can update the counter logic here as needed
    counter.value++;
  }

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  setLoading(bool value) {
    loading.value = value;
  }
}
