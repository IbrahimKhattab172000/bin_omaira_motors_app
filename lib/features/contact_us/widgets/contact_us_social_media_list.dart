import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_social_media_card.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class ContactUsSocialMedia extends StatelessWidget {
  const ContactUsSocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ContactUsSocialMediaCard(imagePath: "facebook"),
        SizedBox(width: 12.width),
        const ContactUsSocialMediaCard(imagePath: "twitter"),
        SizedBox(width: 12.width),
        const ContactUsSocialMediaCard(imagePath: "instagram"),
        SizedBox(width: 12.width),
        const ContactUsSocialMediaCard(imagePath: "whatsapp"),
        SizedBox(width: 12.width),
        const ContactUsSocialMediaCard(imagePath: "snapchat"),
        SizedBox(width: 12.width),
        const ContactUsSocialMediaCard(imagePath: "youtube"),
        SizedBox(width: 12.width),
        const ContactUsSocialMediaCard(imagePath: "linkedin"),
      ],
    );
  }
}
