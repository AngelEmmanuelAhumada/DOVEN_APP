import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/datos_page.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/homeP_page.dart';
import 'package:preferenciasusuarioapp/src/pages/listaC_page.dart';
import 'package:preferenciasusuarioapp/src/pages/listaP_page.dart';
import 'package:preferenciasusuarioapp/src/pages/login_pilots.dart';
import 'package:preferenciasusuarioapp/src/pages/agregarp_page.dart';
import 'package:preferenciasusuarioapp/src/pages/graficas_page.dart';
import 'package:preferenciasusuarioapp/src/pages/login_page.dart';
import 'package:preferenciasusuarioapp/src/pages/agregare_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'LoginPiloto',
      routes: {
        HomePage.routeName     : ( BuildContext context ) => HomePage(),
        HomepPage.routeName     : ( BuildContext context ) => HomepPage(),
        AgregarpPage.routeName : ( BuildContext context ) => AgregarpPage(),
        AgregarePage.routeName : ( BuildContext context ) => AgregarePage(),
        DatosPage.routeName : ( BuildContext context ) => DatosPage(),
        GraficasPage.routeName : ( BuildContext context ) => GraficasPage(),
        LoginPage.routeName     : ( BuildContext context ) => LoginPage(),
        LoginPilotPage.routeName     : ( BuildContext context ) => LoginPilotPage(),
        ListPilotos.routeName     : ( BuildContext context ) => ListPilotos(),
        ListCalendario.routeName     : ( BuildContext context ) => ListCalendario(),
      },
    );
  }
}