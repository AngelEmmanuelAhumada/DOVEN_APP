import 'package:preferenciasusuarioapp/src/pages/listaP_page.dart';
import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/controllers/databasehelpers.dart';

class Detail extends StatefulWidget {

  List list;
  int index;
  Detail({this.index,this.list});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {


  DataBaseHelper databaseHelper = new DataBaseHelper();

  //create function delete 
  void confirm (){
  AlertDialog alertDialog = new AlertDialog(
    content: new Text("Esta seguto de eliminar '${widget.list[widget.index]['name']}'"),
    actions: <Widget>[
      new RaisedButton(
        child: new Text("OK remove!",style: new TextStyle(color: Colors.black),),
        color: Colors.red,
        onPressed: (){}
      ),
      new RaisedButton(
        child: new Text("CANCEL",style: new TextStyle(color: Colors.black)),
        color: Colors.green,
        onPressed: ()=> Navigator.pop(context),
      ),
    ],
  );

  showDialog(context: context, child: alertDialog);
}


  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['name']}")),
      body: new Container(
        height: 350.0, 
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 20.0),),
                new Text(widget.list[widget.index]['name'], style: new TextStyle(fontSize: 20.0),),              
                Divider(),
                new Text("Email : ${widget.list[widget.index]['email']}", style: new TextStyle(fontSize: 18.0),),
                Divider(),
                new Text("Nombre : ${widget.list[widget.index]['name']}", style: new TextStyle(fontSize: 18.0),),
                Divider(),
                new Text("Apellidos : ${widget.list[widget.index]['lastName']}", style: new TextStyle(fontSize: 18.0),),
                Divider(),
                new Text("Teléfono : ${widget.list[widget.index]['phone']}", style: new TextStyle(fontSize: 18.0),),
                Divider(),
                new Text("Estatus : ${widget.list[widget.index]['status']}", style: new TextStyle(fontSize: 18.0),),
                Divider(),
                new Text("Tipo : ${widget.list[widget.index]['type']}", style: new TextStyle(fontSize: 18.0),),
                Divider(),
                new Padding(padding: const EdgeInsets.only(top: 30.0),),

               
              ],
            ),
          ),
        ),
      ),
    );
  }
}