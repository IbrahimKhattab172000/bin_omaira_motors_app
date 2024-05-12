import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_card.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class ContactUsMainContacts extends StatelessWidget {
  const ContactUsMainContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ContactUsCard(
            imagePath: "phone",
            title: "contact_number",
            value: "+ 966 00000 00000",
          ),
          Container(
            color: AppColors.grey,
            width: 1,
            height: 70.height,
          ),
          const ContactUsCard(
            imagePath: "phone",
            title: "contact_number",
            value: "BinOmaira@gmail.com",
          ),
        ],
      ),
    );
  }
}
