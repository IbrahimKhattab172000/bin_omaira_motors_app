import 'package:bin_omaira_motors/features/change_language/widgets/change_language_toggle.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ChangeLanguageView extends StatefulWidget {
  const ChangeLanguageView({super.key});

  @override
  State<ChangeLanguageView> createState() => _ChangeLanguageViewState();
}

class _ChangeLanguageViewState extends State<ChangeLanguageView> {
  late String _selectedLanguage;

  final GetStorage box = GetStorage();

  @override
  void initState() {
    super.initState();
    _selectedLanguage = box.read('language') ?? (Utils.isAR ? "ar" : "en");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "change_language".tr(),
        titleColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            CustomNavigator.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
            size: 22,
          ),
        ),
      ),
      body: AppWhiteBody(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 42.height),
              ChangeLanguageToggle(
                title: 'arabic'.tr(),
                isSelected: _selectedLanguage == 'ar',
                onTap: () {
                  setState(() {
                    _selectedLanguage = 'ar';
                  });

                  box.write('language', _selectedLanguage);
                  context.setLocale(Locale(_selectedLanguage));
                  final rootElement =
                      WidgetsFlutterBinding.ensureInitialized().rootElement!;
                  WidgetsBinding.instance.buildOwner!.reassemble(rootElement);
                  CustomNavigator.push(Routes.SPLASH);
                },
                borderRadiusGeometry: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                imagePath: "saudi",
              ),
              SizedBox(height: 2.height),
              ChangeLanguageToggle(
                title: 'english'.tr(),
                isSelected: _selectedLanguage == 'en',
                onTap: () {
                  setState(() {
                    _selectedLanguage = 'en';
                  });

                  box.write('language', _selectedLanguage);
                  context.setLocale(Locale(_selectedLanguage));
                  final rootElement =
                      WidgetsFlutterBinding.ensureInitialized().rootElement!;
                  WidgetsBinding.instance.buildOwner!.reassemble(rootElement);
                  CustomNavigator.push(Routes.SPLASH);
                },
                borderRadiusGeometry: const BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                imagePath: "uk",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
