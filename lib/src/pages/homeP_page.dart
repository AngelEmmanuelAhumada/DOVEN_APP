import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/widgets/menuP_widget.dart';




class HomepPage extends StatelessWidget {
static final String routeName = 'InicioP';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      
      drawer: MenupWidget(),
      
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
            Text('Inicio', style: TextStyle( color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('En este apartado se mostrarán los avisos que se generen', style: TextStyle( color: Colors.black, fontSize: 18.0 )),
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
            title: Text('Aviso'),
            subtitle: Text('Aquí se mostraran los avisos'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver Más...'),
            onPressed: () {
              },
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Aviso'),
            subtitle: Text('El valor actual de la humedad es el siguiente:'),
            //subtitle: Text('[H_controller]'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver Más...'),
            onPressed: () {
              },
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo3() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Aviso'),
            subtitle: Text('El valor actual de la temperatura es el siguiente:'),
            //subtitle: Text('[T_controller]'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver Más...'),
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

