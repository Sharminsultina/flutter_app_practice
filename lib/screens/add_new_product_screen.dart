import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _productCodeController = TextEditingController();
  final TextEditingController _QtyTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16,
        ),
        child: Column(
        children: [
          TextFormField(
            controller: _titleTEController,
            decoration: InputDecoration(
              label: Text('Title'),
              hintText: 'Enter product title',
             ),
           ),
          TextFormField(
            controller: _QtyTEController,
            decoration: InputDecoration(
              label: Text('Qty'),
              hintText: 'Qty',
            ),
          ),
          TextFormField(
            controller: _priceTEController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Price'),
              hintText: 'Enter Price',
            ),
          ),
          TextFormField(
            controller: _totalPriceTEController,
            decoration: InputDecoration(
              label: Text('Total price'),
              hintText: 'Enter total price',
            ),
          ),
    TextFormField(
      controller: _productCodeController,
          decoration: InputDecoration(
            label: Text('code'),
            hintText: 'Enter product code',
          ),
         ),
          TextFormField(
            controller: _descriptionTEController,
            maxLines: 5,
            decoration: InputDecoration(
              label: Text('Description'),
              hintText: 'Enter description',
            ),
          ),
          const SizedBox(height: 25,
          ),
          SizedBox(
            width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 14),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,

                )
              ),
              onPressed: () {}, child: Text('Add')
          ),
         )
        ],
      ),
    ),
    );
  }
  @override
  void dispose() {
    _titleTEController.dispose();
    _productCodeController.dispose();
    _QtyTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _descriptionTEController.dispose();

    super.dispose();
  }
}
