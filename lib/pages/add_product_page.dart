import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/home_controller.dart';
import 'package:shop/widgets/dropdown_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Add Product"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Add New Product",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: ctrl.productNameCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text('Product Name'),
                    hintText: 'Enter Your Product Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.productDescriptionCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text('Product Description'),
                    hintText: 'Enter Your Product Description',
                  ),
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.productImgCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text('Image URL'),
                    hintText: 'Enter Image URL',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.productPriceCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text('Product Price'),
                    hintText: 'Enter Your Product Price',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        child: DropdownBtn(
                      items: ['Boots', 'Shoe', 'T-shirt'],
                      selectedItemText: ctrl.category,
                      onSelected: (selectedValue) {
                        ctrl.category = selectedValue ?? 'general';
                        ctrl.update();
                      },
                    )),
                    Flexible(
                        child: DropdownBtn(
                      items: ['Nike', 'Adidas', 'Puma'],
                      selectedItemText: ctrl.brand,
                      onSelected: (selectedValue) {
                        ctrl.brand = selectedValue ?? 'unbranded';
                        ctrl.update();
                      },
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Offer Product?'),
                const SizedBox(
                  height: 10,
                ),
                DropdownBtn(
                  items: ['true', 'false'],
                  selectedItemText: ctrl.offer.toString(),
                  onSelected: (selectedValue) {
                    ctrl.offer =
                        bool.tryParse(selectedValue ?? 'false') ?? false;
                    ctrl.update();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent),
                  onPressed: () {
                    ctrl.addProduct();
                    ctrl.setValuesClear();
                  },
                  child: Text(
                    'Add Product',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
