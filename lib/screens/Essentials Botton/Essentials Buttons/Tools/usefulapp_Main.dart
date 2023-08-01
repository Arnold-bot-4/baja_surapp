import 'package:baja_surapp/widgets/box_Useful_App.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UsefulAppMain extends StatelessWidget {
  const UsefulAppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Useful apps"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Trasportation",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Gap(25),
              box_UsefulApp("Uber", "Use this international ride-hailing app to get around BCS easily"),
              Gap(20),
              box_UsefulApp("Taxi", "TESTasdasd"),
            ],
          ),
        ),
      ),
    );
  }
}
