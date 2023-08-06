import 'package:baja_surapp/screens/Essentials Botton/home_Essentials.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../Coupons/coupons_Main.dart';
import '../Essentials Botton/home_Essentials.dart';
import '../Home/home_screen.dart';
import '../MapsScreen/main_Map.dart';


class BottomBar extends StatefulWidget {


  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();

}


class _BottomBarState extends State<BottomBar>{

  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const HomeEssentials(),
    MapSample(),
    const CouponsMain(),
  ];

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex],),

     bottomNavigationBar: Container(


        decoration:  BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 15),

          child : GNav(
          //haptic: true,
          backgroundColor: Colors.white,
          color: Colors.grey,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.lightBlueAccent.shade200,
          padding: EdgeInsets.all(8),
          tabBorderRadius: 14,

          gap: 8,
          onTabChange: _onItemTapped,

          tabs: [
            GButton(icon: Icons.home, text: 'Home',),
            GButton(icon: Icons.favorite_border, text: 'Essentials',),
            GButton(icon: Icons.map_outlined, text: 'Maps',),
            GButton(icon: Icons.add_card, text: 'Coupons',),
          ],
        ),),
      ),



   /*  bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,

        selectedItemColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
         
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label:"Essentials"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile"),
        ],
      ),
*/

    );
  }



}