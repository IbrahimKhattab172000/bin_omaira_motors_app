import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final Color color;

  const NavBarItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16.height),
            Image.asset(
              Utils.getAssetPNGPath(icon),
              height: 24,
              width: 24,
              color: color,
            ),
            SizedBox(height: 6.height),
            FittedBox(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
