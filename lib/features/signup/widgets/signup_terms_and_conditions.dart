import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignupTermsAndConditions extends StatefulWidget {
  const SignupTermsAndConditions({
    super.key,
  });

  @override
  State<SignupTermsAndConditions> createState() =>
      _SignupTermsAndConditionsState();
}

class _SignupTermsAndConditionsState extends State<SignupTermsAndConditions> {
  bool isConsent = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isConsent = !isConsent;
        });
      },
      child: Row(
        children: [
          Container(
            width: 18.width,
            height: 18.width,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                width: 1,
                color: AppColors.white,
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 14.width,
              height: 14.width,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isConsent ? AppColors.white : Colors.transparent,
              ),
            ),
          ),
          SizedBox(width: 14.width),
          AppText(
            title: "i_agree".tr(),
            color: AppColors.gray,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          SizedBox(width: 4.width),
          AppText(
            title: "terms_and_conditions".tr(),
            color: AppColors.gray,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.underline,
          ),
        ],
      ),
    );
  }
}
