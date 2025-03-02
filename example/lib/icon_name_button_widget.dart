import 'package:flutter/material.dart';
import 'package:softui_dev/soft_ui.dart';

class ListHome extends StatefulWidget {
  const ListHome({super.key});

  @override
  _ListHomeState createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
  bool acStatus = false;  // Static data for AC status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: SoftuiIconNameButtonWidget(
          label: "AC",
          icon: Image.asset("assets/img/ac.png", width: 35, height: 35),
          index: 1,
          onChanged: (value) {
            setState(() {
              acStatus = value;
            });
          },
          value: acStatus,
        ),
      ),
    );
  }
}




/*

  Obx(() => IconNameButtonWidget(
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
            Obx(() => IconNameButtonWidget(
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