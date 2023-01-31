import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vaquinha_burguer_app/app/core/ui/widgets/appbar_app.dart';
import 'package:vaquinha_burguer_app/app/models/products_model.dart';
import 'package:vaquinha_burguer_app/app/pages/home/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarApp(),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                height: 0,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                log('Item $index');
                return ProductTile(
                  product: ProductsModel(
                    id: 1,
                    name: 'X-Salada',
                    description:
                        'Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese',
                    price: 15,
                    image:
                        'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800',
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
