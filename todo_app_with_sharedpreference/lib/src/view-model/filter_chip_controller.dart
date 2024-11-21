import 'package:get/get.dart';

class FilterChipController extends GetxController {
  // Map to store the selection status of each filter chip by name
  var selectedChips = <String, bool>{}.obs;

  // Toggles the selection status of a chip
  void toggleFilter(String chipName) {
    if (selectedChips.containsKey(chipName)) {
      selectedChips[chipName] = !selectedChips[chipName]!;
    } else {
      selectedChips[chipName] = true;  // Select if not present initially
    }
  }

  // Checks if a specific chip is selected
  bool isFilterSelected(String chipName) => selectedChips[chipName] ?? false;
}
