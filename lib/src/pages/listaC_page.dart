import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:preferenciasusuarioapp/src/pages/detallesC_page.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class ListCalendario extends StatefulWidget {
  static final String routeName = 'ListaCalendario';
  @override
  
  _ListCalendarioState createState() => _ListCalendarioState();
}

class _ListCalendarioState extends State<ListCalendario> {

  List data;

  Future<List> getData() async {
    final response = await http.get("http://192.168.1.71:3400/api/events");
    return json.decode(response.body);
  }

  @override
  void initState() { 
    super.initState();
     this.getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Lista de eventos"),
      ),
      drawer: MenuWidget(),
      body: new FutureBuilder<List>(
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
      ),
      
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
              child: new ListTile(
                title: new Text(
                  list[i]['title'].toString(),
                  style: TextStyle(fontSize: 25.0, color: Colors.orangeAccent),
                ),
               
              ),
            ),
          ),
        );
      },
        
      );
    }
  }
  