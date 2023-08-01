import 'package:baja_surapp/services/api_Converter.dart';
import 'package:baja_surapp/widgets/drop_Down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class CurrencyMoney extends StatefulWidget{
  @override
  _CurrencyMoney createState() => _CurrencyMoney();
}


class _CurrencyMoney extends State<CurrencyMoney>{

  //_CurrencyMoney({Key? key , required this.currencies , required this.from , required this.to , required this.rate}) :super(key : key);

  bool _isLoading = true;

  ApiClient client = ApiClient();
   late List<String> currencies;
   late String from;
   late String to;

   late double rate;
    String result = "";

  Future<List<String>> getCurrencyList() async{
    return await client.getCurrencies();
  }

  @override
  void initState(){
    super.initState();
    (() async {
      List<String> list = await getCurrencyList();
      setState(() {
        currencies = list;
        from = list[0];
        to = list[98];
        _isLoading = false;
      });
    })();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Return"),),
      body: SafeArea(
        child: _isLoading
          ? Center(child: CircularProgressIndicator(),) : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 400.0,
                child: Text("Currency Converter" ,style: TextStyle(fontSize: 36 , fontWeight: FontWeight.bold),),
              ),
              Expanded(child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      onSubmitted: (value) async{
                         rate = await client.getRate(from, to , value);
                         setState(() {
                           //result = (rate * double.parse(value)).toStringAsFixed(2);
                           result = (rate).toStringAsFixed(2);
                         });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Input value to convert"
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customDropDown(currencies, from, (val) {
                             setState(() {
                               print("from $from" );
                               from = val;
                             });
                          }),
                         FloatingActionButton(
                           onPressed: (){
                            /* String temp = from;
                             setState(() {
                               from = to;
                               to = temp;
                             });*/
                           },
                           child: Icon(Icons.swap_horiz),
                           elevation: 0.0,
                           backgroundColor: Colors.black,),
                        // second flag
                        /*customDropDownMX('MXN', (val) {
                          setState(() {
                            to = val;
                          });
                        }),*/
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4 , horizontal:  18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: DropdownButton<String>(
                            value: to,
                            onChanged: (String? val){

                            },
                            icon: Image.asset(
                              'assets/images/mexicoflag.png',
                              width: 40,
                              height: 40,
                            ),

                            items: [DropdownMenuItem<String>(
                              value: to,
                              child: Text("$to "),
                            ),],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50,),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Text("Result" , style: TextStyle(color: Colors.black , fontSize: 24 , fontWeight: FontWeight.bold),),

                          Text(result , style: TextStyle(fontSize: 32 ,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),

      ),

    );
  }
}
