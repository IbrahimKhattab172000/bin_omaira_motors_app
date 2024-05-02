import 'package:bin_omaira_motors/features/notifications/widgets/notifications_card.dart';
import 'package:flutter/material.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: 20,
        itemBuilder: (context, index) {
          return const NotificationsCard();
        },
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(4),
            child: Divider(
              thickness: 1,
            ),
          );
        },
      ),
    );
  }
}
