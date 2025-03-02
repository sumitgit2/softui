import 'package:flutter/material.dart';
import 'package:softui_dev/src/customboxdecoration.dart';

class SoftuiIconNameButtonWidget extends StatelessWidget {
  final String label;
  final dynamic icon; // Accepts both IconData and Widget
  final int index;
  final Function(dynamic) onChanged;
  final dynamic value;

  const SoftuiIconNameButtonWidget({
    Key? key,
    required this.label,
    required this.icon,
    required this.index,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(13),
      decoration: CustomBoxDecoration.defaultDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (icon is IconData)
            Icon(icon as IconData, size: 30.0) // Show IconData
          else if (icon is Widget)
            icon as Widget, // Show Image or other widgets

          Text(
            label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}






/*

  Obx(() => SoftuiIconNameButtonWidget(
                  label: "AC",
                  icon: Image.asset("assets/img/ac.png", width: 35, height: 35),
                  index: 1,
                  onChanged: (value) {
                    controller.acStatus.value = value;
                    controller.updateAcStatus(value);
                  },
                  value: controller.acStatus.value,
                )),

            /// Heater Control
            Obx(() => SoftuiIconNameButtonWidget(
                  label: "Heater",
                  icon: Icons.local_fire_department,
                  index: 0,
                  onChanged: (value) {
                    controller.heaterStatus.value = value;
                    controller.updateHeaterStatus(value);
                  },
                  value: controller.heaterStatus.value,
                )),

                */