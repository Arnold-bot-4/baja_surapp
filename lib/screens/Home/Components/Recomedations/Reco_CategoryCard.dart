
import 'package:baja_surapp/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'List_screen.dart';

class RecoCategoryCard extends StatelessWidget {
  const RecoCategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) => _buildLoadingCard(context),
      ),
    );
  }

  Widget _buildLoadingCard(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(28, 10, 0, 10),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ListScreen(),
            ));
          },
          child: Container(
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.network(
                'https://picsum.photos/500/500?random=1', // Reemplaza con la URL de tu imagen
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error);
                },
              ),
            ),
          ),
        ));
  }
}
