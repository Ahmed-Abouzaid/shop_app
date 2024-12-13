import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/home_controller.dart';
import 'package:shop/pages/add_product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Shop Admin"),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text('item title'),
              subtitle: const Text('Price: 100'),
              trailing: IconButton(
                  onPressed: () {
                    ctrl.testMethod();
                  },
                  icon: const Icon(Icons.delete)),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const AddProductPage());
          },
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
