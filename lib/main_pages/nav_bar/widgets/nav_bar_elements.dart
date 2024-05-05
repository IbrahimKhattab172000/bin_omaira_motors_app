// import 'package:bin_omaira_motors/helpers/colors.dart';
// import 'package:bin_omaira_motors/helpers/utils.dart';
// import 'package:bin_omaira_motors/main_pages/nav_bar/bloc/nav_bar_cubit/cubit.dart';
// import 'package:bin_omaira_motors/main_pages/nav_bar/widgets/nav_bar_item.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';

// class NavBarElements extends StatelessWidget {
//   const NavBarElements({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final cubit = NavBarCubit.of(context);
//     final currentViewIndex = cubit.currentViewIndex;
//     return Container(
//       height: Utils.bottomDevicePadding + 82,
//       padding: const EdgeInsets.symmetric(horizontal: 24),
//       decoration: const BoxDecoration(
//         color: AppColors.black,
//       ),
//       child: Row(
//         children: [
//           NavBarItem(
//             icon: 'home',
//             title: 'home'.tr(),
//             onTap: () => cubit.changeView(0),
//             color: currentViewIndex == 0 ? AppColors.primary : AppColors.grey,
//           ),
//           NavBarItem(
//             icon: 'search',
//             title: 'search'.tr(),
//             onTap: () => cubit.changeView(1),
//             color: currentViewIndex == 1 ? AppColors.primary : AppColors.grey,
//           ),
//           NavBarItem(
//             icon: 'cart',
//             title: 'orders'.tr(),
//             onTap: () => cubit.changeView(2),
//             color: currentViewIndex == 2 ? AppColors.primary : AppColors.grey,
//           ),
//           NavBarItem(
//             icon: 'grid_fill',
//             title: 'more'.tr(),
//             onTap: () => cubit.changeView(3),
//             color: currentViewIndex == 3 ? AppColors.primary : AppColors.grey,
//           ),
//         ],
//       ),
//     );
//   }
// }
