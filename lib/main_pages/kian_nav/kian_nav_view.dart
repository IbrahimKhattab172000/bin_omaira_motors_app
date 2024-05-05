import 'package:bin_omaira_motors/features/home/view/home_view.dart';
import 'package:bin_omaira_motors/features/orders/view/orders_view.dart';
import 'package:bin_omaira_motors/features/search/view/search_view.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/main_pages/kian_nav/kian_nav_cubit/cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  final int? index;

  const MainPage({Key? key, this.index}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

Widget icon({
  required String imagePath,
  required bool isSelected,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 4),
      child: Image.asset(
        Utils.getAssetPNGPath(imagePath),
        color: isSelected ? AppColors.primary : AppColors.grey,
        height: 30.height,
        width: 30.width,
      ),
    );

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // UserBloc.instance.add(Click());
    if (widget.index != null) {
      context.read<NavBarCubit>().currentViewIndex = widget.index!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarStates>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.black,
            unselectedItemColor: AppColors.white,
            selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.primary),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 11.sp,
            ),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            currentIndex: context.read<NavBarCubit>().currentViewIndex,
            onTap: (index) {
              context.read<NavBarCubit>().changeView(index);
              // if (index == 3) context.read<MoreBloc>().add(Click());
            },
            items: [
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: 'home',
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 0,
                ),
                label: "home".tr(),
              ),
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: 'search',
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 1,
                ),
                label: "search".tr(),
              ),
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: 'cart',
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 2,
                ),
                label: "orders".tr(),
              ),
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: 'grid_fill',
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 3,
                ),
                label: "more".tr(),
              ),
            ],
          ),
          body: body(index: context.read<NavBarCubit>().currentViewIndex),
        );
      },
    );

//?Put it up there, and use it to check that the user data has been loaded
    // return
    // BlocBuilder<UserBloc, AppState>(
    //   builder: (context, state) {
    //     if (state is Done) {
    //       return StreamBuilder<String>(
    //         stream: mainAppBloc.langStream,
    //         builder: (context, lang) {

    //           },
    //       );
    //     }
    //     return Container();
    //   },
    // );
  }
}

Widget body({required int index}) {
  switch (index) {
    case 0:
      // HomeBloc.instance.add(Get());
      return const HomeView();
    case 1:
      // PostsListBloc.instance.selectedTap = 0;
      // PostsListBloc.instance.clearFilters();
      // PostsListBloc.instance.add(Get());
      return const SearchView();
    case 2:
      // MyClassesBloc.instance.clearFilters();
      // MyClassesBloc.instance.add(Get());
      return const OrdersView();
    case 3:
      // MyClassesBloc.instance.clearFilters();
      // MyClassesBloc.instance.add(Get());
      return const HomeView();
    default:
      return Container(
        color: AppColors.darkGray,
      );
  }
}
