import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaquinha_burguer_app/app/core/ui/helpers/loader.dart';
import 'package:vaquinha_burguer_app/app/core/ui/helpers/messages.dart';
import 'package:vaquinha_burguer_app/app/core/ui/widgets/appbar_app.dart';
import 'package:vaquinha_burguer_app/app/pages/home/extention/home_state_extention.dart';
import 'package:vaquinha_burguer_app/app/pages/home/home_controller.dart';
import 'package:vaquinha_burguer_app/app/pages/home/home_state.dart';
import 'package:vaquinha_burguer_app/app/pages/home/widgets/product_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeController>().findAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarApp(),
      body: BlocConsumer<HomeController, HomeState>(
        listener: (context, state) {
          state.match(
            products: (products) {
              log('$products');
            },
            status: (status) {
              status.matchAny(
                loading: () {
                  showLoader();
                },
                any: () {
                  hideLoader();
                },
              );
            },
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    height: 0,
                  ),
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    return ProductTile(
                      product: product,
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
