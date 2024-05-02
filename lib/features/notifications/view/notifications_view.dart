import 'package:bin_omaira_motors/features/notifications/widgets/notifications_app_bar.dart';
import 'package:bin_omaira_motors/features/notifications/widgets/notifications_list.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      appBar: NotificationsAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            NotificationsList(),
          ],
        ),
      ),
    );
  }
}
