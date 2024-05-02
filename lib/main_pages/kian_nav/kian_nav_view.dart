import 'package:bin_omaira_motors/features/home/view/home_view.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  final int? index;

  const MainPage({Key? key, this.index}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

Widget image(image, currentIndex, index) => Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 4),
      child: Image.asset(
        Utils.getAssetPNGPath(image),
        color: currentIndex == index ? AppColors.primary : AppColors.grey,
        height: 30.height,
        width: 30.width,
      ),
    );

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget frgmant(int index) {
    switch (index) {
      case 0:
        // HomeBloc.instance.add(Get());
        return const HomeView();
      case 1:
        // PostsListBloc.instance.selectedTap = 0;
        // PostsListBloc.instance.clearFilters();
        // PostsListBloc.instance.add(Get());
        return const HomeView();
      case 2:
        // MyClassesBloc.instance.clearFilters();
        // MyClassesBloc.instance.add(Get());
        return const HomeView();
      case 3:
        // MyClassesBloc.instance.clearFilters();
        // MyClassesBloc.instance.add(Get());
        return const HomeView();
      default:
        return Container();
    }
  }

  @override
  void initState() {
    // UserBloc.instance.add(Click());
    if (widget.index != null) {
      currentIndex = widget.index!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() => currentIndex = index);
          // if (index == 3) context.read<MoreBloc>().add(Click());
        },
        items: [
          BottomNavigationBarItem(
            icon: image('home', currentIndex, 0),
            activeIcon: image('home', currentIndex, 0),
            label: "home".tr(),
          ),
          BottomNavigationBarItem(
            icon: image('search', currentIndex, 1),
            activeIcon: image('search', currentIndex, 1),
            label: "search".tr(),
          ),
          BottomNavigationBarItem(
            icon: image('cart', currentIndex, 2),
            activeIcon: image('cart', currentIndex, 2),
            label: "orders".tr(),
          ),
          BottomNavigationBarItem(
            icon: image('grid_fill', currentIndex, 3),
            activeIcon: image('grid_fill', currentIndex, 3),
            label: "more".tr(),
          ),
        ],
      ),
      body: frgmant(currentIndex),
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
