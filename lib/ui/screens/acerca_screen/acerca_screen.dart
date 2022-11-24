import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AcercaScreen extends StatelessWidget {
  const AcercaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: SingleChildScrollView(child: Container(
        alignment: Alignment.center,
        child: DefaultTextStyle.merge(
          style: TextStyle(fontSize: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 15,),
              SvgPicture.asset('assets/images/laCompra-logo.svg', width: 180,),
              const SizedBox(height: 15,),
              SizedBox(width: 300, child: Text('LA COMPRA, es la app desarrollada para ayudarte a ti, productor y vendedor de tu producto agícola, a encontrar los mejores precios, compararlos y tomar la mejor decisión al vender.\n\nEs el resultado del esfuerzo y colaboración de:')),
              const SizedBox(height: 20,),
              Container(
                width: 220,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 8,
                  children:[
                    Image.asset('assets/images/logo_datagon.png', width: 180,),
                    Text('Tu aliado en tecnologías de la información.\n\nDesarrollamos software - convertimos tu idea en realidad'),
                    Row(children: const [
                      Icon(Icons.phone),
                      SizedBox(width: 5,),
                      Text('+52 2731084701'),
                    ],),
                    Row(children: [
                      Icon(Icons.mail),
                      SizedBox(width: 5,),
                      Text('contacto@datagon.co'),
                    ],),
                    Row(children: [
                      Icon(Icons.language),
                      SizedBox(width: 5,),
                      Text('datagon.co'),
                    ],),
                  ],
              ),
              ),


              const SizedBox(height: 40,),
              Container(
                width: 220,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 8,
                  children:[
                    Image.asset('assets/images/logo_datagon.png', width: 180,),
                    Text('Tu aliado en tecnologías de la información.\n\nDesarrollamos software - convertimos tu idea en realidad'),
                    Row(children: const [
                      Icon(Icons.phone),
                      SizedBox(width: 5,),
                      Text('+52 2731084701'),
                    ],),
                    Row(children: [
                      Icon(Icons.mail),
                      SizedBox(width: 5,),
                      Text('contacto@datagon.co'),
                    ],),
                    Row(children: [
                      Icon(Icons.language),
                      SizedBox(width: 5,),
                      Text('datagon.co'),
                    ],),
                  ],
              ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
