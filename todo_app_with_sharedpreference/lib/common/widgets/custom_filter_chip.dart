import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_with_sharedpreference/common/constants/global_variable.dart';
import 'package:todo_app_with_sharedpreference/src/view-model/filter_chip_controller.dart';

class FilterChipWidget extends StatefulWidget {
  final String chipName;
  final Function(String?) onSelectedFilter;

  const FilterChipWidget({super.key, required this.chipName,required this.onSelectedFilter});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {

  FilterChipController controller =Get.put(FilterChipController());

  @override
  Widget build(BuildContext context) {
    // Get an instance of the FilterChipController
    final FilterChipController controller = Get.put(FilterChipController());

    return Obx(() => FilterChip(
      padding: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(40.0),

      ),
      showCheckmark: false,
      side: BorderSide.none,
      label: Text(
        widget.chipName,
        style: TextStyle(
          color: controller.isFilterSelected(widget.chipName) ? Colors.white : Colors.black,
        ),
      ),
      selected: controller.isFilterSelected(widget.chipName),
      backgroundColor: Colors.white,
      onSelected: (isSelected) {
        controller.toggleFilter(widget.chipName);  // Toggle this chip's selection state
        widget.onSelectedFilter(widget.chipName);  // Call the external function
      },
      selectedColor: Colors.blue, // Color when selected


    ));
  }
}