import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';
import 'package:preferenciasusuarioapp/src/pages/agregare_page.dart';
import 'package:preferenciasusuarioapp/controllers/databasehelpersC.dart';

class AgregarePage extends StatefulWidget {

  AgregarePage({Key key , this.title}) : super(key : key);
  static final String routeName = 'AgregarEvento';
  final String title;

  @override
  _AgregarePageState createState() => _AgregarePageState();
}

class _AgregarePageState extends State<AgregarePage> {

  DataBaseHelperC databaseHelper = new DataBaseHelperC();

  final TextEditingController _startController =  new TextEditingController();  
  final TextEditingController _endController = new TextEditingController();
  final TextEditingController _titleController = new TextEditingController();
  final TextEditingController _colorController = new TextEditingController();  
  final TextEditingController _originController = new TextEditingController();
  final TextEditingController _destinationController = new TextEditingController();
  final TextEditingController _firstidController = new TextEditingController();  
  final TextEditingController _secondidController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Pilotos'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        children: <Widget>[
          _titulos(),
          Divider(),
          _crearInicio(),
          Divider(),
          _crearFin(),
          Divider(),
          _crearTitulo(),
          Divider(),
          _crearColor(),
          Divider(),
          _crearOrigen(),
          Divider(),
          _crearDestino(),
          Divider(),
          _crearFid(),
          Divider(),
          _crearSid(),
          Divider(),
          _crearBoton()

         

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
            Text('Add Event', style: TextStyle( color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('', style: TextStyle( color: Colors.black, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }     
     Widget _crearInicio() {

    return TextField(
      controller: _startController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Inicio',
        labelText: 'Inicio',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon( Icons.email )
      ),
     
    );

  }
  Widget _crearFin() {

    return TextField(
      controller: _endController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fin',
        labelText: 'Fin',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearTitulo() {

    return TextField(
      controller: _titleController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Titulo',
        labelText: 'Titulo',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearColor() {
    
    return TextField(
      controller: _colorController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Color',
        labelText: 'Color',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearOrigen() {

    return TextField(
      controller: _originController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Origen',
        labelText: 'Origen',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearDestino() {

    return TextField(
      controller: _destinationController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Destino',
        labelText: 'Destino',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearFid() {

    return TextField(
      controller: _firstidController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'First Pilot ID',
        labelText: 'ID',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearSid() {

    return TextField(
      controller: _secondidController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Second Pilot ID',
        labelText: 'ID',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }
  
  

 


  Widget _crearBoton(){

    return StreamBuilder(

      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 80.0, vertical:15.0),
        child: Text ('Agregar Evento'),
      ),
      shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5.0)
      ),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed:   (){
      databaseHelper.addDataEvents( 
        _startController.text.trim(), _endController.text.trim(), _titleController.text.trim(), _colorController.text.trim(),  _originController.text.trim(), _destinationController.text.trim(), _firstidController.text.trim(), _secondidController.text.trim());
        
            },
          );
        },
    );
  }
  }



    