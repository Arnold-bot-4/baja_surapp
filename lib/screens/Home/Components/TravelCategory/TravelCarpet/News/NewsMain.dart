import 'package:baja_surapp/screens/Home/Components/TravelCategory/TravelCarpet/News/news_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsMain extends StatelessWidget {
  NewsMain({super.key});

  final List _post = [
    'Nueva Película',
    'Clima Cambiante',
    'Deportes Locales',
    'Receta Deliciosa',
    'Evento Cultural',
  ];
  final List _news = [
    'post1',
    'post2',
    'post3',
    'post4',
    'post5',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Local"),
      ),

      body: Center(
        child: Container(
          width: 350,
          child: ListView.builder(
            itemCount: _post.length,
            itemBuilder: (context, index) {
              return MySquare(
                child: _post[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

class MySquare extends StatelessWidget {
  final String child;
  const MySquare({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsPage()));
            },
          child: Container(
            height: 155,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(15),


                           child: Container(
                             height: 50,
                           width: 150,
                           color: Colors.white,
                           child: Text(child ,style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.bold),),
                     ),



                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 14),
                     child: Expanded(
                       child: Container(
                         width: 160,
                         //height: 65,
                         color: Colors.white,
                         child: Text("Testing projecto testasdas asdasd" ,style: TextStyle(fontSize: 14),),
                       ),
                     ),
                   ),
                 ],
               ),
               Container(
                 width: 160,
                 height: 140,

                 child:  ClipRRect(
                     borderRadius: BorderRadius.circular(16),
                     child: Image.asset("assets/images/uber.png")),
               ),


             ],
            ),
          ),
        ),
    );
  }
}
