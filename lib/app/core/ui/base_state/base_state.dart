import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaquinha_burguer_app/app/core/ui/helpers/loader.dart';
import 'package:vaquinha_burguer_app/app/core/ui/helpers/messages.dart';

abstract class BaseState<T extends StatefulWidget, C extends BlocBase<dynamic>>
    extends State<T> with Loader, Messages {
  late final C controller;
  @override
  void initState() {
    super.initState();
    controller = context.read<C>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onReady();
    });
  }

  void onReady() {}
}
