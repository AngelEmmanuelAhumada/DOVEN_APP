import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';




class HomePage extends StatelessWidget {
static final String routeName = 'Inicio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      
      drawer: MenuWidget(),
      
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
            
         
            _titulos(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
           SingleChildScrollView(
            child: Column(
              children: <Widget>[
           
            
               
              ],
            ),
          )



        ],
      ),
    );
  }
Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Home', style: TextStyle( color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('', style: TextStyle( color: Colors.black, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }
  

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Advertisement'),
            subtitle: Text('In this card advertisements will be shown'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('More...'),
            onPressed: () {
              },
            )
          ],
        )
      ],
    ),
  );
}
}

