import 'package:flutter/material.dart';

//! AboutListTile
class ListaRoger extends StatelessWidget {
  const ListaRoger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalese',
        applicationName: 'Flutter App 1154',
        applicationVersion: 'version 1.0.0',
        aboutBoxChildren: [
          Text('Este es un texto generado por una alerta tipo lista'),
        ],
      ),
    );
  }
}
