import 'package:flutter/material.dart';
import 'package:shop/widgets/dropdown_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Flexible(child: DropdownBtn()),
                  Flexible(child: DropdownBtn()),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Offer Product?'),
              const SizedBox(
                height: 10,
              ),
              DropdownBtn()
            ],
          ),
        ),
      ),
    );
  }
}
