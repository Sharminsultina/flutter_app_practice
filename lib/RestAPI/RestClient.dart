import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Style/style.dart';

Future<List> ProductGridViewListRequest() async {
  var URL = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');
  var PostHeader = {'Content-Type': 'application/json'};
  var response = await http.get(URL, headers: PostHeader);

  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);

  if (ResultCode == 200 && ResultBody['status'] == 'success') {
    SuccessToast('Request Success');
    return ResultBody['data'];
  }
  else {
    ErrorToast('Request fail ! try again');
    return [];
  }
}

Future<bool> ProductCreateRequest(FormValues) async{
  var URL=Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');//('https://crud.teamrabbil.com/api/v1/CreateProduct');
  var PostBody=json.encode(FormValues);
  var PostHeader={'Content-Type':'application/json'};
  var response= await http.post(URL,headers:PostHeader,body: PostBody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);


  if(ResultCode==200 && ResultBody['status']=='success'){
    SuccessToast('Request Success');
    return true;

  }
  else {
    ErrorToast('Request fail ! try again');
    return false;
  }
}

Future<bool> ProductDeleteRequest(id) async{
  var URL = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct/'+id);
  var PostHeader={'Content-Type':'application/json'};
  var response= await http.get(URL,headers: PostHeader);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=='success'){
    SuccessToast('Request Success');
    return true;

  }
  else {
    ErrorToast('Request fail ! try again');
    return false;
  }



}

Future<bool> ProductUpdateRequest(FormValues,id) async{
  var URL=Uri.parse('https://crud.teamrabbil.com/api/v1/UodateProduct'+id);//('https://crud.teamrabbil.com/api/v1/CreateProduct');
  var PostBody=json.encode(FormValues);
  var PostHeader={'Content-Type':'application/json'};
  var response= await http.post(URL,headers:PostHeader,body: PostBody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);


  if(ResultCode==200 && ResultBody['status']=='success'){
    SuccessToast('Request Success');
    return true;

  }
  else {
    ErrorToast('Request fail ! try again');
    return false;
  }
}