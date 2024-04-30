import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class AppCountryPicker extends StatelessWidget {
  const AppCountryPicker({
    Key? key,
    this.initialCountry = 'SA',
    required this.onSelect,
  }) : super(key: key);

  final String initialCountry;
  final Function(String country, String code) onSelect;

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      initialSelection: 'SA',
      hideMainText: true,
      onChanged: (value) => onSelect(value.code!, value.dialCode!),
      flagDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      boxDecoration: const BoxDecoration(
        color: AppColors.black,
      ),
      dialogSize: Size(double.infinity, MediaQuery.of(context).size.height / 2),
      hideSearch: true,
      flagWidth: 40,
      padding: EdgeInsets.zero,
      barrierColor: AppColors.background.withOpacity(0.8),
      dialogTextStyle: const TextStyle(color: AppColors.gray),
    );
  }
}
