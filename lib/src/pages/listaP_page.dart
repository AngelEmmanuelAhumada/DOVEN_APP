import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:preferenciasusuarioapp/src/pages/detallesP_page.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class ListPilotos extends StatefulWidget {
  static final String routeName = 'ListaPilotos';
  @override
  
  _ListPilotosState createState() => _ListPilotosState();
}

class _ListPilotosState extends State<ListPilotos> {

  List data;

  Future<List> getData() async {
    final response = await http.get("http://192.168.1.71:3400/api/pilots");
    return json.decode(response.body);
  }

  @override
  void initState() { 
    super.initState();
     this.getData();
  }


  @override
  Widget build(BuildContext context) {
    var futureBuilder = new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
                
        },
      );
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Pilots List"),
        actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: (){},)
        ]
      ),
      drawer: MenuWidget(),
      body: futureBuilder,
      
    );
  }
}

  class ItemList extends StatelessWidget {

    final List list;
    ItemList({this.list});


    @override
    Widget build(BuildContext context) {
      return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Detail(
                            list: list,
                            index: i,
                          )),
                ),
            child: new Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
              child: new ListTile(
                
                leading: Icon( Icons.person_pin, color: Colors.blue ),
                title: new Text(
                  
                  list[i]['name'].toString(),
                  style: TextStyle(fontSize: 25.0, color: Colors.black),
                  
        
              
                  
                ),
               
              ),
            ),
          ),
        );
      },
        
      );
    }
  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pilots', style: TextStyle( color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text(" ", style: TextStyle( color: Colors.black, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }
  