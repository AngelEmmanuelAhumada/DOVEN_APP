import 'package:preferenciasusuarioapp/controllers/databasehelpersC.dart';
import 'package:preferenciasusuarioapp/src/pages/listaP_page.dart';
import 'package:flutter/material.dart';


class Detail extends StatefulWidget {

  List list;
  int index;
  Detail({this.index,this.list});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {


  DataBaseHelperC databaseHelper = new DataBaseHelperC();

  //create function delete 
  void confirm (){
  AlertDialog alertDialog = new AlertDialog(
    content: new Text("Esta seguto de eliminar '${widget.list[widget.index]['title']}'"),
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
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['title']}")),
      body: new Container(
        height: 270.0, 
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),

                new Text(widget.list[widget.index]['origin'], style: new TextStyle(fontSize: 20.0),),
                
                Divider(),
                new Text("Inicio : ${widget.list[widget.index]['start']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Fin : ${widget.list[widget.index]['end']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Titulo : ${widget.list[widget.index]['title']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Origen : ${widget.list[widget.index]['origin']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Destino : ${widget.list[widget.index]['destination']}", style: new TextStyle(fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 30.0),),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}