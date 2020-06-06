import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class DataBaseHelper{

  var status;
  String serverUrlPilots= "http://192.168.1.71:3400/api/pilots";
  
  //funciton getData
  Future<List> getData() async{

    final key = '';
    final value = get(key ) ?? 0;


    String myUrl = "$serverUrlPilots";
    http.Response response = await http.get(myUrl,
        headers: {
          'Accept':'application/json',
          'Authorization' : 'Bearer $value'
    });
    return json.decode(response.body);
   // print(response.body);
  }



  
 
//function for register pilots
  void addDataPiloto(
  String _emailController,
   String _passController, 
   String _nameController, 
   String _userController, 
   String _phoneController, 
   String _createdController, 
   String _lastnController, 
   String _statusController, 
   String _emailvController, 
   String _typeController) async {


   // String myUrl = "$serverUrl/api";
   String myUrl = "http://192.168.1.71:3400/api/pilots";
   final response = await  http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {

          "email":          "$_emailController",
          "password":       "$_passController",
          "name":           "$_nameController",
          "userName":       "$_userController",
          "phone":          "$_phoneController",
          "createdAt":      "$_createdController",
          "lastName":       "$_lastnController",
          "status":         "$_statusController",
          "emailVerified":  "$_emailvController",
          "type":           "$_typeController"
          
        } ) ;
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if(status){
      print('data : ${data["error"]}');
    }
    }
  


}
