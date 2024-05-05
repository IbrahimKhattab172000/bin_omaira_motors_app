import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/main_pages/kian_nav/kian_nav_cubit/cubit.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchWithFilterBar extends StatelessWidget {
  const HomeSearchWithFilterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: AppTextField(
              onTap: () {
                // CustomNavigator.push(Routes.SEARCH);
                // changeView(index: index);
                context.read<NavBarCubit>().changeView(1);
              },
              textColor: AppColors.darkGray,
              cursorColor: AppColors.darkGray,
              inputDecorationLable: "what_you_looking_for".tr(),
              hintColor: AppColors.darkGray,
              leading: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: AppColors.darkGray,
                size: 24,
              ),
              fillColor: AppColors.white,
              borderColor: AppColors.grey,
            ),
          ),
          SizedBox(width: 16.width),
          Container(
            padding: const EdgeInsets.all(14),
            width: 54.width,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              Utils.getAssetPNGPath("settings"),
              height: 16,
              color: AppColors.darkGray,
            ),
          ),
        ],
      ),
    );
  }
}
