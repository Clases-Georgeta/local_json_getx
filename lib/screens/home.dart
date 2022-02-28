import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_json_getx/controllers/json_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JsonController>(
      init: JsonController(),
      builder: (jsonController) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          jsonController.loadJson();
        }),
        body: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.5,
              mainAxisSpacing: 0.5,
            ),
            itemCount: jsonController.users.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(jsonController.users[index].first_name),
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
