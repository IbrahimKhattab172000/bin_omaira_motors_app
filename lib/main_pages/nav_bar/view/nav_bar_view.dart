import 'package:bin_omaira_motors/main_pages/nav_bar/bloc/nav_bar_cubit/cubit.dart';
import 'package:bin_omaira_motors/main_pages/nav_bar/widgets/nav_bar_elements.dart';
import 'package:bin_omaira_motors/main_pages/nav_bar/widgets/nav_bar_main_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarStates>(
        builder: (context, state) {
          return const Scaffold(
            body: NavBarMainPages(),
            bottomNavigationBar: NavBarElements(),
          );
        },
      ),
    );
  }
}
