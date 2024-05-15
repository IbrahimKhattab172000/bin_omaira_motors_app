import 'package:bin_omaira_motors/main_bloc/expand_down/cubit.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ExpandDownItem extends StatelessWidget {
  final String question;
  final String answer;
  final int index;

  const ExpandDownItem({
    Key? key,
    required this.question,
    required this.answer,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpandDownCubit(),
      child: BlocBuilder<ExpandDownCubit, ExpanedDownState>(
        builder: (context, state) {
          final faqHandler = context.read<ExpandDownCubit>();

          return InkWell(
            onTap: () {
              faqHandler.update();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        title: "0${index + 1}",
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(width: 16.width),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: question,
                              fontSize: 14,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: state.isSelected
                              ? AppColors.grey
                              : AppColors.black,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          state.isSelected
                              ? FeatherIcons.minus
                              : FeatherIcons.plus,
                          size: 18,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  if (state.isSelected)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: AppText(
                          title: answer,
                          color: AppColors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
