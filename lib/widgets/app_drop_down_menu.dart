// ignore_for_file: must_be_immutable

import 'package:bin_omaira_motors/global_bloc/drop_down_selection/cubit.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/main_models/selection_item.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AppDropDownSelection extends StatelessWidget {
  final List<SelectionItem>? items;
  List<SelectionItem>? initialItems;
  final String hint;
  Function(List<SelectionItem> values)? onChangeMulti;
  final double height;
  final bool multiSelection;
  Function(SelectionItem? value)? onChangeSingle;
  SelectionItem? initialItem;
  bool? hasCircle;

  AppDropDownSelection.single({
    Key? key,
    required this.items,
    required this.initialItem,
    required this.hint,
    required this.onChangeSingle,
    required this.height,
    this.multiSelection = false,
    this.hasCircle = false,
  }) : super(key: key);

  AppDropDownSelection.multi({
    Key? key,
    required this.items,
    required this.initialItems,
    required this.hint,
    required this.onChangeMulti,
    required this.height,
    this.multiSelection = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DropDownSelectionCubit handler;
    if (multiSelection) {
      handler = DropDownSelectionCubit.multi(
        onChangeValues: onChangeMulti,
        initialItems: initialItems,
      );
    } else {
      handler = DropDownSelectionCubit.single(
        onChangeValue: onChangeSingle,
        initialItem: initialItem,
      );
    }
    // Providing handler for widget
    return BlocProvider(
      create: (context) => handler,
      child: DropDownSelectionContent(
        multiSelection: multiSelection,
        items: items,
        hint: hint,
        height: height,
        hasCircle: hasCircle,
      ),
    );
  }
}

// Configures Content for different views
class DropDownSelectionContent extends StatelessWidget {
  final List<SelectionItem>? items;
  final String hint;
  final double height;
  final bool multiSelection;
  bool? hasCircle;
  DropDownSelectionContent({
    Key? key,
    required this.items,
    required this.hint,
    required this.height,
    required this.multiSelection,
    this.hasCircle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items == null || items!.isEmpty) {
      return const SizedBox();
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey.withOpacity(0.3),
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: BlocBuilder<DropDownSelectionCubit, DropDownSelectionState>(
        builder: (context, state) {
          if (state is DropDownSelectionStateClose) {
            return Row(
              children: [
                if (hasCircle != null && (hasCircle ?? false))
                  Row(
                    children: [
                      Container(
                        height: 24.height,
                        width: 24.height,
                        decoration: BoxDecoration(
                          color: state.selectedItems.first.value,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 10.width),
                    ],
                  ),
                Expanded(
                  child: SelectionRow.close(
                    multiSelection: multiSelection,
                    selectedItems: state.selectedItems,
                    hint: hint,
                  ),
                ),
              ],
            );
          }
          // Configure item selection
          List<DropDownListTile> childs = items?.map((e) {
                bool selected = false;
                // Check if item is selected
                for (var element in (state).selectedItems) {
                  if (element.value == e.value) {
                    selected = true;
                    break;
                  }
                }
                return DropDownListTile(
                  multiSelection: multiSelection,
                  item: e,
                  selected: selected,
                );
              }).toList() ??
              [];
          return SizedBox(
            height: height,
            child: Column(
              children: [
                SelectionRow.open(
                  multiSelection: multiSelection,
                  selectedItems: state.selectedItems,
                  hint: hint,
                ),
                SizedBox(height: 5.height),
                const Divider(),
                Expanded(
                  child: Scrollbar(
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: childs,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// Widget to show selected items and open/ close state
class SelectionRow extends StatelessWidget {
  final List<SelectionItem> selectedItems;
  final String hint;
  final bool open;
  final bool multiSelection;

  const SelectionRow.close({
    Key? key,
    required this.selectedItems,
    required this.hint,
    this.open = false,
    required this.multiSelection,
  }) : super(key: key);

  const SelectionRow.open({
    Key? key,
    required this.selectedItems,
    required this.hint,
    this.open = true,
    required this.multiSelection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Show hint text if no items are selected
        if (selectedItems.isEmpty)
          InkWell(
            onTap: () {
              // Check if selection is open or close and proceed the opposit action
              if (open) {
                context.read<DropDownSelectionCubit>().closeSelection();
              } else {
                context.read<DropDownSelectionCubit>().openSelection();
              }
            },
            child: AppText(
              title: hint,
              color: AppColors.grey,
            ),
          ),

        // Show selected items chips if selected
        if (selectedItems.isNotEmpty)
          Expanded(
            child: Wrap(
              runSpacing: 6,
              children: selectedItems
                  .map((e) => SelectionChip(
                        item: e,
                        multiSelection: multiSelection,
                      ))
                  .toList(),
            ),
          ),

        // Icon that shows if selection is open or close
        InkWell(
          onTap: () {
            // Check if selection is open or close and proceed the opposit action
            if (open) {
              context.read<DropDownSelectionCubit>().closeSelection();
            } else {
              context.read<DropDownSelectionCubit>().openSelection();
            }
          },
          child: Icon(
            open ? FeatherIcons.chevronUp : FeatherIcons.chevronDown,
            size: 30,
            color: AppColors.grey,
          ),
        ),
      ],
    );
    if (selectedItems.isEmpty || !multiSelection) {
      return InkWell(
        onTap: () {
          // Check if selection is open or close and proceed the opposit action
          if (open) {
            context.read<DropDownSelectionCubit>().closeSelection();
          } else {
            context.read<DropDownSelectionCubit>().openSelection();
          }
        },
        child: child,
      );
    } else {
      return child;
    }
  }
}

// Clickable list tile for selection section
class DropDownListTile extends StatelessWidget {
  final bool selected;
  final SelectionItem? item;
  final bool multiSelection;

  const DropDownListTile({
    this.selected = false,
    required this.item,
    required this.multiSelection,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return const SizedBox();
    }

    return InkWell(
      onTap: () {
        context
            .read<DropDownSelectionCubit>()
            .tap(item: item ?? SelectionItem(label: "", value: ""));
      },
      child: Container(
        margin: selected ? const EdgeInsets.only(bottom: 5) : null,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          // Set orange border if item is selected
          border: selected
              ? Border.all(
                  color: AppColors.grey,
                  width: 1,
                )
              : null,
          borderRadius: BorderRadius.circular(10),
          color: selected ? AppColors.primary.withOpacity(0.1) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              title: item?.label ?? "",
            ),
            const Spacer(),
            // Show check icon if item is selected
            multiSelection && selected
                ? const Icon(
                    Icons.check_circle,
                    color: AppColors.primary,
                    size: 18,
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

class SelectionChip extends StatelessWidget {
  final SelectionItem item;
  final bool multiSelection;

  const SelectionChip(
      {super.key, required this.item, required this.multiSelection});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            AppText(
              title: item.label,
              color: AppColors.darkGray,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: 16.width),
            AppText(
              title: item.price ?? "",
              color: AppColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        if (multiSelection)
          Column(
            children: [
              SizedBox(width: 5.width),
              InkWell(
                onTap: () {
                  context.read<DropDownSelectionCubit>().tap(item: item);
                },
                child: const Icon(
                  Icons.close,
                  size: 15,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
