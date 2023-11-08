import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../RestAPI/RestClient.dart';
import '../Style/style.dart';
import 'ProductGridViewScreen.dart';

class ProductUpdateScreen extends StatefulWidget{
  final Map productItem;

  const ProductUpdateScreen(this.productItem);

  @override
  State<ProductUpdateScreen> createState() => _ProductUpdateScreenState();
}

class _ProductUpdateScreenState extends State<ProductUpdateScreen> {

  Map<String,String> FormValues={'Img':'', 'Product code':'', 'ProductName':'', 'Qty':'', 'TotalPrice':'', 'UnityPrice':''};
  bool Loading=false;

  @override
  void initState(){
    FormValues.update('Img', (value) => widget.productItem['Img']);
    FormValues.update('Product code', (value) =>  widget.productItem['Product code']);
    FormValues.update('ProductName', (value) =>  widget.productItem['ProductName']);
    FormValues.update('Qty', (value) =>  widget.productItem['Qty']);
    FormValues.update('TotalPrice', (value) =>  widget.productItem['TotalPrice']);
    FormValues.update('TotalPrice', (value) =>  widget.productItem['TotalPrice']);
    FormValues.update('UnityPrice', (value) =>  widget.productItem['UnityPrice']);
  }

  InputOnChange(Mapkey,Textvalue){
    setState(() {

      FormValues.update(Mapkey, (value) => Textvalue);
    });

  }

  FormOnSubmit() async {
    if (FormValues['Img']!.length == 0) {
      ErrorToast('Image Link Required !');
    }
    else if (FormValues['ProductCode']!.length == 0) {
      ErrorToast('Product Code Required !');
    }
    else if (FormValues['ProductName']!.length == 0) {
      ErrorToast('Product Name Required !');
    }
    else if (FormValues['Qty']!.length == 0) {
      ErrorToast('Qty Required !');
    }
    else if (FormValues['TotalPrise']!.length == 0) {
      ErrorToast('Total Prise Required !');
    }
    else if (FormValues['UnitPrise']!.length == 0) {
      ErrorToast('Unit Prise Required !');
    }
    else {
      setState(() {
        Loading = true;
      });
      await ProductUpdateRequest(FormValues,widget.productItem['_id']);
      Navigator.pushAndRemoveUntil(
          context,
        MaterialPageRoute(builder: (context)=>
            ProductGridViewScreen()
        ),
          (Route route)=>false
      );
    }
  }

      @override
      Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(title: Text('Create product'),),
          body: Stack(
            children: [
              ScreenBackground(context),

              Container(
                child: Loading?(Center(child: CircularProgressIndicator(),)):((SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [

                      TextFormField(
                        initialValue: 'A',
                        onChanged: (Textvalue){
                          InputOnChange('Product Name',Textvalue);

                        },
                        decoration: AppInputDecoration('Product Name'),
                      ),

                      SizedBox(height: 20),


                      TextFormField(
                        initialValue: 'A',
                        onChanged: (Textvalue){
                          InputOnChange('Product Code',Textvalue);

                        },
                        decoration: AppInputDecoration('Product Code'),
                      ),
                      SizedBox(height: 20),

                      TextFormField(
                        initialValue: 'A',
                        onChanged: (Textvalue){
                          InputOnChange('Product Imge',Textvalue);

                        },
                        decoration: AppInputDecoration('Product Image'),
                      ),

                      SizedBox(height: 20),

                      TextFormField(
                        initialValue: 'A',
                        onChanged: (Textvalue){
                          InputOnChange('Unit Prise',Textvalue);

                        },
                        decoration: AppInputDecoration(' Unit Prise'),
                      ),

                      SizedBox(height: 20),

                      TextFormField(
                        initialValue: 'A',
                        onChanged: (Textvalue){
                          InputOnChange('Total prise',Textvalue);

                        },
                        decoration: AppInputDecoration('Total Prise'),
                      ),
                      SizedBox(height: 20),

                      AppDropDownStyle(
                          DropdownButton(
                            value: FormValues['Qty'],
                            items: [
                              DropdownMenuItem(child: Text('Select Qt'),value: '',),
                              DropdownMenuItem(child: Text('1 pcs'),value: "1 pcs",),
                              DropdownMenuItem(child: Text('2 pcs'),value: '2 pcs',),
                              DropdownMenuItem(child: Text('3 pcs'),value: '3 pcs',),
                              DropdownMenuItem(child: Text('4 pcs'),value: '4 pcs',),
                            ],
                            onChanged: (Textvalue){
                              InputOnChange('Qty',Textvalue);

                            },
                            underline: Container(),
                            isExpanded: true,
                          )
                      ),
                      SizedBox(height: 20),
                      Container(
                          child: ElevatedButton(
                              style: AppButtonStyle(),
                              onPressed: (){
                                FormOnSubmit();

                              },
                              child: SuccessButtonChild('Submit')
                          )
                      )

                    ],
                  ),
                ))),
              )
            ],
          ),
        );
      }

}