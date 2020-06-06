import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/agregare_page.dart';
import 'package:preferenciasusuarioapp/src/pages/datos_page.dart';
import 'package:preferenciasusuarioapp/src/pages/graficas_page.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/agregarp_page.dart';
import 'package:preferenciasusuarioapp/src/pages/listaC_page.dart';
import 'package:preferenciasusuarioapp/src/pages/listaP_page.dart';


class MenupWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon( Icons.pages, color: Colors.blue ),
            title: Text('Inicio'),
            onTap: ()=> Navigator.pushReplacementNamed(context, HomePage.routeName ) ,
          ),

          ListTile(
            leading: Icon( Icons.cloud, color: Colors.blue ),
            title: Text('Datos'),
            onTap: (){
            // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, DatosPage.routeName  );
            }
          ),

          ListTile(
            leading: Icon( Icons.list, color: Colors.blue ),
            title: Text('Lista Pilotos'),
            onTap: (){ 
               // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, ListPilotos.routeName  );
            },
          ),

          ListTile(
            leading: Icon( Icons.calendar_view_day, color: Colors.blue ),
            title: Text('Calendario de eventos'),
            onTap: (){ 
               // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, ListCalendario.routeName  );
            },
          ),

          ListTile(
            leading: Icon( Icons.insert_chart, color: Colors.blue ),
            title: Text('Gráficas'),
            onTap: (){ 
               // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, GraficasPage.routeName  );
            },
          ),

          

          
          

        ],
      ),
    );
  }
}