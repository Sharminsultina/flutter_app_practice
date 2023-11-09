import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/add_new_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        showDialog(context: context, builder: (context){
          return productActionDialog(context);
        });
      },
      leading: Image.network(
        'https://plus.unsplash.com/premium_photo-1661769750859-64b5f1539aa8?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdCUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D',
        width:80,
      ),
      title: const Text('Product Name'),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
           Text(',Product code'),
           SizedBox(width: 25,),
           Text(',Total price'),
      ],
      ),
    const Text(',Product description')
    ],
      ),
      trailing: const Text('\$120'),
    );
  }

  AlertDialog productActionDialog(BuildContext context) {
    return AlertDialog(
          title: Text('Select action'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Edit'),
                leading: Icon(Icons.edit),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const AddNewProductScreen(),
                      ),
                  );
                },
              ),
              Divider(height: 0,),
              ListTile(
                title: Text('Delete'),
                leading: Icon(Icons.delete_outline),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
  }
}