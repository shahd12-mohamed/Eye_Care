import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class TabControllerCubit extends Cubit<TabController> {
  final TickerProvider vsync;

  TabControllerCubit({required this.vsync})
      : super(TabController(length: 2, vsync: vsync));

  late TabController tabController;
  @override
  Future<void> close() {
    state.dispose();
    return super.close();
  }
}