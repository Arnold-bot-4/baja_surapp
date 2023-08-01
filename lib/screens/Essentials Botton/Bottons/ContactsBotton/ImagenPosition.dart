import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'contacts_Svg.dart';
import 'selectedMunicipality.dart';

class ImagenPosition extends StatelessWidget {
  const ImagenPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: 250,

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
            bottom: 0,
            //width: 400,
            child: Visibility(
              visible: selectedMunicipality?.name == "Loreto",
            child: IgnorePointer(
              ignoring: false,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: Container(

                    child: Image.asset(
                        'assets/svg/Loreto_en_Baja_California_Sur.png'),
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
            bottom: 0,
            child: IgnorePointer(
              child: Container(
                //color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: Container(

                    child: Image.asset(
                        'assets/svg/La_Paz_en_Baja_California_Sur.png'),
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
            bottom: 0,
            child: IgnorePointer(
              child: Container(
                //color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: Container(

                    child: Image.asset(
                        'assets/svg/Los_Cabos_en_Baja_California_Sur.png'),
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
            bottom: 0,
            child: IgnorePointer(
              child: Container(
                //color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: Container(

                    child: Image.asset(
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
            bottom: 0,
            child: IgnorePointer(
              child: Container(
                //color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: Container(
                    //margin: EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                        'assets/svg/Comondu_en_Baja_California_Sur.png'),
                  ),
                ),
              ),
            ),
          ),
      ],
    ));
  }
}
