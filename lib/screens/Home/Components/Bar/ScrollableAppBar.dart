import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          delegate: _AppBarDelegate(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
            childCount: 50,
          ),
        ),
      ],
    );
  }
}

class _AppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.blue, // Color de fondo de la barra
      alignment: Alignment.center, // Alineación del contenido
      child: Text(
        'Scrollable App Bar',
        style: TextStyle(
          color: Colors.white, // Color del texto
          fontSize: 20.0, // Tamaño del texto
          fontWeight: FontWeight.bold, // Peso del texto
        ),
      ),
    );
  }

  @override
  double get maxExtent => 50.0; // Altura máxima de la barra

  @override
  double get minExtent => 50.0; // Altura mínima de la barra

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false; // No se reconstruye la barra
  }
}
