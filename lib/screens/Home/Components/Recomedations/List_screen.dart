import 'package:baja_surapp/screens/Home/Components/Recomedations/Reco_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'Reco_bloc.dart';

class ListScreen extends StatelessWidget {
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
  ListScreenTest createState() => ListScreenTest();
}

class ListScreenTest extends State<_ListConcept>
    with SingleTickerProviderStateMixin {
  //const ListScreen({super.key});
  //late TabController _tabController;
  final _bloc = RecoBloc();



  @override
  void initState() {
    _bloc.init(this);
    _bloc.filteredItems = _bloc.items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen"),
      ),
      body: SafeArea(
        child : AnimatedBuilder(
          animation: _bloc,
        builder: (_,__) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           /* Container(
              color: Colors.red,
              height: 100,
            ),*/
            Container(
              color: Colors.white,
              height: 60,
              child: TabBar(
                  onTap: (index){
                    _bloc.onCategorySelected(index);
                  },
                  controller: _bloc.tabController,
                  isScrollable: true,
                  indicatorWeight: 0.1,
                  tabs: _bloc.tabs.map((e) => _TabWidget(e)).toList(),
              ),
            ),
            // TABLE
            Expanded(
                child: Container(
              color: Colors.white,
              child: ListView.builder(
                  itemCount: _bloc.filteredItems.length,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    final item = _bloc.filteredItems[index];

                    if (_bloc.selectedCategory == null || _bloc.selectedCategory?.name == 'All') {
                      if (item.isCategory) {
                        return _CategoryItem(item.category);
                      } else {
                        return _ProductItem(item.product);
                      }
                    } else if (item.isCategory && item.category == _bloc.selectedCategory) {
                      return _CategoryItem(item.category);
                    } else if (!item.isCategory && _bloc.selectedCategory?.products.contains(item.product) == true) {
                      return _ProductItem(item.product);
                    }
                    return SizedBox.shrink();


                  }
                  ),
            ))
          ],
        ),
      ),
      ),
    );
  }
}

class _TabWidget extends StatelessWidget {

  const _TabWidget(this.tabCategory);
  final RecoTabCategory tabCategory;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: tabCategory.selected ? 1 : 0.5,
      child :Card(
      elevation: tabCategory.selected ? 6 : 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          tabCategory.category.name,
          style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ),
    ));
  }
}

class _CategoryItem extends StatelessWidget {

  const _CategoryItem(this.category);
  final RecoCategory? category;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    if (category?.name == 'All') {
      return Container(); // No muestra nada si la categoría es "All"
    }

    return Container(
      height: 55,
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: Text(category?.name ?? '', style: TextStyle(fontSize: 19 , fontWeight: FontWeight.bold),),
    );
  }
}

class _ProductItem extends StatelessWidget {

  const _ProductItem(this.product);
  final RecoProduct? product;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: Card(
            elevation: 6,
            margin: const EdgeInsets.symmetric(vertical: 1),
            shadowColor: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Padding(padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/images/test.jpg"),
                ),

                Expanded(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(product?.name ?? '' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.bold),),
                    Gap(8),
                    Text(product?.description ?? '',

                      maxLines: 2, style: TextStyle(fontSize: 10 , fontWeight: FontWeight.normal),),
                  ],
                ),)
              ],
            ),
          ),
        ));
  }
}
