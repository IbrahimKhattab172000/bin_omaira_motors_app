import 'package:bin_omaira_motors/features/home/view/home_view.dart';
import 'package:bin_omaira_motors/main_pages/nav_bar/bloc/nav_bar_cubit/cubit.dart';
import 'package:flutter/material.dart';

class NavBarMainPages extends StatelessWidget {
  const NavBarMainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = NavBarCubit.of(context);
    return [
      const HomeView(),
      const HomeView(),
      const HomeView(),
      const HomeView(),
    ][cubit.currentViewIndex];
  }
}
