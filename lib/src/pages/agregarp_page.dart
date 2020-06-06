import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';
import 'package:preferenciasusuarioapp/src/pages/agregarp_page.dart';
import 'package:preferenciasusuarioapp/controllers/databasehelpers.dart';

class AgregarpPage extends StatefulWidget {

  AgregarpPage({Key key , this.title}) : super(key : key);
  static final String routeName = 'Pilotos';
  final String title;

  @override
  _AgregarpPageState createState() => _AgregarpPageState();
}

class _AgregarpPageState extends State<AgregarpPage> {

  DataBaseHelper databaseHelper = new DataBaseHelper();

  final TextEditingController _emailController = new TextEditingController();  
  final TextEditingController _passController = new TextEditingController();
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _userController = new TextEditingController();  
  final TextEditingController _phoneController = new TextEditingController();
  final TextEditingController _createdController = new TextEditingController();
  final TextEditingController _lastnController = new TextEditingController();  
  final TextEditingController _statusController = new TextEditingController();
  final TextEditingController _emailvController = new TextEditingController();
  final TextEditingController _typeController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Pilots'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        children: <Widget>[
          _titulos(),
          Divider(),
          _crearNombre(),
          Divider(),
          _crearApellido(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearUsuario(),
          Divider(),
          _crearEstatus(),
          Divider(),
          _crearTipo(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearTelefono(),
          Divider(),
          _crearAt(),
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
            Text('Pilots', style: TextStyle( color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('', style: TextStyle( color: Colors.black, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }     
     Widget _crearEmail() {

    return TextField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon( Icons.email )
      ),
     
    );

  }
  Widget _crearNombre() {

    return TextField(
      controller: _nameController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nombre',
        labelText: 'Nombre',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearApellido() {

    return TextField(
      controller: _lastnController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Apellido',
        labelText: 'Apellido',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_box )
      ),
     
    );

  }

  Widget _crearUsuario() {

    return TextField(
      controller: _userController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Usuario',
        labelText: 'Usuario',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.contacts )
      ),
     
    );

  }

   Widget _crearTelefono() {

    return TextField(
      controller: _phoneController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Teléfono',
        labelText: 'Teléfono',
        suffixIcon: Icon( Icons.add_call ),
        icon: Icon( Icons.contact_phone )
      ),
     
    );

  }

  Widget _crearPassword(){

     return TextField(
      controller: _passController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open ),
        icon: Icon( Icons.lock )
      ),
      
    );

  }
     Widget _crearTipo() {

    return TextField(
      controller: _typeController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Tipo',
        labelText: 'Tipo',
        suffixIcon: Icon( Icons.flight),
        icon: Icon( Icons.flight_takeoff )
      ),
     
    );

  }

   Widget _crearEstatus() {

    return TextField(
      controller: _statusController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Estatus',
        labelText: 'Estatus',
        suffixIcon: Icon( Icons.mood ),
        icon: Icon( Icons.person_outline )
      ),
     
    );

  }

  Widget _crearAt() {

    return TextField(
      controller: _createdController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'CreatedAt',
        labelText: 'CreatedAt',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon( Icons.email )
      ),
     
    );

  }


  Widget _crearBoton(){

    return StreamBuilder(

      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 80.0, vertical:15.0),
        child: Text ('Agregar Piloto'),
      ),
      shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5.0)
      ),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed:   (){
      databaseHelper.addDataPiloto( 
        _emailController.text.trim(), _passController.text.trim(), _nameController.text.trim(), _userController.text.trim(),  _phoneController.text.trim(), _createdController.text.trim(), _lastnController.text.trim(), _statusController.text.trim(), _emailvController.text.trim(),  _typeController.text.trim());
        
            },
          );
        },
    );
  }
}
  


    