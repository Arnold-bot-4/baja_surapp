import 'package:baja_surapp/screens/Essentials%20Botton/Bottons/ContactsBotton/selectedMunicipality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../utils/app_styles.dart';
import 'ImagenPosition.dart';

class Contact {
  final String name;
  final String number;
  final IconData icon;

  Contact({required this.name, required this.number, required this.icon});
}

class SelectableMap extends StatefulWidget {
  @override
  _SelectableMapState createState() => _SelectableMapState();
}

class _SelectableMapState extends State<SelectableMap> {

  final List<Contact> contacts = [
    Contact(name: 'Policía', number: '666', icon: Icons.local_police),
    Contact(name: 'Policía Loreto', number: '666', icon: Icons.local_police),
    Contact(name: 'Bomberos', number: '911', icon: Icons.local_fire_department ),
    Contact(name: 'Ambulancia', number: '999', icon: Icons.local_hospital),
    Contact(name: 'Ambulancia', number: '999', icon: Icons.local_hospital),
   // Contact(name: 'Ambulancia', number: '999', icon: Icons.local_hospital),
    // Agrega más contactos según tus necesidades
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa Seleccionable'),
      ),
      body: SingleChildScrollView(
        child:Column (
        children: [
          SizedBox(height: 20),
          DropdownButton<Municipality>(
            value: selectedMunicipality,
            hint: Text('Selecciona un municipio'),
            onChanged: (Municipality? newValue) {
              setState(() {
                selectedMunicipality = newValue;
              });
            },
            items: municipalities.map<DropdownMenuItem<Municipality>>((Municipality municipality) {
              return DropdownMenuItem<Municipality>(
                value: municipality,
                child: Text(municipality.name),
              );
            }).toList(),
          ),
          SizedBox(height: 30),
        /*  Expanded(
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/svg/Baja_California_Sur.svg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),


                if (selectedMunicipality?.name == "Loreto")

                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 250,

                    child: IgnorePointer(
                      child: Container(
                        color: Colors.black.withOpacity(0.5),

                        child: Center(
                          child: Container(
                            width: 300,
                            height: 300,
                          child: Image.asset(
                            'assets/svg/Loreto_en_Baja_California_Sur.png'
                          ),
                          ),
                        ),
                      ),
                    ),
                  ),

                if (selectedMunicipality?.name == "La Paz")
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 250,
                    child: IgnorePointer(
                      child: Container(
                        //color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Container(
                            width: 300,
                            height: 300,
                          child: Image.asset(
                              'assets/svg/La_Paz_en_Baja_California_Sur.png'
                          ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (selectedMunicipality?.name == "Los Cabos")
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 250,
                    child: IgnorePointer(
                      child: Container(
                        //color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child:Container(
                            width: 300,
                            height: 300,
                          child: Image.asset(
                              'assets/svg/Los_Cabos_en_Baja_California_Sur.png'

                          ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (selectedMunicipality?.name == "Mulege")
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 250,
                    child: IgnorePointer(
                      child: Container(
                        //color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child:Container(
                            width: 300,
                            height: 300,
                            child:
                              Image.asset(
                                'assets/svg/Mulege_en_Baja_California_Sur.png'),
                        ),
                        ),
                      ),
                    ),
                  ),
                if (selectedMunicipality?.name == "Comondu")
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 250,
                    child: IgnorePointer(
                      child: Container(
                        //color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child:Container(
                            width: 300,
                            height: 300,
                          child: Image.asset(
                              'assets/svg/Comondu_en_Baja_California_Sur.png'
                          ),
                          ),
                        ),
                      ),
                    ),
                  ),

              ],
            ),
          ), */
          ImagenPosition(),

          Gap(60),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 16),
                child: Text("Contacts", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  Contact contact = contacts[index];
                  return ListTile(
                    leading: Icon(contact.icon, color: Colors.blueAccent, size: 30),
                    title: Text(contact.name),
                    //subtitle: Text('Número: ${contact.number}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Numero: ${contact.number}'),
                        if (contact.name == 'Policía') Text("Horario de atención: 24/7"),
                      ],
                    ),

                    onTap: () {
                      // Aquí puedes agregar la lógica para manejar el evento de selección del contacto
                    },
                  );
                },
              ),

            ],
          ),

        ],






      ),),
    );
  }
}

