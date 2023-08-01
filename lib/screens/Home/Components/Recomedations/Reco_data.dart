

import 'package:flutter/cupertino.dart';

class RecoProduct{
  const RecoProduct({
  required this.name,
  required this.description,

  });

  final String name;
  final String description;
}

class RecoCategory {
  const RecoCategory({
    required this.name,
    required this.products,
  });

  final String name;
  final List<RecoProduct> products;







}



const recoCategories = [
  RecoCategory(
    name: 'All',
    products: [

    ],
  ),
  RecoCategory(
    name: 'Food',
    products: [
      RecoProduct(
        name: 'Paceñito',
        description: 'narisko come aui donde sea',
      ),
    ],
  ),
  RecoCategory(
    name: 'Car',
    products: [
      RecoProduct(
        name: 'Carritos',
        description: 'narisko come aui donde sea',
      ),
      RecoProduct(
        name: 'Carritas',
        description: 'asdasdasd asd asdasd aas sanarisko come aui donde sea',
      ),
    ],
  ),
  RecoCategory(
    name: 'Hotels',
    products: [
      RecoProduct(
        name: 'Hotelitos',
        description: 'narisko come aui donde sea',
      ),
    ],
  ),
];

