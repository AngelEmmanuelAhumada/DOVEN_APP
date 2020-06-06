import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class DataBaseHelperC{

  var status;
  String serverUrlEvents= "http://192.168.1.71:3400/api/events";
  
  //funciton getData
  Future<List> getData() async{

    final key = '';
    final value = get(key ) ?? 0;


    String myUrl = "$serverUrlEvents";
    http.Response response = await http.get(myUrl,
        headers: {
          'Accept':'application/json',
          'Authorization' : 'Bearer $value'
    });
    return json.decode(response.body);
   // print(response.body);
  }



  
 
//function for register pilots
  void addDataEvents(
   String _startController,
   String _endController, 
   String _titleController, 
   String _colorController, 
   String _originController, 
   String _destinationController, 
   String _firstidController, 
   String _secondidController, 
 ) async {


   // String myUrl = "$serverUrl/api";
   String myUrl = "http://192.168.1.71:3400/api/events";
   final response = await  http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {

          "start":            "$_startController",
          "end":              "$_endController",
          "title":            "$_titleController",
          "color":            "$_colorController",
          "origin":           "$_originController",
          "destination":      "$_destinationController",
          "firstPilotId":     "$_firstidController",
          "secondPilotId":    "$_secondidController"
         
          
        } ) ;
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if(status){
      print('data : ${data["error"]}');
    }
    }
  


}
