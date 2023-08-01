

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/getwidget.dart';
import 'event_Bloc.dart';

class EventMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData.light(),
      child: _ListConcept(),
    );
  }
}

class _ListConcept extends StatefulWidget {
  @override
  EventState createState() => EventState();
}

class EventState extends State<_ListConcept>
    with SingleTickerProviderStateMixin {
  final _bloc = EventBloc();

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 10, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              height: 60,
              child: TabBar(
                  onTap: (index) {},
                  controller: _tabController,
                  isScrollable: true,
                  indicatorWeight: 2,

                  //tabs: _bloc.tabs.map((e) => _TabWidget(e)).toList(),
                  tabs: List.generate(
                    5,
                    (index) => _RappiTabWidget(),
                  )),
            ),
            Gap(10),


            Container(
             // color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text("55 Results"),
                    Container(child: Row(
                      children: [
                        Icon(Icons.sort_outlined,),
                        Gap(20),
                        Icon(Icons.filter_alt_outlined,),

                      ],
                    ),)

                  ],

                ),
              ),
            ),

            Gap(20),
            Expanded(
                child: Container(
              color: Colors.white,
              child: ListView.builder(itemBuilder: (context, index) {
                return _ListViewEvent();
              }),
            ))
          ],
        ),
      ),
    );
  }
}

class _RappiTabWidget extends StatelessWidget {
  /*const _TabWidget(this.tabCategory);
  final RecoTabCategory tabCategory;*/
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      //child: Padding(
        //padding: const EdgeInsets.all(8.0),
        child: Text(
          "All",
          style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
     // ),
    );
  }
}

class _ListViewEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 290,
      //color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 55),
          shadowColor: Colors.black54,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
            side: BorderSide(width: 3 , color: Colors.orangeAccent)
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Expanded(
                        child: Stack(
                        children: [

                          Image.asset(
                          "assets/images/test.jpg",
                          fit: BoxFit.cover,
                          width: 325, // recuerda cambiar esto la imagen no concuerda

                        ),

                          Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                height: 35,
                                width: 75,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                               // border: Border.symmetric(44),
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(25),
                              ),

                            child: Center(child: Text("Popular" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
                          )),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                width: 35,
                                height: 40,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.white,
                                 boxShadow: [BoxShadow(color: Colors.grey , offset: Offset(0,4), blurRadius: 4,)]
                               ),
                               child: Icon(Icons.favorite_outline_rounded, color: Colors.deepOrange,),
                          )),
                          Positioned(
                              left: 0,
                              bottom: 0,
                              child: Container(
                              width: 100,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(13)
                                  ),
                                ),

                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Gap(14),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("11" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                                          Text("Sep" ,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Gap(5),
                                      Text("To" , style: TextStyle(fontWeight: FontWeight.bold),),
                                      Gap(5),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("14" ,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold)),
                                          Text("Sep" ,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold)),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),


                          )),


                        ]
                      ),),

                    /*  Container(
                        width: 1, // Ancho del divisor
                        color: Colors.grey, // Color del divisor
                      ),*/

                      Expanded(

                        child: Container(

                          child:  Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    margin: const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                                    child: GFButton(
                                      onPressed: (){},
                                      text: "Free",
                                      color: Colors.black,
                                      size: GFSize.SMALL,

                                    ),
                                  ),

                                  Container(
                                    height: 20,
                                    margin: const EdgeInsets.only(left: 5,bottom: 10),
                                    child: GFButton(
                                      onPressed: (){},
                                      text: "Business",
                                      color: Colors.grey,
                                      type: GFButtonType.outline,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                child: Text("S'hail - Katara International Huntin..." , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                              ),

                              Gap(10),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child:  Text(" Katara will organize the 7th edition of s'hail - katara forsss organize the 7th edition of s'hailsdasdasd ..." ,
                                  style: TextStyle(fontSize: 11 , fontWeight: FontWeight.normal),),
                              ),





                            ],
                             // Color de la otra mitad
                            // Contenido adicional aquí


                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );

  }
}
